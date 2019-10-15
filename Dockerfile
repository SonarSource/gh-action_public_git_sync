FROM alpine:latest
LABEL maintainer="Thomas Vérin <thomas.verin@sonarsource.com>"

#install curl jq
RUN apk add --no-cache bash git

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]