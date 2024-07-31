# thmswt's dotfiles


## Prerequisites

1. Homebrew, run: [`/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`](https://brew.sh/)
2. git, run: [`brew install git`](https://git-scm.com/download/mac)


## Local configuration

Some of the used tools requires local configuration. Such as `git` with username and email.

Here's the full list:

1. `~/.gitconfig_local` to store any user-specific data.
2. `~/.shell_env_local` to store local shell config, like: usernames, passwords, tokens, `gpg` keys and so on


## Installation

To set things up, [`dotbot`](https://github.com/anishathalye/dotbot/) is used. Steps:

1. Clone this repo with: `git clone https://github.com/thmswt/dotfiles`
2. `cd dotfiles/`
3. Run: [`bash ./install.sh`](https://github.com/thmswt/dotfiles/blob/master/install.sh)


## Configuration

1. Import the [config file]((https://github.com/thmswt/dotfiles/blob/master/config/RectangleConfig.json)) into Rectangle.
2. (Optionally) Run [`bash macos/settings.sh`]((https://github.com/thmswt/dotfiles/blob/master/macos/settings.sh)) if you want to configure your macOS.


## License

[WTFPL](https://en.wikipedia.org/wiki/WTFPL): do the fuck you want. Enjoy!