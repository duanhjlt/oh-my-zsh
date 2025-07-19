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

#export LDFLAGS="-L/usr/local/opt/qt/lib"
#export CPPFLAGS="-I/usr/local/opt/qt/include"
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn
export FLUTTER_HOME=~/Workspace/flutter
export DART_HOME=~/Workspace/flutter/bin/cache/dart-sdk/bin

#export IDEA_VM_OPTIONS=/Users/duanhongjin/jetbra/vmoptions/idea.vmoptions

# PATH
export PATH=$PATH:~/.oh-my-zsh/custom/bin
export PATH=$PATH:/Library/Apple/usr/bin
#export PATH=$PATH:$GOBIN:$GOROOT/bin
export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:/opt/local/bin
export PATH=$PATH:/opt/local/sbin
export PATH=$PATH:/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources
export PATH=$PATH:/usr/libexec
#export PATH=$PATH:~/.fastlane/bin
export PATH=$PATH:/usr/local/mysql/bin
#export PATH=$PATH:~/repo/depot_tools
export PATH=$PATH:~/Workspace/flutter/bin
export PATH=$PATH:~/Library/Android/sdk/platform-tools
export PATH=$PATH:~/Library/Android/sdk/tools
#export PATH=$PATH:/usr/local/opt/qt/bin
export PATH=$PATH:/usr/local/protobuf/bin
#export PATH=$PATH:~/.pub-cache/bin
#export PATH=$PATH:~/Qt/5.15.1/clang_64/bin
#export PATH=$PATH:/usr/local/opt/dart@2.3/bin:
export PATH=$PATH:"/Applications/IntelliJ IDEA.app/Contents/plugins/maven/lib/maven3/bin"
#export PATH=$PATH:/Library/Frameworks/Python.framework/Versions/2.7/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# ruyb
# intel 芯片
if [ -d "/usr/local/opt/ruby/bin" ]; then
  export PATH=/usr/local/opt/ruby/bin:$PATH
  export LDFLAGS="-L/usr/local/opt/ruby/lib"
  export CPPFLAGS="-I/usr/local/opt/ruby/include"
  export PATH=`gem environment gemdir`/bin:$PATH
fi
# m1 silicon 芯片
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
  export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"
  export PATH=`gem environment gemdir`/bin:$PATH
fi

export XVM_ROOT=~/.xvm
[ -s "$XVM_ROOT/xvm" ] && . "$XVM_ROOT/xvm"   

#export GO111MODULE="auto"
export GOPROXY="https://goproxy.cn"
export GOPRIVATE=git.binforce.local/binforce/server/server-gomod
export GOINSECURE=git.binforce.local
export GOPATH=~/workspace/go
export PATH=$PATH:~/workspace/go/bin
export GEMINI_API_KEY="AIzaSyCr-EsJgc7t_gZ7xobbNLluPLAjX5fxipU"

export ANTHROPIC_AUTH_TOKEN=sk-m0LvgfKjdjS0D65R0MD00EupwphhVQcRa6xWFnVnMHNtAKIs
export ANTHROPIC_BASE_URL=https://anyrouter.top

#export http_proxy=http://127.0.0.1:7890
#export https_proxy=http://127.0.0.1:7890
else
# Linux
  
fi
