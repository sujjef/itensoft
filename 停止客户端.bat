@echo off
echo -----------判断当前电脑的位数------------

if exist "%systemroot%\SysWOW64" goto  x64 
goto x86

::32位系统处理方法
:x86
 cls
 color 1A
 echo -------开始重新启动加密进程.......
 echo ----停止进程----
 taskkill /f /im ClientHelper.exe
 taskkill /f /fi "username eq %username%" /im tehost.exe
 exit

::64位系统处理方法
:x64
 cls
 color 2A
 echo -------开始重新启动加密进程.......
 echo ----停止进程----
 taskkill /f /im ClientHelper.exe
 taskkill /f /fi "username eq %username%" /im tehost.exe
 taskkill /f /fi "username eq %username%" /im tehost64.exe

 ping 127.1 /n 3 >nul
 exit