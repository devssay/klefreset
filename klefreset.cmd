@echo off

set check_date=2020-06-26

for /F %%a in ('"dir "C:\Program Files ^(x86^)\HNC\HwpODTCtrl\HOffice2018\Bin\HwpODTCtrl.ocx" | find /i "HwpOdtCtrl.ocx""') do set T=%%a

if not %T%==%check_date% (
	echo ODT FILE IS OLD VERSION
) ELSE (
	echo ODT FILE IS NEW VERSION
)

echo ODT Editor TEST Completed
