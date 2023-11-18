# Dockerized NeoVim

A simple NeoVim installation on alpine, wrapped with a docker container. \
It uses this [config](https://github.com/dominicmeyer/nvim_config)

# Usage

1. Pull the image: `docker pull ghcr.io/dominicmeyer/nvim_dockerized:main`
2. Start the container: `docker run -d nvim_dockerized:main` (Detach mode is highly adviced, because the main cmd will do nothing, so nothing ever displayed). \
   To actually use the container: `docker run -v [directory of code]:[path in the container] -d nvim_dockerized:main`. \
   This will mount the directory, that has your code into the container, so you can start editing it with neovim.
