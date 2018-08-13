FROM alpine:latest

LABEL maintainer="Fredrik Forsmo <fredrik.forsmo@gmail.com>"

# Install git and openssh
RUN apk add --no-cache bash git openssh

# Keyscan GitHub, GitLab and Bitbucket
RUN mkdir -p ~/.ssh && ssh-keyscan -H github.com gitlab.com bitbucket.org >> ~/.ssh/known_hosts

# Copy files into container.
COPY docker-entrypoint.sh /usr/local/bin
COPY .gitignore /root/.gitignore

ENTRYPOINT ["docker-entrypoint.sh"]