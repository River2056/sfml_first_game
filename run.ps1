$binFolder = Get-ChildItem | Where-Object { $_.Name -eq "bin" }
if (![string]::IsNullOrEmpty($binFolder)) {
    Remove-Item -Recurse -Force $binFolder
}

$exeFile = Get-ChildItem | Where-Object { $_.Name -Match ".*.exe" }
if (![string]::IsNullOrEmpty($exeFile)) {
    Remove-Item $exeFile
}

make
./sfml_first_game.exe
