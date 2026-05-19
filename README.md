# macOS config

My macOS development environment. Stock macOS window management + Ghostty + zsh. Boring on purpose.

## Stack

| Layer | Tool |
|------|------|
| Window manager | Stock macOS (Mission Control, native Spotlight ⌘Space) |
| Terminal | **Ghostty** |
| Shell | **zsh** + **starship** + **zoxide** |
| Calendar in menu bar | **MeetingBar** |

## Config files

| Path | Description |
|------|-------------|
| [config](config) | Ghostty terminal |
| [starship.toml](starship.toml) | Starship prompt |
| [.zprofile](.zprofile) | Homebrew shellenv |
| [.zshrc](.zshrc) | zsh interactive config |
| [.gitconfig](.gitconfig) | Git — SSH signing, rebase on pull |
| [Brewfile](Brewfile) | Homebrew taps, formulae, casks |
| [macos-defaults.sh](macos-defaults.sh) | macOS preferences script |

## Setup on a fresh machine

```sh
# 1. Install Homebrew packages
brew bundle --file=Brewfile

# 2. Apply macOS defaults
bash macos-defaults.sh

# 3. Symlink configs into ~/
bash link.sh
```
