param($stringToDecode)

$byteArr=[Convert]::FromBase64String($stringToDecode)
$result=[System.Text.Encoding]::Unicode.GetString($byteArr)

write-host $result