$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.IO.Compression.FileSystem
$root = $PSScriptRoot
$out = Join-Path $root 'dist'
[IO.Directory]::CreateDirectory($out) | Out-Null
$zip = Join-Path $out 'score-midi-player-v1.0.0-portable.zip'
$stage = Join-Path ([IO.Path]::GetTempPath()) ([Guid]::NewGuid().ToString())
$folder = Join-Path $stage 'score-midi-player'
[IO.Directory]::CreateDirectory($folder) | Out-Null
try {
  foreach ($f in [IO.Directory]::GetFiles($root)) { [IO.File]::Copy($f,(Join-Path $folder ([IO.Path]::GetFileName($f)))) }
  if ([IO.File]::Exists($zip)) { [IO.File]::Delete($zip) }
  [IO.Compression.ZipFile]::CreateFromDirectory($stage,$zip,[IO.Compression.CompressionLevel]::Optimal,$false)
  $sha = [Security.Cryptography.SHA256]::Create()
  $stream = [IO.File]::OpenRead($zip)
  try { $hex = [BitConverter]::ToString($sha.ComputeHash($stream)).Replace('-','').ToLowerInvariant() } finally { $stream.Dispose(); $sha.Dispose() }
  [IO.File]::WriteAllText((Join-Path $out 'SHA256SUMS.txt'),($hex + '  ' + [IO.Path]::GetFileName($zip) + [Environment]::NewLine))
  Write-Output $zip
  Write-Output $hex
} finally { [IO.Directory]::Delete($stage,$true) }
