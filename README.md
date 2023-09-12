# Dots
This repo contains any configuration files for the tools I use.

## Setting up
> Note: This guide only works with Linux/MacOS or WSL.

- Clone the repository to `~/.dots`
- *Run `~./setup.sh` (optional)*

### `.zshrc`
By default Zsh searches its configuration file in `~/.zshrc`. To keep things simple I've opted to use symlinks to
point Zsh to the file in this repository.

- Run `ln -s ~/.dots/.zshrc ~/.zshrc`
