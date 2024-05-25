FROM docker:26.1.3-alpine3.19

ENV DOCKER_CLI_EXPERIMENTAL=enabled

COPY --from=docker/buildx-bin:0.14.0 /buildx /usr/libexec/docker/cli-plugins/docker-buildx
COPY scripts/install-buildx ./bin/

RUN apk --update --no-cache add openssh-client git

ENTRYPOINT [ "install-buildx" ] 