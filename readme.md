# docker-git

Simple docker container to solve issue when you have multiple ssh keys with different git accounts. The image scans the GitHub, GitLab and Bitbucket with `ssh-keyscan` so you don't have to do it.

## Usage

Create a alias so you can use git2 everywhere. 

```
alias git2="docker run --rm -v ~/.ssh/id_rsa:/root/.ssh/id_rsa -v ~/.gitconfig:/root/.gitconfig -v $(pwd):/opt frozzare/git git"
git2 clone git@github.com:frozzare/docker-git.git
```

## License

MIT © [Fredrik Forsmo](https://github.com/frozzare)
