@echo off
echo -----------�жϵ�ǰ���Ե�λ��------------

if exist "%systemroot%\SysWOW64" goto  x64 
goto x86

::32λϵͳ������
:x86
 cls
 color 1A
 echo -------��ʼ�����������ܽ���.......
 echo ----ֹͣ����----
 taskkill /f /im ClientHelper.exe
 taskkill /f /fi "username eq %username%" /im tehost.exe
 ::�ӳ�3��
 ping 127.1 /n 3 >nul
 echo ----��������----
 start "" "C:\Windows\System32\tehost.exe" 
 echo -------���������ɹ���������
 ping 127.1 /n 3 >nul
 exit

::64λϵͳ������
:x64
 cls
 color 2A
 echo -------��ʼ�����������ܽ���.......
 echo ----ֹͣ����----
 taskkill /f /im ClientHelper.exe
 taskkill /f /fi "username eq %username%" /im tehost.exe
 taskkill /f /fi "username eq %username%" /im tehost64.exe
 ::�ӳ�3��
 ping 127.1 /n 3 >nul
 echo ----��������----
 start "" "C:\Windows\SysWOW64\tehost.exe" 
 echo -------���������ɹ���������
 ping 127.1 /n 3 >nul
 exit