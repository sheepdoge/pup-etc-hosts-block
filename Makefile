build:
	docker build -t sheepdoge/pup-etc-hosts-block .

test: build
	docker run sheepdoge/pup-etc-hosts-block

interactive: build
	docker run -it sheepdoge/pup-etc-hosts-block /bin/bash
