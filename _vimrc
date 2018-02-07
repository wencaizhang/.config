set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function! MyDiff()
"  let mapleader = ";"
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

" 基本设置============================================

let mapleader = "\<Space>"	" Leader 映射到空格键

" 按下 tab 标签补全
" let g:user_emmet_expandabbr_key = '<Tab>'
" let g:user_emmet_expandabbr_key = '<F2>'
let g:user_emmet_expandabbr_key = '<c-e>'

syntax enable	" 打开语法高亮

syntax on	" 文件类型检测

set go=	" 不显示图形按钮

set nobackup	" 取消自动备份

set cursorline	" 高亮显示光标所在行

set number	" 显示行号，可简写为 set nu

" set nonu	"关闭行号

set relativenumber	"显示相对行号，可简写为 set rnu

" set nornu	"关闭相对行号

set numberwidth=5	"设置行号宽度

set guifont=Source_Code_Pro:h12	" 设置字体
" set guifont=Courier_new:h12:b:cDEFAULT	" 设置字体



colorscheme desert	" 配色方案

set background=light	" 背景色
set background=dark


" 打开已有文件时使用的编码
set fileencodings=utf-8,gbk

" 保存文件时使用的编码
set fenc=utf-8


autocmd BufWritePost $MYVIMRC source $MYVIMRC	" 让配置变更立即生效

autocmd GUIEnter * simalt ~x	" 启动时自动最大化

set scrolloff=3	
" ============================================基本设置

" 括号==========================================

"显示匹配的括号
set showmatch

" 跳转并高亮的时间设置，1 表示 1/10 秒
set matchtime=1

" 括号自动补全，大括号会补全并换行缩进
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
" inoremap { {<CR>}<ESC>O
" ==========================================括号


" 注释
map <c-/> ,cn<CR>
let g:NERDTrimTrailingWhitespace = 1

"   选择要注释的行  shift+v
"   注释单行或者选中行  ,cc
"   多行注释    ,cm
"   解开注释    ,cu
"   在注释和取消注释之间切换    ,ci

" f11 上一个主题	f12 下一个主题
map <F12> :NextColorScheme<CR>
imap <F12> <ESC> :NextColorScheme<CR>
map <F11> :PreviousColorScheme<CR>
imap <F11> <ESC> :PreviousColorScheme<CR>
" 执行 :colorscheme 可以查看当前主题

" 开启新行时使用智能自动缩进
set smartindent
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
" 自动保存
" 设定 doc 文档目录 中文文档
let helptags=$VIM."/vimfiles/doc"
set helplang=cn


set list	"行尾、制表符等空白字符都会用特殊符号显示出来
" set nolist	关闭显示空白字符

" 设置tab和空格样式：Tab显示为|(竖线)，将行尾的空格显示为-(减号)
set lcs=tab:\|\ ,nbsp:%,trail:-

" 设定行首tab为灰色
	highlight LeaderTab guifg=#666666
" 匹配行首tab
match LeaderTab /^\t/

" Vundle ============================================
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Lokaltog/vim-powerline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'

call vundle#end()            " required
filetype plugin indent on    " required
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" Put your non-Plugin stuff after this line

" ============================================Vundle

"NERDTree快捷键=====================================

nmap <F2> :NERDTree  <CR>	" 打开目录

nnoremap <F2> :exe 'NERDTreeToggle' <CR>	" 打开和关闭目录，两种状态之间切换

" 关闭vim时，如果打开的文件除了NERDTree没有其他文件时，它自动关闭，减少多次按:q!。
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd vimenter * NERDTree	" 启动 vim 时自动打开 NERDTree

autocmd VimEnter * wincmd p	"打开新的 buffer时自动定位到编辑窗口

let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=25
let g:NERDTreeShowLineNumbers=1
let g:neocomplcache_enable_at_startup = 1
let NERDTreeChDirMode=2  "选中root即设置为当前目录
let NERDTreeQuitOnOpen=1 "打开文件时关闭树
let NERDTreeShowBookmarks=1 "显示书签
let NERDTreeMinimalUI=1 "不显示帮助面板
let NERDTreeDirArrows=1 "目录箭头 1 显示箭头  0传统+-|号

"=====================================NERDTree快捷键

"colorscheme solarized	" 需手动安装
colorscheme molokai	" 需手动安装


" NERDTress File highlighting======================
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
" ======================NERDTress File highlighting

" NERD Commenter===================================
" <leader>cc   加注释
" <leader>cu   解开注释

" <leader>c<space>  加上/解开注释, 智能判断
" <leader>cy   先复制, 再注解(p可以进行黏贴)
" ===================================NERD Commenter
