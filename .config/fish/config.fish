# Environments
set -gx EDITOR nvim
set -gx PATH /opt/homebrew/bin $PATH
set -gx PATH /usr/local/bin $PATH
set -gx PATH $HOME/bin $PATH
set -gx PATH $HOME/.local/bin $PATH

# NodeJS
set -gx PATH node_modules/.bin $PATH
# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH

# Scripts
starship init fish | source
mise activate fish | source

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.fish 2>/dev/null || :
