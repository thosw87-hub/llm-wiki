# LLM Wiki mechanical lint
# Usage: powershell -ExecutionPolicy Bypass -File tools/lint.ps1
# Checks: broken wikilinks, orphan pages (no inbound links), pages missing from index.md, missing frontmatter
# (ASCII-only on purpose: Windows PowerShell 5.1 misreads BOM-less UTF-8 scripts.)

$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$wiki = Join-Path $root 'wiki'
$special = @('index', 'log')

$pages = @{}
Get-ChildItem -Path $wiki -Recurse -Filter *.md | ForEach-Object { $pages[$_.BaseName] = $_ }

$inbound = @{}
foreach ($k in $pages.Keys) { $inbound[$k] = 0 }

$broken = @()
$noFront = @()
$linkRe = [regex]'\[\[([^\]\|#]+)(?:#[^\]\|]*)?(?:\|[^\]]*)?\]\]'
$codeRe = [regex]'(?s)```.*?```|`[^`\r\n]*`'

foreach ($name in $pages.Keys) {
    $text = [IO.File]::ReadAllText($pages[$name].FullName, [Text.Encoding]::UTF8)
    if (-not $text.StartsWith('---')) { $noFront += $name }
    $body = $codeRe.Replace($text, '')
    $targets = @($linkRe.Matches($body) | ForEach-Object { $_.Groups[1].Value.Trim() } | Sort-Object -Unique)
    foreach ($t in $targets) {
        if ($pages.ContainsKey($t)) {
            if ($t -ne $name -and $name -notin $special) { $inbound[$t]++ }
        } else {
            $broken += "$name -> [[$t]]"
        }
    }
}

$indexText = $codeRe.Replace([IO.File]::ReadAllText((Join-Path $wiki 'index.md'), [Text.Encoding]::UTF8), '')
$notInIndex = @($pages.Keys | Where-Object { $_ -notin $special -and $indexText -notmatch "\[\[$([regex]::Escape($_))(\||\]\])" })
$orphans = @($inbound.Keys | Where-Object { $_ -notin $special -and $_ -ne 'overview' -and $inbound[$_] -eq 0 })

function Report($title, $items) {
    $list = @($items | Where-Object { $_ })
    if ($list.Count -eq 0) { Write-Output "[OK]   $title" }
    else {
        Write-Output "[WARN] $title ($($list.Count))"
        $list | Sort-Object | ForEach-Object { Write-Output "       - $_" }
    }
}

Write-Output "pages: $($pages.Count)"
Report 'broken links' $broken
Report 'orphan pages (no inbound links outside index/log)' $orphans
Report 'missing from index.md' $notInIndex
Report 'missing frontmatter' $noFront
