#!/usr/bin/zsh

# check if gnome-shell-ibus-switcher is installed
if ! gnome-extensions info ibus-switcher@kevinhwang91.github.com > /dev/null 2>&1; then
    print -P "%B%F{red}Please Install Gnome-shell-ibus-switcher first.%f%b\nGo check 👉 https://github.com/kevinhwang91/gnome-shell-ibus-switcher"
    exit 1
fi

typeset -agx IBUS_RIME_VIM_MODE_STATUS=(1 A)
typeset -agx IBUS_RIME_ORIGIN_MODE_STATUS
