FROM alpine/git:latest
LABEL maintainer="Thomas Vérin <thomas.verin@sonarsource.com>"

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
