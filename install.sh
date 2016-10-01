#!/bin/sh

# keeping yadr directory in respect to developers effors 
if [ ! -d "$HOME/.yadr" ]; then
    echo "Installing YADR for the first time"
    # Changed to clonded repo
    git clone --depth=1 https://github.com/sunnaren/dotfiles.git "$HOME/.yadr"
    cd "$HOME/.yadr"
    [ "$1" = "ask" ] && export ASK="true"
    rake install
else
    echo "YADR is already installed"
fi
