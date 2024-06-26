FROM docker:27.0.1-dind-alpine3.20

ENV DOCKER_CLI_EXPERIMENTAL=enabled

COPY --from=docker/buildx-bin:0.15.1 /buildx /usr/libexec/docker/cli-plugins/docker-buildx
COPY scripts/install-buildx ./bin/

RUN apk --update --no-cache add openssh-client git

ENTRYPOINT [ "install-buildx" ] 