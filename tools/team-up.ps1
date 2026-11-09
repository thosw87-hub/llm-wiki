# Recreate the wiki team layout in herdr:
#   top    : lead pane (Harry, the caller)
#   bottom : claude | codex | agy   (cwd = repo root)
# Run from INSIDE the lead herdr pane (Harry runs it):
#   powershell -ExecutionPolicy Bypass -File C:\ai\llm-wiki\tools\team-up.ps1
# (ASCII-only on purpose: Windows PowerShell 5.1 misreads BOM-less UTF-8 scripts.)

$ErrorActionPreference = 'Stop'
if ($env:HERDR_ENV -ne '1') { Write-Output 'Not inside a herdr pane. Open herdr first.'; exit 1 }

$h = $env:HERDR_BIN_PATH
if (-not $h) { $h = 'herdr' }
$repo = Split-Path -Parent $PSScriptRoot
$lead = $env:HERDR_PANE_ID

function Herdr { $out = & $h @args; if ($LASTEXITCODE -ne 0) { throw "herdr $args failed" }; $out }

# Skip if team members already exist
$live = (Herdr agent list | ConvertFrom-Json).result.agents | ForEach-Object { $_.name } | Where-Object { $_ }
if ($live -contains 'codex' -or $live -contains 'agy') { Write-Output "Team already running: $($live -join ', ')"; exit 0 }

$p1 = (Herdr pane split $lead --direction down --cwd $repo --no-focus | ConvertFrom-Json).result.pane.pane_id
$p2 = (Herdr pane split $p1 --direction right --ratio 0.333 --cwd $repo --no-focus | ConvertFrom-Json).result.pane.pane_id
$p3 = (Herdr pane split $p2 --direction right --ratio 0.5 --cwd $repo --no-focus | ConvertFrom-Json).result.pane.pane_id

$team = @(
    @{ name = 'claude'; kind = 'claude'; pane = $p1; label = 'Claude' },
    @{ name = 'codex';  kind = 'codex';  pane = $p2; label = 'Codex' },
    @{ name = 'agy';    kind = 'agy';    pane = $p3; label = 'agy' }
)
foreach ($m in $team) {
    Herdr pane rename $m.pane $m.label | Out-Null
    try { Herdr agent start $m.name --kind $m.kind --pane $m.pane | Out-Null; Write-Output "started $($m.name) in $($m.pane)" }
    catch { Write-Output "WARN: $($m.name) not ready (login/trust prompt?). Check pane $($m.pane)." }
}

# Label the lead pane "해리 (팀장)" and name its agent harry (if Claude is already running there)
$leadLabel = ([string][char]0xD574) + [char]0xB9AC + ' (' + [char]0xD300 + [char]0xC7A5 + ')'
Herdr pane rename $lead $leadLabel | Out-Null
try { Herdr agent rename $lead harry | Out-Null } catch { }

Herdr agent list | ConvertFrom-Json | ForEach-Object { $_.result.agents } | Select-Object name, agent, agent_status, pane_id | Format-Table -AutoSize
