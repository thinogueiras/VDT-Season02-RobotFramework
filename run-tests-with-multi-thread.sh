docker run --name robot-tests -it \
    -v /${PWD}/resources:/opt/robotframework/resources:Z \
	-v /${PWD}/tests:/opt/robotframework/tests:Z \
    -e ROBOT_THREADS=10 \
    -e PABOT_OPTIONS="--testlevelsplit" \
    ppodgorsek/robot-framework:latest

rm -rf $(PWD)/logs

docker cp robot-tests:/opt/robotframework/reports $(PWD)/logs

docker container rm -f robot-tests