FROM quay.io/toolbx-images/wolfi-toolbox:latest

LABEL com.github.containers.toolbox="true" \
    usage="This image is meant to be used with the toolbox or distrobox command" \
    summary="A small image containing common needed tools"

COPY extra-packages /
RUN apk update && \
    apk upgrade && \
    grep -v '^#' /extra-packages | xargs apk add
RUN rm /extra-packages

COPY leppa-config.fish /usr/share/fish/vendor_conf.d/
RUN chsh -s /usr/bin/fish
