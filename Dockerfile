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

LABEL org.label-schema.name="OpenSSH" \
	org.label-schema.description="OpenSSH Client" \
	org.label-schema.version=$DATE \
	org.label-schema.usage="https://hub.docker.com/r/rayzilt/debian_stable-slim_ssh-client" \
	org.label-schema.url="https://www.openssh.com/" \
	org.label-schema.vendor="Rayzilt" \
	org.label-schema.build-date=$DATE \
	org.label-schema.schema-version="1.0" \
