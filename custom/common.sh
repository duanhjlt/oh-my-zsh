_CONFIG_BASE=$HOME/.oh-my-zsh/custom

unset PATH
source /etc/profile

#export PATH=$PATH:_CONFIG_BASE

source $_CONFIG_BASE/settings.path.sh
source $_CONFIG_BASE/settings.alias.sh
source $_CONFIG_BASE/settings.dircolors.sh

if which pyenv > /dev/null;then 
    eval "$(pyenv init -)";
fi

# pyenv-virtualenv
if which pyenv-virtualenv-init > /dev/null;then 
    eval "$(pyenv virtualenv-init -)"
fi
