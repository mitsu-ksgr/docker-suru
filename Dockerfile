FROM alpine:3.8
LABEL maintainer="mitsu-ksgr <k.sgr.mtisu.g@gmail.com>"

ENV DOCKER_MACHINE_VERSION=v0.15.0

RUN apk --no-cache update && \
    apk --no-cache upgrade && \
    apk --no-cache add docker openrc openssl ca-certificates && \
    rc-update add docker boot && \
    wget https://github.com/docker/machine/releases/download/${DOCKER_MACHINE_VERSION}/docker-machine-$(uname -s)-$(uname -m) \
        -O /usr/local/bin/docker-machine && \
    chmod +x /usr/local/bin/docker-machine && \
    apk --no-cache add py-pip && \
    pip install docker-compose


ENTRYPOINT [""]
CMD [""]

