# Dotfiles

## Summary

Just another 🎆 dotfiles 🎆 repository. Where possible, this set of dotfiles is
designed to be relatively understandable and flexible. If a program is not
installed, the dotfiles should still all load

## Setup

These dotfiles are designed to be managed with GNU Stow. To set this up
for a local home directory, clone the repository to `$HOME/.dotfiles`,
enter the cloned folder, and execute `stow .`.

Note, the following instructions assume that any existing dotfiles
that would otherwise conflict have been backed up/removed from their
respective directories.

```bash
cd ~
git clone git@github.com:callum-jones19/dotfiles.git .dotfiles
cd .dotfiles
stow .
```

## Currently configured

Dotfiles are currently being tracked for:

- Bash
- [Helix](https://github.com/helix-editor/helix)
- [Starship](https://github.com/starship/starship)
- [Alacritty](https://github.com/alacritty/alacritty)

