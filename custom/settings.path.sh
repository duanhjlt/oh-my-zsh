export CLOUDSDK_CORE_PROJECT="richard-prox2"

#export GOPATH=/Users/duanhongjin/go
#export GOPATH=~/go
export GOPATH=D:/workspace/go
export GOROOT="C:/go"
export GOBIN=$GOPATH/bin

# gitignore 
function gi() { 
    curl -L -s https://www.gitignore.io/api/$@ ;
}

export GOPROXY=https://goproxy.cn
export GOSUMDB=sum.golang.org

