@echo off
setlocal

docker container run --rm -it ^
    -u root ^
    -v %cd%/logs:/opt/robotframework/reports ^
    -v %cd%/resources:/opt/robotframework/resources ^
    -v %cd%/tests:/opt/robotframework/tests ^
    -e ROBOT_THREADS=10 ^
    -e PABOT_OPTIONS="--testlevelsplit" ^
    ppodgorsek/robot-framework:latest

endlocal