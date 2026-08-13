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

`dotfilesLink.sh` creates symlinks for Vim and tmux configs, and appends a `source` line to `~/.bashrc` and `~/.zshrc` so system-provided content is preserved. On macOS it also links the VSCode settings if `~/Library/Application Support/Code/User` exists.

> **Warning:** Do not manually symlink `~/.bashrc` or `~/.zshrc` to files in this repo. If the script detects that either file is already a symlink, it will skip it and print a warning — this prevents an infinite source loop that would make the shell crash on login and lock you out of the server.

## Vim

Vim works out of the box for quick edits — basic settings and key mappings are always active.

Full functionality requires [Vundle](https://github.com/VundleVim/Vundle.vim), which adds:

- **NERDTree** — file tree toggle with `C-e`
- **molokai** — color scheme

To enable these, install Vundle and run `:PluginInstall` once:

```sh
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```

## tmux version selection

`dotfilesLink.sh` detects the installed tmux version and links the appropriate config to `~/.tmux.conf` automatically. If tmux is not installed or the version is unrecognized, the link is skipped.
