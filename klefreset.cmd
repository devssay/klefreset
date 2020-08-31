@echo off

REM K-에듀파인 초기화 스크립트

setlocal EnableExtensions
setlocal EnableDelayedExpansion

title K-에듀파인 초기화 스크립트

REM 관리자권한으로 실행
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

REM 실행중인 IE와 한글을 모두 종료
REM 32비트인지 64비트 인지 여부 판단
REM Internet Explorer 설정 변경
REM 팝업차단 해제
REM Windows Defender SmartScreen 필터 끄기
REM 호환성보기설정 해제
REM 인터넷옵션 설정 변경
REM 종료할때 검색기록삭제 체크해제
REM 웹페이지를 열때마다로 변경
REM 사용할디스크공간 변경
REM 신뢰할 수 있는 사이트 등록
REM 서버검증필요 해제
REM 사용자지정수준 설정
REM 기안기 프로그램 삭제 후 재설치
REM 기안기 프로그램 OCX 설정

REM ODT 문서편집기의 최신버전 여부 확인(수정한 날짜 기준으로 판정함)
set check_date=2020-06-26

for /F %%a in ('"dir "C:\Program Files ^(x86^)\HNC\HwpODTCtrl\HOffice2018\Bin\HwpODTCtrl.ocx" | find /i "HwpOdtCtrl.ocx""') do set T=%%a

if not %T%==%check_date% (
	echo ODT FILE IS OLD VERSION
) ELSE (
	echo ODT FILE IS NEW VERSION
)

echo ODT Editor TEST Completed
