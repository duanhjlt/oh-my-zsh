currentOS=$(uname)

# mac
if [ "$currentOS" = "Darwin" ] ; then

# 设置mac crash分析的环境变量
#export DEVELOPER_DIR="/Applications/Xcode.app/Contents/Developer"

# JAVA_HOME
#export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home"
export ANDROID_HOME=~/Library/Android/sdk/
export ANDROID_NDK_HOME=~/Library/Android/sdk/ndk/ndk-link

if which swiftenv > /dev/null; then 
    eval "$(swiftenv init -)"; 
fi

else
# linux
  
fi

export PATH=$PATH:~/bin:/usr/local/bin

# mac
if [ "$currentOS" = "Darwin" ] ; then

export PATH=$PATH:~/.oh-my-zsh/custom/bin
export PATH=$PATH:/Library/Apple/usr/bin
# PATH
export PATH=$PATH:$GOBIN:$GOROOT/bin
export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:/opt/local/bin
export PATH=$PATH:/opt/local/sbin
export PATH=$PATH:/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources
export PATH=$PATH:/usr/libexec
#export PATH=$PATH:~/.fastlane/bin
export PATH=$PATH:/usr/local/mysql/bin
#export PATH=$PATH:~/repo/depot_tools
#export PATH=$PATH:~/Projects/flutter/bin
export PATH=$PATH:~/Library/Android/sdk/platform-tools
export PATH=$PATH:~/Library/Android/sdk/tools
export PATH=/usr/local/opt/qt/bin:$PATH
export PATH=/usr/local/protobuf/bin:$PATH
#export PATH=$PATH:~/.pub-cache/bin
#export PATH=$PATH:~/Qt/5.15.1/clang_64/bin
#export PATH=/usr/local/opt/dart@2.3/bin:$PATH
export LDFLAGS="-L/usr/local/opt/qt/lib"
export CPPFLAGS="-I/usr/local/opt/qt/include"
#export PUB_HOSTED_URL=https://pub.flutter-io.cn
#export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
#export FLUTTER_HOME=~/Projects/flutter
#export DART_HOME=~/Projects/flutter/bin/cache/dart-sdk/bin
export GO111MODULE="auto"
export GOPROXY="https://goproxy.cn"
export IDEA_VM_OPTIONS=/Users/duanhongjin/SynologyDrive/Software/mac/jetBra/vmoptions/idea.vmoptions

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source ~/.gvm/scripts/gvm

else
# Linux
  
fi
