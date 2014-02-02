@echo off

title 清理浏览器缓存

:Maxthon
:-E.x.-
:XP
:C:\"Documents and Settings"\xxx\"Local Settings"\Temp\Maxthon3Cache\Temp\Webkit\Cache\
:Win7
:C:\Users\xxx\AppData\Local\Temp\Maxthon3Cache\Temp\Webkit\Cache
:-Run-
:任务管理器 kill - Maxthon (如果想删除缓存彻底些,请添加此项)
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
:任务管理器 kill - Google - Chrome (如果想删除缓存彻底些,请添加此项)
if exist %UserProFile%\AppData\Local\Google\Chrome taskkill /f /im Chrome.exe
:XP
if exist %AppData%\Google\Chrome del /f /a /q %AppData%\Google\Chrome\"User Data"\Default\Cache\*.*
if exist %AppData%\Google\Chrome del /f /a /q %AppData%\Google\Chrome\"User Data"\Default\"Application Cache"\Cache\*.*
:Win7
if exist %UserProFile%\AppData\Local\Google\Chrome del /f /a /q %UserProFile%\AppData\Local\Google\Chrome\"User Data"\Default\Cache\*.*

:系统缓存
:-E.x.-
:XP
:C:\"Documents and Settings"\xxx\"Local Settings"\Temp\
:Win7
:C:\Users\xxx\AppData\Local\Temp\
:删除文件 即可 (P.S. 基于文件夹内有很多文件夹,无法确认其用途,则删除文件即可.)
:-Run-
if exist %Temp% del /f /a /q %Temp%\*.*


:相对路径
:系统盘
:C:\Windows
:%windir%

:用户文件夹
:C:\Users\xxx
:%UserProFile%

:应用资料
:C:\Users\xxx\AppData\Roming
:%AppData%

:Local
:C:\Users\xxx\AppData\Local
:%UserProFile%\AppData\Local

:Temp
:C:\Users\xxx\AppData\Local\Temp
:%Temp%

:删除文件\夹
:del /f /a /q - 删除文件
:rd /s /q - 删除文件夹

:Maxthon3
:%AppData% / %Application Data%\Maxthon3 - Maxthon3 用户资料

:Google - Chrome
:%AppData% / %Application Data%\Google\Chrome\User Data - Google - Chrome 用户资料

:pause

exit