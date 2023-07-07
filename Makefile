### For Operation Gitlab and Jenkins

start: gitlab-start
stop: gitlab-stop

# Path: Makefile
gitlab-start:
	echo 'Start Gitlab'
	docker-compose -f gitlab/docker-compose.yaml up -d
	if [$? -ne 0]; then \
		echo 'Gitlab start failed'; \
		exit 1; \
	fi
	echo 'Gitlab is running'

gitlab-stop:
	echo 'Stop Gitlab'
	docker-compose -f gitlab/docker-compose.yml down
	if [$? -ne 0]; then \
		echo 'Gitlab stop failed'; \
		exit 1; \
	fi
	echo 'Gitlab is stopped'