@echo off
setlocal

docker container run --rm -it ^
    -u root ^
    -v %cd%/logs:/opt/robotframework/reports ^
    -v %cd%/resources:/opt/robotframework/resources ^
    -v %cd%/tests:/opt/robotframework/tests ^
    ppodgorsek/robot-framework:latest

endlocal