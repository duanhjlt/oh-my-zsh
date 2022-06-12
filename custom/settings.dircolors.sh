currentOS=$(uname)
_CONFIG_BASE=$HOME/.oh-my-zsh/custom

if [ "$currentOS" = "Linux" ] ; then
  if [ -f "~/.dircolors" ]; then
  else
    cp -f $_CONFIG_BASE/.dircolors ~/.dircolors
  fi

  if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
  fi
fi
