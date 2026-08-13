# dotfiles

Personal configuration files for Vim, tmux, VSCode, and shell.

## Contents

| File / Directory | Description |
|---|---|
| `vimrc` | Vim configuration |
| `vim-config/` | Vim config directory (`~/.vim/config`), includes LSP settings |
| `vscode/settings.json` | VSCode user settings |
| `vscode/keybindings.json` | VSCode keybindings |
| `vscode/init.vim` | VSCode Neovim extension config |
| `tmux.conf.v1.8` | tmux config for v1.8 |
| `tmux.conf.v2.9` | tmux config for v2.9 |
| `tmux.conf.v3.2` | tmux config for v3.2 |
| `tmux.conf.v3.4` | tmux config for v3.4 |
| `.bashrc` | Bash shell config |
| `.zshrc` | Zsh shell config |

## Setup

Clone the repo anywhere, then run the install script:

```sh
git clone <repo-url> /path/to/dotfiles
cd /path/to/dotfiles
chmod +x dotfilesLink.sh
./dotfilesLink.sh
```

`dotfilesLink.sh` creates symlinks from the standard config locations to this repo. On macOS it also links the VSCode settings if `~/Library/Application Support/Code/User` exists.

## tmux version selection

`dotfilesLink.sh` detects the installed tmux version and links the appropriate config to `~/.tmux.conf` automatically. If tmux is not installed or the version is unrecognized, the link is skipped.
