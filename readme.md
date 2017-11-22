# docker-git

Simple docker container to solve issue when you have multiple ssh keys with different git accounts. The image scans the GitHub, GitLab and Bitbucket with `ssh-keyscan` so you don't have to do it.

## Usage

Remember to add your private ssh key and your current directory so you can clone outside of your container.

```
docker run -v ~/.ssh/id_rsa:/root/.ssh/id_rsa -v $(pwd):/opt git git clone git@github.com:frozzare/docker-wptest.git /opt/docker-wptest
```

This can easy be converted to a alias.

```
alias git2="docker run -v ~/.ssh/id_rsa:/root/.ssh/id_rsa -v $(pwd):/opt git git"
git2 clone git@github.com:frozzare/docker-wptest.git /opt/docker-wptest
```

## License

MIT © [Fredrik Forsmo](https://github.com/frozzare)