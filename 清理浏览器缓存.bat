@echo off

title �������������

:Maxthon
:-E.x.-
:XP
:C:\"Documents and Settings"\xxx\"Local Settings"\Temp\Maxthon3Cache\Temp\Webkit\Cache\
:Win7
:C:\Users\xxx\AppData\Local\Temp\Maxthon3Cache\Temp\Webkit\Cache
:-Run-
:��������� kill - Maxthon (�����ɾ�����泹��Щ,����Ӵ���)
if exist %Temp%\Maxthon3Cache taskkill /f /im Maxthon.exe
if exist %Temp%\Maxthon3Cache del /f /a /q %Temp%\Maxthon3Cache\Temp\Webkit\Cache\*.*

:Google Chrome
:-E.x.-
:XP
:C:\"Documents and Settings"\xxx\"Local Settings"\Application Data\Google\Chrome\"User Data"\Default\Cache\
:C:\"Documents and Settings"\xxx\"Local Settings"\Application Data\Google\Chrome\"User Data"\Default\"Application Cache"\Cache\
:Win7
:C:\Users\xxx\AppData\Local\Google\Chrome\User Data\Default\Cache
:-Run-
:��������� kill - Google - Chrome (�����ɾ�����泹��Щ,����Ӵ���)
if exist %UserProFile%\AppData\Local\Google\Chrome taskkill /f /im Chrome.exe
:XP
if exist %AppData%\Google\Chrome del /f /a /q %AppData%\Google\Chrome\"User Data"\Default\Cache\*.*
if exist %AppData%\Google\Chrome del /f /a /q %AppData%\Google\Chrome\"User Data"\Default\"Application Cache"\Cache\*.*
:Win7
if exist %UserProFile%\AppData\Local\Google\Chrome del /f /a /q %UserProFile%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\*.*

:ϵͳ����
:-E.x.-
:XP
:C:\"Documents and Settings"\xxx\"Local Settings"\Temp\
:Win7
:C:\Users\xxx\AppData\Local\Temp\
:ɾ���ļ� ���� (P.S. �����ļ������кܶ��ļ���,�޷�ȷ������;,��ɾ���ļ�����.)
:-Run-
if exist %Temp% del /f /a /q %Temp%\*.*


:���·��
:ϵͳ��
:C:\Windows
:%windir%

:�û��ļ���
:C:\Users\xxx
:%UserProFile%

:Ӧ������
:C:\Users\xxx\AppData\Roming
:%AppData%

:Local
:C:\Users\xxx\AppData\Local
:%UserProFile%\AppData\Local

:Temp
:C:\Users\xxx\AppData\Local\Temp
:%Temp%

:ɾ���ļ�\��
:del /f /a /q - ɾ���ļ�
:rd /s /q - ɾ���ļ���

:Maxthon3
:%AppData% / %Application Data%\Maxthon3 - Maxthon3 �û�����

:Google - Chrome
:%AppData% / %Application Data%\Google\Chrome\User Data - Google - Chrome �û�����

:pause

exit