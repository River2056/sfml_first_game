$binFolder = Get-ChildItem | Where-Object { $_.Name -eq "bin" }
$exeFile = Get-ChildItem | Where-Object { $_.Name -Match ".*.exe" }
if (![string]::IsNullOrEmpty($binFolder) -or ![string]::IsNullOrEmpty($exeFile)) {
    make clean
}

make
./sfml_first_game.exe
