@echo off

REM K-�������� �ʱ�ȭ ��ũ��Ʈ

setlocal EnableExtensions
setlocal EnableDelayedExpansion

title K-�������� �ʱ�ȭ ��ũ��Ʈ

REM �����ڱ������� ����
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

REM �������� IE�� �ѱ��� ��� ����
REM 32��Ʈ���� 64��Ʈ ���� ���� �Ǵ�
REM Internet Explorer ���� ����
REM �˾����� ����
REM Windows Defender SmartScreen ���� ����
REM ȣȯ�����⼳�� ����
REM ���ͳݿɼ� ���� ����
REM �����Ҷ� �˻���ϻ��� üũ����
REM ���������� �������ٷ� ����
REM ����ҵ�ũ���� ����
REM �ŷ��� �� �ִ� ����Ʈ ���
REM ���������ʿ� ����
REM ������������� ����
REM ��ȱ� ���α׷� ���� �� �缳ġ
REM ��ȱ� ���α׷� OCX ����

REM ODT ������������ �ֽŹ��� ���� Ȯ��(������ ��¥ �������� ������)
set check_date=2020-06-26

for /F %%a in ('"dir "C:\Program Files ^(x86^)\HNC\HwpODTCtrl\HOffice2018\Bin\HwpODTCtrl.ocx" | find /i "HwpOdtCtrl.ocx""') do set T=%%a

if not %T%==%check_date% (
	echo ODT FILE IS OLD VERSION
) ELSE (
	echo ODT FILE IS NEW VERSION
)

echo ODT Editor TEST Completed
