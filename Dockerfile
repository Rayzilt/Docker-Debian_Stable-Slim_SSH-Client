FROM debian:stable-slim
LABEL maintainer="Rayzilt - <docker@rayzilt.nl>"

# Set apt non-interactive
ENV DEBIAN_FRONTEND noninteractive

# Install OpenSSH Client
RUN set -x \
	&& apt-get update \
	&& apt-get --no-install-recommends install -y openssh-client\
	&& apt-get autoremove --purge -y \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*

CMD ["bash"]
