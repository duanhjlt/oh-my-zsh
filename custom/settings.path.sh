
# 设置mac crash分析的环境变量
export DEVELOPER_DIR="/Applications/Xcode.app/Contents/Developer"

# JAVA_HOME
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home"

[ -s "~/.nvm/nvm.sh" ] && . "~/.nvm/nvm.sh" #This loads nvm

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

if which swiftenv > /dev/null; then 
    eval "$(swiftenv init -)"; 
fi

# gitignore 
function gi() { 
    curl -L -s https://www.gitignore.io/api/$@ ;
}

# PATH
export PATH=~/bin:/usr/local/bin:$PATH
export PATH=/opt/local/bin:$PATH
export PATH=/opt/local/sbin:$PATH
export PATH=/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources:$PATH
export PATH=/usr/libexec:$PATH
export PATH=~/.fastlane/bin:$PATH
export PATH=~/Projects/Sources/pdfium/depot_tools:$PATH


