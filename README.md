# docker-env
My shell configs to quickly clone into docker containers for quick shell environment vars, aliases, etc.


## Installation


```shell
    curl -fsSL https://raw.githubusercontent.com/Jahhein/docker-env/master/aliases.sh > $HOME/.bash_profile
```

### Clone repository

```shell
    git clone https://github.com/Jahhein/docker-env $HOME/docker-env \
      && exec $HOME/docker-env/install.sh
```

### TODO

    [ ] Make shell configs source from raw online script via `curl`
