FROM docker

ENV DOCKER_CLI_EXPERIMENTAL=enabled

COPY --from=docker/buildx-bin /buildx /usr/libexec/docker/cli-plugins/docker-buildx
COPY scripts/entry.sh ./

ENTRYPOINT ["./entry.sh" ] 