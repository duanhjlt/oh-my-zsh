
# 设置mac crash分析的环境变量
export DEVELOPER_DIR="/Applications/Xcode.app/Contents/Developer"

# JAVA_HOME
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_191.jdk/Contents/Home"

export CLOUDSDK_CORE_PROJECT="richard-prox2"

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
export PATH=$PATH:~/bin:/usr/local/bin
export PATH=$PATH:/opt/local/bin
export PATH=$PATH:/opt/local/sbin
export PATH=$PATH:/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources
export PATH=$PATH:/usr/libexec
export PATH=$PATH:~/.fastlane/bin
export PATH=$PATH:/usr/local/mysql/bin
export PATH=$PATH:~/repo/depot_tools
export PATH=$PATH:~/Projects/Sources/flutter/bin
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
