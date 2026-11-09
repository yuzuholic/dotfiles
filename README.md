<div align="center">

# dotfiles

Terminal, editor and shell configuration for macOS.

![macOS](https://img.shields.io/badge/macOS-Apple_Silicon-1e1e2e?style=flat-square&logo=apple&logoColor=cdd6f4)
![Ghostty](https://img.shields.io/badge/Ghostty-terminal-89b4fa?style=flat-square)
![Zed](https://img.shields.io/badge/Zed-editor-a6e3a1?style=flat-square)
![Starship](https://img.shields.io/badge/Starship-prompt-f9e2af?style=flat-square)

</div>

## What's inside

| Tool | What it covers | File | Symlinked to |
|---|---|---|---|
| [Ghostty](https://ghostty.org) | Fonts, colours, window style, keybindings | `ghostty/config.ghostty` | `~/.config/ghostty/config.ghostty` |
| [Zed](https://zed.dev) | Themes, extensions, transparency | `zed/settings.json` | `~/.config/zed/settings.json` |
| [Starship](https://starship.rs) | Shell prompt | `starship/starship.toml` | `~/.config/starship.toml` |
| [Zsh](https://www.zsh.org) | Shell startup | `.zshrc` | `~/.zshrc` |
| [Git](https://git-scm.com) | Identity, GitHub CLI credentials | `.gitconfig` | `~/.gitconfig` |

## Setup

Clone to `~/Repositories/dotfiles`, as the Ghostty icon path expects, then link each file into place:

```sh
git clone https://github.com/yuzuholic/dotfiles.git ~/Repositories/dotfiles
cd ~/Repositories/dotfiles

mkdir -p ~/.config/ghostty ~/.config/zed
ln -s "$PWD/ghostty/config.ghostty" ~/.config/ghostty/config.ghostty
ln -s "$PWD/zed/settings.json" ~/.config/zed/settings.json
ln -s "$PWD/starship/starship.toml" ~/.config/starship.toml
ln -s "$PWD/.zshrc" ~/.zshrc
ln -s "$PWD/.gitconfig" ~/.gitconfig
```

`ln -s` stops if a file already exists at the target, so move any existing config out of the way first.
