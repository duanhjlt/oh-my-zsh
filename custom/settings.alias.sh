alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias subl="'/Applications/Sublime Text.app/Contents/MacOS/Sublime Text'"
alias vscode="'/Applications/Visual Studio Code.app/Contents/MacOS/Electron'"
alias -s html=mate   # 在命令行直接输入后缀为 html 的文件名，会在 TextMate 中打开
alias -s rb=mate     # 在命令行直接输入 ruby 文件，会在 TextMate 中打开
#alias -s py=vi       # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js=vi
alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'

alias rm=trash
alias r=trash
alias rl='ls ~/.trash'
alias ur=undelfile
alias g++='g++ -std=c++11'
undelfile()
{
  mv -i ~/.trash/$@ ./
}
trash()
{
  mv $@ ~/.trash/
}

alias lg='lazygit'

# Pod
alias pod-update="pod update --verbose --no-repo-update"

# xdm
alias xdm="/Applications/XDM.app/Contents/MacOS/XDM do Release "
alias xdmd="/Applications/XDM.app/Contents/MacOS/XDM do Debug "
alias xdm2="/Applications/XDM2.app/Contents/MacOS/XDM do \"\" "

# emacs
EMACS_HOME=/Applications/Emacs.app/Contents/MacOS
# 在终端下打开文件,替换命令行默认的emacs
alias emacs="${EMACS_HOME}/Emacs -nw"
# GUI方式打开文件
alias emacsf="${EMACS_HOME}/bin/emacsclient -n"
