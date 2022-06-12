_CONFIG_BASE=$HOME/.oh-my-zsh/custom

currentOS=$(uname)

alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias -s js=vi
alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

alias g++='g++ -std=c++11'

alias xlog="~/.oh-my-zsh/custom/xlog.sh"

# gitignore 
function gi() { 
    curl -L -s https://www.gitignore.io/api/$@ ;
}

mkdir -p ~/.trash
alias rm=trash
alias r=trash
alias rl='ls ~/.trash'
alias ur=undelfile
alias ct=cleartrash

undelfile()
{
  mv -i ~/.trash/$@ ./
}
trash()
{
  mv $@ ~/.trash/
}

cleartrash()
{ 
  /bin/bash $_CONFIG_BASE/clear-trash.sh
} 

# mac
if [ "$currentOS" = "Darwin" ] ; then

else
  
fi
