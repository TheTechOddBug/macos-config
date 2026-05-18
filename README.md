# macOS config

My macOS development environment. Senior-engineer minimum: AeroSpace for keyboard-driven window management on top of stock macOS, JetBrainsMono Nerd Font, Ghostty + tmux + sesh. Boring on purpose.

## Stack

| Layer | Tool |
|------|------|
| Window manager | **AeroSpace** -- 5 workspaces pinned across two monitors |
| Modifier key | **Hyperkey** -- Caps Lock → Esc on tap (kept for app shortcuts; not used by AeroSpace anymore) |
| Status bar | Native macOS menu bar -- visible always, no custom bar |
| Window borders | None -- AeroSpace's own focus is enough |
| Terminal | **Ghostty** -- Vesper, JetBrainsMono 16 |
| Terminal mux | **tmux** -- prefix Ctrl-B, resurrect + continuum for persistence |
| Session manager | **sesh** -- fuzzy session switcher |
| Shell | **zsh** + **starship** + **atuin** + **zoxide** |
| Editor | **Zed** -- Vesper-ish, JetBrainsMono |
| Launcher | **Raycast** -- app launching, system actions |
| Calendar in menu bar | **MeetingBar** -- next event indicator |

## Config files

| Path | Description |
|------|-------------|
| [.aerospace.toml](.aerospace.toml) | AeroSpace -- workspaces, Alt-based keybindings, auto-pinning rules |
| [config](config) | Ghostty terminal -- Vesper, JetBrainsMono 16 |
| [.tmux.conf](.tmux.conf) | tmux -- Ctrl-B prefix, sesh, resurrect+continuum |
| [zed/](zed/) | Zed editor |
| [starship.toml](starship.toml) | Starship prompt |
| [.zprofile](.zprofile) | Homebrew shellenv |
| [.gitconfig](.gitconfig) | Git -- SSH signing, rebase on pull |
| [Brewfile](Brewfile) | Homebrew taps, formulae, casks |
| [macos-defaults.sh](macos-defaults.sh) | macOS preferences script |
| [karabiner.json](karabiner.json) | Legacy -- superseded by Hyperkey |

## Workspaces

**External monitor (LG)** — primary focus surface

| WS | Theme | Pinned apps |
|----|-------|-------------|
| 1 | code | Zed, Ghostty |
| 2 | web | Chrome, Safari |
| 3 | infra | terminals/dashboards (no auto-rules — place manually) |

**Built-in display (MacBook)** — communications + meetings

| WS | Theme | Pinned apps |
|----|-------|-------------|
| 4 | comms | Slack, Mail, ChatGPT, Claude, WhatsApp |
| 5 | meetings | Zoom, Teams |

Why this split: external is reserved for deep focus, built-in is for incoming attention (chat + meetings). Putting Zoom on built-in also makes it safe to screenshare the external screen without leaking the meeting UI.

## Floating utilities

Auto-floated (so they don't tile awkwardly): Finder, Raycast, Calculator, System Settings, Bitwarden, PastePal, Shottr, SF Symbols, AppCleaner.

## Keybindings

| Keys | Action |
|------|--------|
| Alt + H/J/K/L | Focus left/down/up/right |
| Alt + Shift + H/J/K/L | Move window in direction |
| Alt + 1..5 | Switch workspace |
| Alt + Shift + 1..5 | Move focused window to workspace |
| Alt + Tab | Last workspace |
| Alt + F | Fullscreen (toggle) |

That's it. No service mode, no layout toggles, no Hyper duplicates. Caps Lock still sends Esc on tap (via Hyperkey).

## Setup on a fresh machine

```sh
# 1. Install Homebrew packages
brew bundle --file=Brewfile

# 2. Apply macOS defaults
bash macos-defaults.sh

# 3. Symlink configs into ~/

# 4. Install tmux plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/bin/install_plugins

# 5. Launch AeroSpace, grant Accessibility
open -a AeroSpace

# 6. Launch Hyperkey, grant Accessibility
open -a Hyperkey
```
