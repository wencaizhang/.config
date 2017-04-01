set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/.vim/bundle/vundle/
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'powerline/powerline'	" 增强状态栏
Plugin 'scrooloose/nerdtree'	" 目录树
Plugin 'scrooloose/nerdcommenter'	" 快速注释代码
Plugin 'gorodinskiy/vim-coloresque' " 高亮显示颜色代码 
Plugin 'altercation/vim-colors-solarized' "	主题
"Plugin 'Valloric/MatchTagAlways' "匹配标签
Plugin 'mattn/emmet-vim'	" emmet
"Plugin 'tpope/vim-markdown'  " 高亮markdown
"Plugin 'alvan/vim-closetag'  " tag 自动补全
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"NERDTree快捷键
map <C-n> :NERDTreeToggle<CR>
" NERDTree.vim
let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=25
let g:NERDTreeShowLineNumbers=1
let g:neocomplcache_enable_at_startup = 1


" 注释
map <c-/> ,cn<CR>
let g:NERDTrimTrailingWhitespace = 1

" 启动vim自动打开 NERDTree
autocmd VimEnter * NERDTree

"打开新的buffer时自动定位到编辑窗口
autocmd VimEnter * wincmd p



" 基础设置
" ===========
" 关闭兼容模式，compatible 是布尔型型的选项，在前面加上 no 代表关闭状态
set nocompatible

let mapleader = ","

filetype on 	"文件类型检测
syntax enable 	"打开语法高亮
set number 	"显示行号
set go= 	"不显示图形按钮
set cursorline 	"高亮显示当前行
set guifont=Consolas:h16  	"设置字体及大小
colorscheme desert 		"设置配色方案
set fileencodings=utf-8,gbk	" 打开已有文件时使用的编码
set fenc=utf-8			" 保存文件时使用的编码
set background=dark	" dark 是暗色系，light 是亮色系
colorscheme solarized


" 缩进======
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
set noexpandtab 

set smartindent
" 打开自动缩进，缩进效果回收 smartindent 的影响
set autoindent 

set cindent
" ======缩进

set backspace=indent,eol,start


" 在输入成对的括号是，vim 会跳转并高亮一下匹配的括号，然后回到正在输入的位置
set showmatch

" set showmatch 跳转并高亮的时间设置，1 表示 1/10 秒
set matchtime=1

" 标尺，在屏幕下方显示行号和列号
set ruler

" 打开搜索高亮模式，若搜索找到匹配项就高亮显示所有匹配项
set hlsearch

" 打开增量搜索模式，Vim 会即时匹配你当前输入的内容，这样会给你更好的搜索反馈，
" 不过你还是要在最后输入 <CR>（回车）来确认你的搜索内容的
set incsearch

" 搜索时忽略大小写，可以用 \C 标识临时开启大小写敏感模式
set ignorecase

"Change work dir to current dir
"在终端里使用 Vim 打开某一文件时，会默认将当前目录作为 Vim 的工作目录，
"但是在使用 gvim 时，如果从桌面环境提供的文件管理器中直接打开某一文本文件，gvim 的工作目录默认是 $HOME。
"下面自动将 Vim 工作目录迁移到所打开文本文件的目录下
autocmd BufEnter * cd %:p:h

" 启动时自动最大化
autocmd GUIEnter * simalt ~x

" 在上下移动光标时，光标的上方和下方至少会保留的行数
set scrolloff=3

" 将 Tab 符号变成 空格
set expandtab

" tab 字符所代表的空格数
set tabstop=2

" softtabstop 会影响 <BS> 删除的空格数，但不是用 <SPACE> 插入的空格，而是 <TAB> 插入的空格。所以我们总是把 softtabstop 设定成和 tabstop 一样的数值，这样无论是用 <TAB> 插入缩进还是用 <BS> 删除缩进，其行为总是一样的。

" 但是对于使用 <SPACE> 输入的空格，哪怕是连续输入的若干个空格，<BS> 还是会一个一个的删除。

set softtabstop=2

" smarttab 要和后面的 shiftwidth 配合来用，它只作用于行首位置。当 smarttab 开启时，在行首键入 <TAB> 会填充 shiftwidth 设定的数值，在其他地方则填充 tabstop 设定的数值；当 smarttab 关闭时，无论在哪里键入 <TAB>，都会填充 tabstop 设定的数值。

" 所以，如果开启 smarttab，然后 shiftwidth 和 tabstop 设定不一样的数值，比如一个是 8 一个是 4，那么在行首键入 <TAB> 会产生 8 个字符的空白，而在其他地方键入 <TAB> 则产生 4 个字符的空白。这常常用来控制 Continuation Indent 的行为，有时也叫做 Indentation for Wrapped Lines 或者 Wrapped Line Indentation。
set smarttab

set shiftwidth=2

" list 开启对于制表符（tab）、行尾空格符（trail）、行结束符（eol）等等特殊符号的回显，
" 有助于你观察这些特殊符号的状态，精确地控制文本的编辑。
" set list listchars=eol:?,tab:?\ ,trail:.,

" 关闭自动备份，避免出现 ~ 文件
set nobackup 
