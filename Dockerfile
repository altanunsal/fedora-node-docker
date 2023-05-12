FROM fedora:38

LABEL maintainer="Altan Unsal <altan@unsal.ca>"

RUN dnf install xz -y
RUN curl -L -o node.tar.xz "https://nodejs.org/dist/v18.16.0/node-v18.16.0-linux-x64.tar.xz" && \
	sudo tar -xJf node.tar.xz -C /usr/local --strip-components=1 && \
	rm node.tar.xz && \
	sudo ln -s /usr/local/bin/node /usr/local/bin/nodejs