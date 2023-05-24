param($stringToEncode)

$byteArr=[System.Text.Encoding]::Unicode.GetBytes($stringToEncode)
$result=[Convert]::ToBase64String($byteArr)

Write-Host $result