# thmswt's dotfiles


## Prerequisites

1. [Homebrew](https://brew.sh/), run: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. [git](https://git-scm.com/download/mac), run: `brew install git`


## Pre Configuration

Some of the tools used require local configuration. Like `git` with username and email:

1. Run `touch ~/.gitconfig_local` to create the file. 
2. Store any user-specific data.

You find a simple example of this file [here](https://github.com/thmswt/dotfiles/blob/main/config/gitconfig_local).


## Installation

To set things up, [`dotbot`](https://github.com/anishathalye/dotbot/) is used. Steps:

1. Clone this repo with: `git clone https://github.com/thmswt/dotfiles`
2. `cd dotfiles/`
3. Run: [`bash ./install.sh`](https://github.com/thmswt/dotfiles/blob/main/install.sh)


## Post Configuration

1. Import the [config file](https://github.com/thmswt/dotfiles/blob/main/config/RectangleConfig.json) into Rectangle.
2. (Optionally) Run [`bash macos/settings.sh`](https://github.com/thmswt/dotfiles/blob/main/macos/settings.sh) if you want to configure your macOS.


## License

[WTFPL](https://en.wikipedia.org/wiki/WTFPL): do the fuck you want. Enjoy!