FROM debian:stable-slim
LABEL maintainer="Rayzilt - <docker@rayzilt.nl>"

# Set apt non-interactive
ENV DEBIAN_FRONTEND noninteractive

# Install OpenSSH Client
RUN set -x \
	&& apt update \
	&& apt --no-install-recommends install -y openssh-client\
	&& apt autoremove --purge -y \
	&& apt clean \
	&& rm -rf /var/lib/apt/lists/*

CMD ["bash"]
