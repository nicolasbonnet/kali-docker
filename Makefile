build:
	docker build . -t kali_pentest

start:
	docker run --tty --interactive kali_pentest /bin/bash