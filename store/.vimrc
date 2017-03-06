" alexander's vimrc settings

syn on                  "语法支持
set laststatus=2        "始终显示状态栏
set tabstop=4           "一个制表符的长度
set softtabstop=4       "一个制表符的长度
set shiftwidth=4        "一个缩进的长度
set expandtab           "使用空格代表制表符
set smarttab            "智能制表符
set autoindent          "自动缩进
set smartindent         "智能缩进
set number              "显示行号
set ruler               "显示位置指示器
set backupdir=/tmp      "设置备份文件目录
set directory=/tmp      "设置临时文件目录
set ignorecase          "检索时忽略大小写
set hls                 "检索时高亮显示匹配项
set helplang=cn         "帮助系统设置为中文
set foldmethod=syntax   "代码折叠
"set nowrap              "关闭自动折行

set synmaxcol=256

" encoding
"set fileencodings=utf-8,gb2312,gbk,gb18030
"set termencoding=utf-8
"set fileformats=unix
"set encoding=prc

" html and css
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType jsp set omnifunc=htmlcomplete#CompleteTags
autocmd FileType htm set omnifunc=htmlcomplete#CompleteTags
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags 

"插件管理器 pathogen
"call pathogen#infect()

"taglist
"let Tlist_Show_One_File = 1            "只显示当前文件的taglist，默认是显示多个
"let Tlist_Exit_OnlyWindow = 1          "如果taglist是最后一个窗口，则退出vim
"let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist
"let Tlist_GainFocus_On_ToggleOpen = 1  "打开taglist时，光标保留在taglist窗口
"let Tlist_Ctags_Cmd='/usr/local/bin/ctags'  "设置ctags命令的位置
"nnoremap <leader>tl : Tlist<CR>        
                                        "设置关闭和打开taglist窗口的快捷键
