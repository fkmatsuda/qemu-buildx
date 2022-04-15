FROM docker:20.10.14-dind-alpine3.15

ENV DOCKER_CLI_EXPERIMENTAL=enabled

COPY --from=docker/buildx-bin:0.8.2 /buildx /usr/libexec/docker/cli-plugins/docker-buildx
COPY scripts/install-buildx ./bin/

RUN apk add --no-cache openssh-client minio-client git

ENTRYPOINT [ "install-buildx" ] 