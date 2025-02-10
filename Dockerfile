# https://hub.docker.com/_/alpine/tags
FROM alpine:3.21.2
LABEL org.opencontainers.image.description "Alpine based container with websocat"

# we need websocat from edge repository as 3.21 only has version 1.13, but we need 1.14 due to basic auth...
RUN apk add --no-cache bash ;\
	apk add websocat --no-cache --repository=https://dl-cdn.alpinelinux.org/alpine/edge/community ;\
	rm -rf /var/cache/apk/*

USER root
WORKDIR /

# will be overwritten by container definition
ENTRYPOINT ["/bin/bash"]
CMD ["sleep","infinite"]
