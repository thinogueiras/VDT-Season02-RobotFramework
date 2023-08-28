docker container run --rm -it \
    -u root \
    -v `pwd`/logs:/opt/robotframework/reports \
    -v `pwd`/resources:/opt/robotframework/resources \
    -v `pwd`/tests:/opt/robotframework/tests \
    -e ROBOT_THREADS=10 \
    -e PABOT_OPTIONS="--testlevelsplit" \
    ppodgorsek/robot-framework:latest