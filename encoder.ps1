$srcFile = "payload.ps1"
$dstFile = "payload.dat"
$srctext = Get-Content $srcFile
$unicodeBytes = [System.Text.Encoding]::Unicode.GetBytes($srctext)
$encoded = [System.Convert]::ToBase64String($unicodeBytes)
$encoded
[System.Convert]::ToBase64String($unicodeBytes) | Out-File $dstFile -Encoding unicode