# LLM Wiki simple full-text search (switch to qmd when the wiki grows large)
# Usage: powershell -ExecutionPolicy Bypass -File tools/search.ps1 "query" [-Raw]
#   -Raw : search raw/ sources instead of wiki/
# (ASCII-only on purpose: Windows PowerShell 5.1 misreads BOM-less UTF-8 scripts.)

param(
    [Parameter(Mandatory = $true)][string]$Query,
    [switch]$Raw
)

$root = Split-Path -Parent $PSScriptRoot
$dir = if ($Raw) { Join-Path $root 'raw' } else { Join-Path $root 'wiki' }

$hits = @(Get-ChildItem -Path $dir -Recurse -Filter *.md |
    Select-String -Pattern $Query -SimpleMatch -Encoding UTF8 |
    Group-Object Path |
    Sort-Object Count -Descending)

foreach ($g in $hits) {
    $rel = $g.Name.Substring($root.Length + 1)
    Write-Output "== $rel ($($g.Count) hits)"
    $g.Group | Select-Object -First 3 | ForEach-Object {
        $line = $_.Line.Trim()
        if ($line.Length -gt 160) { $line = $line.Substring(0, 160) + '...' }
        Write-Output "   L$($_.LineNumber): $line"
    }
}
if ($hits.Count -eq 0) { Write-Output "no results: $Query" }
