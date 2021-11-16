param (
    [string]$srcFile = "payload.ps1",
    [string]$dstFile = "payload.dat",
    [switch]$v
)
$srctext = Get-Content $srcFile
$unicodeBytes = [System.Text.Encoding]::Unicode.GetBytes($srctext)
$encoded = [System.Convert]::ToBase64String($unicodeBytes)
if ($v) {
    Write-Host $encoded
}
[System.Convert]::ToBase64String($unicodeBytes) | Out-File $dstFile -Encoding unicode