# vim-_vimrc
# vim 配置文件
## 基本配置（不涉及插件）

> 英文状态的双引号，表示注释

```vimscript
" 关闭兼容模式，compatible 是布尔型型的选项，在前面加上 no 代表关闭状态
set nocompatible

let mapleader = ","

filetype on     "文件类型检测
syntax enable 	"打开语法高亮
set number 	    "显示行号
set go= 	    "不显示图形按钮
set cursorline 	"高亮显示当前行
set guifont=Consolas:h16  	"设置字体及大小
set fileencodings=utf-8,gbk	"打开已有文件时使用的编码
set fenc=utf-8              "保存文件时使用的编码
set background=dark         " dark 是暗色系，light 是亮色系

colorscheme desert 		"设置配色方案(vim 自带配色)

" 关闭自动备份，避免出现 带有~符号的文件
set nobackup 

" 启动时自动最大化
autocmd GUIEnter * simalt ~x

" 打开搜索高亮模式，若搜索找到匹配项就高亮显示所有匹配项
set hlsearch

" 搜索时忽略大小写，可以用 \C 标识临时开启大小写敏感模式
set ignorecase

" 打开增量搜索模式，Vim 会即时匹配你当前输入的内容，这样会给你更好的搜索反馈，
" 不过你还是要在最后输入 <CR>（回车）来确认你的搜索内容的
set incsearch

" 在输入成对的括号是，vim 会跳转并高亮一下匹配的括号，然后回到正在输入的位置
set showmatch

" set showmatch 跳转并高亮的时间设置，1 表示 1/10 秒
set matchtime=1

" 标尺，在屏幕下方显示行号和列号
set ruler

" list 开启对于制表符（tab）、行尾空格符（trail）、行结束符（eol）等等特殊符号的回显，
" 有助于你观察这些特殊符号的状态，精确地控制文本的编辑。
+++++---------
+++++---------
```
