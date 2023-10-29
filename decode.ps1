$s = Read-Host "s"
$d = Read-Host "d"

$b64 = Get-Content -Path $s

$compressedBytes = [Convert]::FromBase64String($b64)

$m = New-Object System.IO.MemoryStream($compressedBytes, 0, $compressedBytes.Length)

$g = New-Object System.IO.Compression.GzipStream($m, [System.IO.Compression.CompressionMode]::Decompress)

$uBytes = New-Object byte[] ($compressedBytes.Length * 10)

$bRead = 0
$bToRead = $uBytes.Length

while ($bToRead -gt 0) {
    $read = $g.Read($uBytes, $bRead, $bToRead)
    if ($read -le 0) {
        break
    }
    $bRead += $read
    $bToRead -= $read
}

$g.Close()

[System.IO.File]::WriteAllBytes($d, $uBytes[0..($bRead-1)])
