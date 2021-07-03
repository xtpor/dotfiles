#!/bin/sh
set -e

VIM_PLUG_URL='https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
NVIM_CONFIG_URL='https://raw.githubusercontent.com/xtpor/dotfiles/master/init.vim'

VIM_PLUG="$HOME/.local/share/nvim/site/autoload/plug.vim"
NVIM_CONFIG="$HOME/.config/nvim/init.vim"


# Make sure neovim is installed on the system
if [ ! -x "$(command -v nvim)" ]; then
    echo "Error: neovim is not installed" >&2
    exit 1
fi

# Install vim-plug the plugin manager
if [ ! -f "$VIM_PLUG" ]; then
    echo 'Download and install vim-plug plugin manager'
    curl -fLo "$VIM_PLUG" --create-dirs "$VIM_PLUG_URL"
fi

# Install neovim config
if [ ! -f "$CONFIG_FILE" ]; then
    echo 'Download and install my neovim config'
    curl -fLo "$NVIM_CONFIG" --create-dirs "$NVIM_CONFIG_URL"
fi

# Start neovim to install the plugins
echo 'Installing vim plugins'
nvim -c ':PlugInstall' -c 'qa!'

echo 'Done.'
