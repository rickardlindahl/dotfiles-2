function fish_greeting

end

set -x VISUAL vim
set -x EDITOR "$VISUAL"

set -x PATH "$PATH:$HOME/.cargo/bin"
set -x PATH "$PATH:$HOME/.nvm/versions/node/lts/bin"

#Virtualenvwrapper settings:
set -x WORKON_HOME "$HOME/.virtualenvs"
set -x VIRTUALENVWRAPPER_PYTHON /usr/bin/python3.7

starship init fish | source

fish_ssh_agent
