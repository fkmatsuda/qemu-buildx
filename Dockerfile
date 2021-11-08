FROM docker:20.10.10-dind-alpine3.14

ENV DOCKER_CLI_EXPERIMENTAL=enabled

COPY --from=docker/buildx-bin /buildx /usr/libexec/docker/cli-plugins/docker-buildx
COPY scripts/install-buildx ./bin/

ENTRYPOINT [ "install-buildx" ] 