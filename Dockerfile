FROM docker:20.10.9-dind

ENV DOCKER_CLI_EXPERIMENTAL=enabled

COPY --from=docker/buildx-bin /buildx /usr/libexec/docker/cli-plugins/docker-buildx
COPY scripts/install-buildx ./bin/

ENTRYPOINT [ "install-buildx" ] 