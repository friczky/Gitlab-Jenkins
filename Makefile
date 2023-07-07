### For Operation Gitlab and Jenkins

start: gitlab-start jenkins-start
stop: gitlab-stop jenkins-stop

# Path: Makefile
gitlab-start:
	echo 'Start Gitlab'
	docker-compose -f gitlab/docker-compose.yaml up -d
	echo 'Gitlab is running'

gitlab-stop:
	echo 'Stop Gitlab'
	docker-compose -f gitlab/docker-compose.yaml down
	echo 'Gitlab is stopped'


jenkins-start:
	echo 'Start Jenkins'
	docker-compose -f jenkins/docker-compose.yaml up -d
	echo 'Jenkins is running'

jenkins-stop:
	echo 'Stop Jenkins'
	docker-compose -f jenkins/docker-compose.yaml down
	echo 'Jenkins is stopped'