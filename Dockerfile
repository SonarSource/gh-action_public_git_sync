FROM alpine:latest
LABEL maintainer="Thomas Vérin <thomas.verin@sonarsource.com>"

#install curl jq
RUN apk add --no-cache bash git grep

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]