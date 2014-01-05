@echo off
title 桌面文件备份
echo 此程序为备份桌面文件,默认储存位置为 D:\Desktopfileup
echo :                                                  :
:echo 按下 任意键 后,程序将自动备份桌面文件,完成后自动退出.
:pause

:set /a FU=D:\Desktopfileup

if exist "D:\Desktopfilebackup" goto DL
goto CT

:DL
del /f /a /q "D:\Desktopfilebackup"
rd /s /q "D:\Desktopfilebackup"

:CT
if not exist "D:\Desktopfilebackup" md D:\Desktopfilebackup


if exist "%UserProfile%\桌面" goto BXP
if exist "%UserProfile%\desktop" goto BW7
goto ET

:BXP
xcopy /e "%UserProfile%\桌面"  D:\Desktopfilebackup
goto ET

:BW7
xcopy /e "%UserProfile%\desktop" D:\Deskfilebackup
goto ET

:ET
exit

:几个常用的系统路径所对应的绝对路径。 
:
:　　当前系统盘符%systemdrive%或 %HOMEDRIVE%C:\ 
:
:　　当前系统目录%systemroot%或   %Windir%C:\WINDOWS 
:
:　　当前用户文件夹%UserProfile%或 %HOMEPATH%C:\Documents and Settings\Administrator 
:
:　　所有用户文件夹%AllUsersProfile%C:\Documents and Settings\All Users 
:
:　　临时文件夹1%temp%C:\Documents and Settings\Administrator\Local Settings\Temp 
:
:　　临时文件夹2%SystemRoot%\TEMPC:\WINDOWS\Temp 
:
:　　程序文件夹%ProgramFiles%C:\Program Files 