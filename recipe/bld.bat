REM our feedstock has four sources: nvcc, crt, nvvm, libnvptxcompiler

robocopy "nvcc\bin" "%LIBRARY_BIN%" /MOVE /E
if %ERRORLEVEL% GEQ 8 exit 1

robocopy "nvcc\include" "%LIBRARY_INC%" /MOVE /E
if %ERRORLEVEL% GEQ 8 exit 1

robocopy "crt\include\crt" "%LIBRARY_INC%\crt" /MOVE /E
if %ERRORLEVEL% GEQ 8 exit 1

robocopy "nvvm\nvvm"     "%PREFIX%\Library\nvvm" /MOVE /E
if %ERRORLEVEL% GEQ 8 exit 1

robocopy "libnvptxcompiler\lib\x64" "%LIBRARY_LIB%\x64" /MOVE /E
if %ERRORLEVEL% GEQ 8 exit 1

robocopy "libnvptxcompiler\include" "%LIBRARY_INC%" /MOVE /E
if %ERRORLEVEL% GEQ 8 exit 1
