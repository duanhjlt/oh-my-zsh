_CONFIG_BASE=$HOME/.oh-my-zsh/custom

currentOS=$(uname)

alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
#alias -s js=vi
#alias -s c=vi
#alias -s java=vi
#alias -s txt=vi
#alias -s gz='tar -xzvf'
#alias -s tgz='tar -xzvf'
#alias -s zip='unzip'
#alias -s bz2='tar -xjvf'

alias g++='g++ -std=c++11'

alias xlog="~/.oh-my-zsh/custom/xlog.sh"

# gitignore 
function gi() { 
    curl -sLw n https://www.toptal.com/developers/gitignore/api/$@ ;
}

mkdir -p ~/.trash
alias rm=trash
alias r=trash
alias rl='ls ~/.trash'
alias ct=cleartrash

trash() {
  local target_dir="$HOME/.trash"
  mkdir -p "$target_dir"

  local files=()
  local has_files=false

  # 1. 过滤掉所有以 - 开头的参数（如 -rf, -f）
  for arg in "$@"; do
    [[ "$arg" == -* ]] && continue
    files+=("$arg")
    has_files=true
  done

  # 2. 如果没有输入文件路径，直接报错提示
  if [ "$has_files" = false ]; then
    echo "trash: missing operand" >&2
    return 1
  fi

  # 3. 循环处理每个文件
  for f in "${files[@]}"; do
    # 检查文件是否存在
    if [ ! -e "$f" ]; then
      echo "trash: $f: No such file or directory" >&2
      continue
    fi

    local base_name=$(basename "$f")
    local dest="$target_dir/$base_name"

    # 4. 解决“错误被吞”的核心：处理同名冲突
    # 如果回收站已有同名文件，自动重命名（加时间戳），防止 mv -n 导致的静默失败
    if [ -e "$dest" ]; then
      local suffix=$(date +%H%M%S)
      dest="${dest}_${suffix}"
    fi

    # 执行移动操作
    if mv "$f" "$dest"; then
      echo "Deleted: '$f' (moved to ~/.trash)"
    else
      echo "trash: failed to move '$f'" >&2
    fi
  done
}

cleartrash()
{ 
  /bin/bash $_CONFIG_BASE/clear-trash.sh
} 

# mac
if [ "$currentOS" = "Darwin" ] ; then
alias code="/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron"
alias jd-ui="/Users/duanhongjin/Workspace/sourcecode/java/jd-gui/build/libs/run.sh"
alias goland="/Applications/GoLand.app/Contents/MacOS/goland"
alias idea="/Applications/IntelliJ\ IDEA.app/Contents/MacOS/idea"
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
alias tailscale-up="/Applications/Tailscale.app/Contents/MacOS/Tailscale up --login-server=http://120.55.165.127:10086 --accept-routes=true --accept-dns=true"
#alias python2="/Library/Frameworks/Python.framework/Versions/2.7/bin/python2"
#alias pip2="/Library/Frameworks/Python.framework/Versions/2.7/bin/pip2"
#alias uvicorn="/Users/duanhongjin/Library/Python/3.9/bin/uvicorn"
#alias pipreqs="~/Library/Python/3.9/bin/pipreqs"
#alias huggingface-cli="~/Library/Python/3.9/bin/huggingface-cli"
else
  
fi

