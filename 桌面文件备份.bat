@echo off
title �����ļ�����
echo �˳���Ϊ���������ļ�,Ĭ�ϴ���λ��Ϊ D:\Desktopfileup
echo :                                                  :
:echo ���� ����� ��,�����Զ����������ļ�,��ɺ��Զ��˳�.
:pause

:set /a FU=D:\Desktopfileup

if exist "D:\Desktopfilebackup" goto DL
goto CT

:DL
del /f /a /q "D:\Desktopfilebackup"
rd /s /q "D:\Desktopfilebackup"

:CT
if not exist "D:\Desktopfilebackup" md D:\Desktopfilebackup


if exist "%UserProfile%\����" goto BXP
if exist "%UserProfile%\desktop" goto BW7
goto ET

:BXP
xcopy /e "%UserProfile%\����"  D:\Desktopfilebackup
goto ET

:BW7
xcopy /e "%UserProfile%\desktop" D:\Deskfilebackup
goto ET

:ET
exit

:�������õ�ϵͳ·������Ӧ�ľ���·���� 
:
:������ǰϵͳ�̷�%systemdrive%�� %HOMEDRIVE%C:\ 
:
:������ǰϵͳĿ¼%systemroot%��   %Windir%C:\WINDOWS 
:
:������ǰ�û��ļ���%UserProfile%�� %HOMEPATH%C:\Documents and Settings\Administrator 
:
:���������û��ļ���%AllUsersProfile%C:\Documents and Settings\All Users 
:
:������ʱ�ļ���1%temp%C:\Documents and Settings\Administrator\Local Settings\Temp 
:
:������ʱ�ļ���2%SystemRoot%\TEMPC:\WINDOWS\Temp 
:
:���������ļ���%ProgramFiles%C:\Program Files 