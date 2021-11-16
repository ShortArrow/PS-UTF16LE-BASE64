param (
    [string]$srcFile = "payload.ps1",
    [string]$dstFile = "payload.dat",
    [string]$execFile = "execute.cmd",
    [string]$execPs = "execute.ps1",
    [string]$targetShell = "pwsh",
    [switch]$verbose
)
[string[]]$srctext = Get-Content $srcFile
[string]$changelined = $null
for ($i = 0; $i -lt $srctext.Count; $i++) {
    $changelined += $srctext[$i] + "`n"
}
[byte[]]$unicodeBytes = [System.Text.Encoding]::Unicode.GetBytes($changelined)
[string]$encoded = [System.Convert]::ToBase64String($unicodeBytes)
if ($verbose) {
    Write-Host $encoded
}
[System.Convert]::ToBase64String($unicodeBytes) | Out-File $dstFile -Encoding unicode
"@echo off" | Out-File $execFile -Encoding utf8 -Force
"$($targetShell) -nop -ep Bypass -f $($execPs)" | Out-File $execFile -Encoding utf8 -Append
"$($targetShell) -nop -ep Bypass -e (gc $($dstFile))" | Out-File $execPs -Encoding utf8 -Force
