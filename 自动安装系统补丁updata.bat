@echo off
setlocal ENABLEDELAYEDEXPANSION
set /a n=0
set /a all=0
for %%i in (*.exe) do (
   set /a all=!all!+1
)
for %%i in (*.exe) do (
   set /a n=!n!+1
   @echo+ !n!/!all!¡¢%%i
   %%i /passive /norestart
)
VER|find "5.0">NUL 
:IF NOT ERRORLEVEL 1 @echo ÇëÊÖ¶¯ÖØÆôWin2K
::win2K's auto restart not tested
:VER|find "5.1">NUL 
:IF NOT ERRORLEVEL 1 shutdown -r -t 0
:VER|find "5.2">NUL 
:IF NOT ERRORLEVEL 1 shutdown /r /t 0
pause