@echo off
REM 해당 파일은 엣지에서 특정 링크를 누르면 구글 크롬으로 열리게 하는 윈도우 레지스트리 추가 스크립트입니다.
echo Creating custom protocol "ChromeProtocol"...

REM 해당 파일을 관리자 권한으로 실행한다.
REM 커스텀 프로토콜을 레지스트리에 등록
REM gchrome://{URL} 형식으로 웹 브라우저로 작성하면 크롬브라우저로{URL} 에 접속한다.
REM 문자열 파싱이 필요하기 때문에 startChrome.bat 파일을 거쳐서 가야하기 때문에 마지막 구문에서 해당 배치파일의 경로를 절대경로로 적어야한다.
reg add "HKEY_CLASSES_ROOT\gchrome" /ve /d "URL:gcrome Protocol" /f
reg add "HKEY_CLASSES_ROOT\gchrome" /v "URL Protocol" /f
reg add "HKEY_CLASSES_ROOT\gchrome\shell" /f
reg add "HKEY_CLASSES_ROOT\gchrome\shell\open" /f
reg add "HKEY_CLASSES_ROOT\gchrome\shell\open\command" /ve /d "C:\startChrome.bat \"%%1\"" /f

echo Custom protocol "gchrome" has been created successfully.
pause