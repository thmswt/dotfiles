# thmswt's dotfiles


## Prerequisites

1. [Homebrew](https://brew.sh/), run: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
2. [git](https://git-scm.com/download/mac), run: `brew install git`
3. [just](https://github.com/casey/just), run: `brew install just`


## Installation

1. Clone this repo with: `git clone https://github.com/thmswt/dotfiles`
2. `cd dotfiles/`
3. Run: `just setup`

This will automatically:
1. Create a `~/.gitconfig_local` file (remember to add your user-specific git config there, see [example](https://github.com/thmswt/dotfiles/blob/main/config/gitconfig_local)).
2. Run the main installation script (`./install.sh`) via [`dotbot`](https://github.com/anishathalye/dotbot/).
3. Install LogiTune (finding the correct installer version).
4. Provide instructions for Rectangle configuration.

To also apply macOS settings (optional), run:
`just macos`

Or run everything including macOS settings with:
`just full-setup`

Alternatively, you can run individual steps using `just <recipe>`. See available recipes with `just --list`.


## License

[WTFPL](https://en.wikipedia.org/wiki/WTFPL): do the fuck you want. Enjoy!