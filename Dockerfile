# https://hub.docker.com/_/alpine/tags
FROM alpine:3.21.2
LABEL org.opencontainers.image.description "Alpine based container with websocat"

RUN apk add --no-cache bash websocat ;\
	rm -rf /var/cache/apk/*

USER root
WORKDIR /

# will be overwritten by container definition
ENTRYPOINT ["/bin/bash"]
CMD ["sleep","infinite"]
