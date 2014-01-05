@echo off
title 关闭 网络软件
echo 关闭 IDM
taskkill /f /im IDMan.exe
taskkill /f /im IEMonitor.exe
echo 关闭 迅雷
taskkill /f /im ThunderPlatform.exe
taskkill /f /im Thunder.exe
