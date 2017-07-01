

export PS1="\[\e[32;1m\]\u\[\e[33;1m\]@\[\e[36;1m\]\h:\[\e[32;1m\]\w/\[\e[0m\]\n$ "

export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"

nvm use stable

export GOPATH=$HOME/gow

export PATH=$PATH:$GOPATH/bin

