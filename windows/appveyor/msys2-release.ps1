$release = @"
yes | pacman -S doxygen zip
./autogen.sh
./configure --disable-examples
yes | make release
"@

$env:CHERE_INVOKING = "1"
$env:MSYSTEM = "MINGW64"
C:/msys64/usr/bin/bash -e -l -c $release
