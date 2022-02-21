@echo off 
Rem This program just displays Hello World 
set message=Hello World 
echo %message%

echo %1 
echo %2 
echo %3


for /L %%i in (1, 1, 5) do (
    echo %%i
)

REM for %I in (*.pdf) do (
REM     gswin32c -sDEVICE=png256 -dEPSCrop -r 96 -dTextAlphaBits=4 -o %~nI.png %I
REM )