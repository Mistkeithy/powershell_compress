$s = Read-Host "s"
$d = Read-Host "d"

$c = [System.IO.File]::ReadAllBytes($s)

$m = New-Object System.IO.MemoryStream
$g = New-Object System.IO.Compression.GzipStream($m, [System.IO.Compression.CompressionMode]::Compress)

$g.Write($c, 0, $c.Length)
$g.Flush()
$g.Close()

$b = $m.ToArray()
$b64 = [Convert]::ToBase64String($b)

Set-Content -Path $d -Value $b64
