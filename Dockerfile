FROM ubuntu:18.04

# Simple docker container for ACM users

RUN apt update -y && apt install -y \
	vim \
	emacs \
	patch \
	sudo \
	dumb-init

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD ["/bin/bash"]
