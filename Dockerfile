FROM alpine:latest

# Install git and openssh
RUN apk add --no-cache bash git openssh

# Keyscan GitHub, GitLab and Bitbucket
RUN mkdir -p ~/.ssh && ssh-keyscan -H github.com gitlab.com bitbucket.org >> ~/.ssh/known_hosts