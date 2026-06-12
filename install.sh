#!/bin/bash
DOTFILES="$(cd "$(dirname "$0")" && pwd)"

link() {
  mkdir -p "$(dirname "$2")"
  ln -sf "$1" "$2"
  echo "linked $1 -> $2"
}

link "$DOTFILES/bspwm/bspwmrc"       "$HOME/.config/bspwm/bspwmrc"
link "$DOTFILES/sxhkd/sxhkdrc"       "$HOME/.config/sxhkd/sxhkdrc"
link "$DOTFILES/polybar/config.ini"   "$HOME/.config/polybar/config.ini"
link "$DOTFILES/polybar/launch.sh"    "$HOME/.config/polybar/launch.sh"
link "$DOTFILES/picom/picom.conf"     "$HOME/.config/picom/picom.conf"
link "$DOTFILES/rofi/gruvbox.rasi"    "$HOME/.config/rofi/gruvbox.rasi"
link "$DOTFILES/rofi/config.rasi"     "$HOME/.config/rofi/config.rasi"
link "$DOTFILES/kitty/kitty.conf"     "$HOME/.config/kitty/kitty.conf"
link "$DOTFILES/dunst/dunstrc"        "$HOME/.config/dunst/dunstrc"

chmod +x "$DOTFILES/polybar/launch.sh"
echo "done"
