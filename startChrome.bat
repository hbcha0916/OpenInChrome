REM 해당 파일은 엣지에서 특정 링크를 누르면 구글 크롬으로 열리게 하는 스크립트입니다.
REM 인자를 변수 S로 받는다
REM gchrome:// 10글자를 자른다.
REM start chrome {URL} 명령어 실행
SET S=%1
SET S=%S:~11,-1%
start chrome "%S%"
exit