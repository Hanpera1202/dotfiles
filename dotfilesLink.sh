#!/bin/sh
DOTFILES="$(cd "$(dirname "$0")" && pwd)"

ln -sf "$DOTFILES/vimrc" ~/.vimrc
mkdir -p ~/.vim
ln -sfn "$DOTFILES/vim-config" ~/.vim/config
TMUX_VER=$(tmux -V 2>/dev/null | awk '{print $2}')
case "$TMUX_VER" in
  3.[4-9]*|[4-9]*) TMUX_CONF="tmux.conf.v3.4" ;;
  3.[2-3]*)        TMUX_CONF="tmux.conf.v3.2" ;;
  2.*)             TMUX_CONF="tmux.conf.v2.9" ;;
  1.*)             TMUX_CONF="tmux.conf.v1.8" ;;
  *)               TMUX_CONF="" ;;
esac
if [ -n "$TMUX_CONF" ]; then
  ln -sf "$DOTFILES/$TMUX_CONF" ~/.tmux.conf
  echo "Linked ~/.tmux.conf -> $TMUX_CONF (tmux $TMUX_VER)"
else
  echo "tmux not found or version unrecognized ($TMUX_VER), skipping ~/.tmux.conf"
fi
append_source() {
  local target="$1"
  local file="$2"
  local line="[ -f \"$DOTFILES/$file\" ] && source \"$DOTFILES/$file\""
  if [ -L "$target" ]; then
    echo "WARNING: $target is a symlink — skipping to avoid writing into the symlink target"
    return 1
  fi
  touch "$target"
  grep -qF "$DOTFILES/$file" "$target" || echo "$line" >> "$target"
  echo "Appended source to $target"
}
append_source ~/.bashrc .bashrc
append_source ~/.zshrc .zshrc

VSCODE_DIR="$HOME/Library/Application Support/Code/User"
if [ -d "$VSCODE_DIR" ]; then
  ln -sf "$DOTFILES/vscode/settings.json" "$VSCODE_DIR/settings.json"
  ln -sf "$DOTFILES/vscode/keybindings.json" "$VSCODE_DIR/keybindings.json"
fi
