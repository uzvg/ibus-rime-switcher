# zim-ibus-rime-switcher (zimfw Plugin)

ibus-rime-switcher is a workaround for switching ibus-rime status for ibus-rime in Gnome Desktop.

## Features:

- Get and select ibus-rime schema with simple command.
- Zsh functions for input method state management:
  - `get-im`: Retrieve current input source status
  - `set-im`: Switch input method sources

## Installation:

1. Add to your Zimrc configuration:

```zsh
zmodule uzvg/ibus-rime-switcher
```

2. Install the plugin:

```zsh
zimfw install
```

3. Get the current rime input mode and input index:

```zsh
# Get the rime input mode and index:
$ get-im
1 A

# Set the rime input and the index:

$ set-im 1 中
```

## Dependencies

Required Gnome extension: 
* [gnome-shell-ibus-switcher](https://github.com/kevinhwang91/gnome-shell-ibus-switcher)
* [zimfw zsh framework](https://github.com/zimfw/zimfw)
* ibus-rime input engine

## Configuration:

Default normal mode preset in `init.zsh`:

```zsh
typeset -gax RIME_IBUS_VIM_NORMAL_IM=(1 A)
```

The `RIME_IBUS_VIM_NORMAL_IM` preserves the rime status which you want the ibus-rime to have in normal mode.

## Functions:

```zsh
get-im
```
* Retrieves current input method status via D-Bus:


```zsh
$ set-im <im_index> <im_mode>
```
* Set rime status.