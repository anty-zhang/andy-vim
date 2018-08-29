"==========================================
" vim 窗口操作
" http://lazybing.github.io/blog/2016/07/07/how-to-use-vim/
"==========================================
" vim -o file1 file2  # 水平打开多个窗口
" vim -O file1 file2  # 垂直打开多个窗口
" split  # 水平打开一个窗口，新窗口也是编辑当前文件
" vsplit  # 水平打开一个窗口，新窗口也是编辑当前文件
" split file1 # 打开一个水平窗口.新窗口打开是file1
" vsplit file1 # 打开一个垂直窗口.新窗口打开是file1
" q/close # 关闭当前窗口
" only # 保留当前窗口，关闭所有其他窗口
" qall # 退出所有窗口
" wall  # 保存所有窗口
" tabnew #打开一个页标签
" tabnew file2 #打开一个页标签,并在标签中编辑file2
" tabc #关闭当前的tab
" tabo #关闭所有其他的tab
" tabs #查看所有打开的tab
" tabp #光标移到前一个tab
" tabn #光标移到后一个tab

" ctrl + w +  # 纵向扩大（行数增加）
" ctrl + w -  # 纵向减少（行数减少）
" res(ize) num  # 行数调整为num行
" res(ize) + num # 当前高度增加num行
" res(ize) - num # 当前高度减少num行
" :vertical res(ize) num 指定当前窗口为num列
" :vertical res(ize)+num 把当前窗口增加num列
" :vertical res(ize)-num 把当前窗口减少num列

" :shell 可以在不关闭vi的情况下切换到shell命令行
" :exit 从shell回到vi

"==========================================
" vim 光标移动
"==========================================
" 3fx # 向右查找三次x的位置
" Fx # 向左
" tx # 命令会停在搜索的字符x前
" Tx # 向左命令会停在搜索的字符x前
" 3w # 向右移动 3 个单字
" 3b # 向左移动 3 个单字

"==========================================
" vim 替换文本
"==========================================
" 简单替换表达式:[range]s/from/to/[flags]
" range:搜索范围，如果没有指定范围，则作用于当前行。
" :1,10s/from/to/表示在第 1 到第 10 行（包含第 1，第 10 行）之间搜索替换。
" :10s/from/to/表示只在第 10 行搜索替换。
" :%s/from/to/表示在所有行中搜索替换。
" 1,$s/from/to/同上。
" flags有如下四个选项：
" cconfirm,每次替换前询问。
" eerror,不显示错误。
" gglobe,不询问，整行替换。如果不加g选项，则只替换每行的第一个匹配到的字符串。
" iignore,忽略大小写。
" 这些选项可以合并使用，如cgi表示不区分大小写，整行替换，替换前询问。


"==========================================
" Initial Plugin 加载插件
"==========================================
" install Vundle bundles
"vimrc文件修改之后自动加载 windows
"vimrc文件修改之后自动加载 linux
"autocmd! bufwritepost _vimrc source %
"autocmd! bufwritepost .vimrc source %

" 修改leader键
let mapleader = ','
let g:mapleader = ','

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" ensure ftdetect et al work by including this after the Vundle stuff
filetype plugin indent on


"==========================================
" General Setting
"==========================================
"set runtimepath=~/.vim/,~/.vim/syntax,~/.vim/bundle,~/.vim/bundle/autoload,~/.vim/bundle/vim-colors-solarized,~/.vim/syntx,/etc/vim,/usr/share/vim/vimfiles,/usr/share/vim/addons,/opt/vim74/share/vim/vim74,~/.vim/after,/usr/share/vim/vim73,/usr/share/vim/vim73/colors,/usr/local/Cellar/vim/8.1.0250/share/vim/vim81

set runtimepath=~/.vim/,~/.vim/syntax,~/.vim/bundle,~/.vim/bundle/autoload,~/.vim/bundle/vim-colors-solarized,/usr/local/Cellar/vim/8.1.0250/share/vim/vim81,/usr/local/Cellar/vim/8.1.0250/share/vim/vim81/syntax

syntax on                        "开启语法高亮
"set guifont=Monaco:h20          "字体 && 字号
set history=2000                 "history存储容量
filetype on        		         "检测文件类型
filetype indent on               "针对不同的文件类型采用不同的缩进格式
filetype plugin on               "允许插件
filetype plugin indent on        "启动自动补全
set autoread          		     "文件修改之后自动载入。
set shortmess=atI       	     "启动的时候不显示那个援助索马里儿童的提示

" 备份,到另一个位置. 防止误删, 目前是取消备份
"set backup
"set backupext=.bak
"set backupdir=/tmp/vimbk/
set nobackup                   	 "取消备份。 视情况自己改
set noswapfile			 "关闭交换文件


"create undo file
if has('persistent_undo')
  set undolevels=1000         " How many undos
  set undoreload=10000        " number of lines to save for undo
  set undofile                " So is persistent undo ...
  set undodir=/tmp/vimundo/
endif

set wildignore=*.swp,*.bak,*.pyc,*.class,.svn
set cursorcolumn		" 突出显示当前行等
set cursorline          	" 突出显示当前行


"设置 退出vim后，内容显示在终端屏幕, 可以用于查看和复制
"好处：误删什么的，如果以前屏幕打开，可以找回
set t_ti= t_te=


"- 则点击光标不会换,用于复制
set mouse-=a             	" 鼠标暂不启用, 键盘党....

" 修复ctrl+m 多光标操作选择的bug，但是改变了ctrl+v进行字符选中时将包含光标下的字符
"set selection=exclusive
set selection=inclusive
set selectmode=mouse,key
" No annoying sound on errors
" 去掉输入错误的提示声音
set title                	  " change the terminal's title
set novisualbell		      " don't beep
set noerrorbells		      " don't beep
set t_vb=
set tm=500

" Remember info about open buffers on close"
set viminfo^=%

" For regular expressions turn magic on
set magic

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"https://github.com/tpope/vim-pathogen download address
"解压后将autoload目录都放在.vim目录下
"execute pathogen#infect()
call pathogen#infect()                      " 显示状态栏更多信息


"==========================================
" Display Settings 展示/排版等界面格式设置
"==========================================
set scrolloff=7                 " 在上下移动光标时，光标的上方或下方至少会保留显示的行数
" set winwidth=79

" 命令行（在状态行下）的高度，默认为1，这里是2
set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" Always show the status line - use 2 lines for the status bar
set laststatus=2

set nowrap                      "取消换行
set showmatch                   " 括号配对情况,跳转并高亮一下匹配的括号
" How many tenths of a second to blink when matching brackets
set matchtime=2
"设置文内智能搜索提示
set hlsearch                    " 高亮search命中的文本
set incsearch                   " 打开增量搜索模式,随着键入即时搜索
set ignorecase                  " 搜索时忽略大小写
" 有一个或以上大写字母时仍大小写敏感
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise

" 代码折叠
set foldenable
" 折叠方法
" manual    手工折叠
" indent    使用缩进表示折叠
" expr      使用表达式定义折叠
" syntax    使用语法定义折叠
" diff      对没有更改的文本进行折叠
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
set foldmethod=indent
set foldlevel=99

" 缩进配置
set smartindent   " Smart indent
set autoindent    " 打开自动缩进
" never add copyindent, case error   " copy the previous indentation on autoindenting

" tab相关变更
set tabstop=4     " 设置Tab键的宽度        [等同的空格个数]
set shiftwidth=4  " 每一次缩进对应的空格数
set softtabstop=4 " 按退格键时可以一次删掉4个空格
set smarttab      " 按退格键时可以一次删掉4个空格
set expandtab     " 将Tab自动转化成空格    [需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set shiftround    " 缩进时，取整 use multiple of shiftwidth when indenting with '<' and '>'

" A buffer becomes hidden when it is abandoned
set hidden
set wildmode=list:longest
set ttyfast

" 00x增减数字时使用十进制
set nrformats=


"==========================================
" 绝对行号和相对行号的配置
" 可用 nj  nk   进行跳转 5j   5k 上下跳5行
"==========================================
"显示当前的行号列号：
"set ruler                           "显示当前的行号列号：
set showcmd                         "在状态栏显示正在输入的命令
set showmode                        "左下角显示当前vim模式

set relativenumber number
au FocusLost * :set norelativenumber number
au FocusGained * :set relativenumber
" 插入模式下用绝对行号, 普通模式下用相对
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set relativenumber
function! NumberToggle()
  if(&relativenumber == 1 && &number == 1)
    set norelativenumber nonumber
  elseif(&relativenumber == 1)
    set norelativenumber number
  elseif(&number == 1)
    set relativenumber number
  else
    set relativenumber nonumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>


"==========================================
" FileEncode Settings 文件编码,格式
"==========================================
set encoding=utf-8                  " 设置新文件的编码为 UTF-8
" 自动判断编码时，依次尝试以下编码：
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
"set langmenu=zh_CN.UTF-8
"set enc=2byte-gb18030
" 下面这句只影响普通模式 (非图形界面) 下的 Vim
set termencoding=utf-8
set ffs=unix,dos,mac                " Use Unix as the standard file type
set formatoptions+=m                " 如遇Unicode值大于255的文本，不必等到空格再折行
set formatoptions+=B                " 合并两行中文时，不在中间加空格

"==========================================
" 自动补全配置
"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
"==========================================
set completeopt=longest,menu
"let g:clang_complete_copen=1
"let g:clang_periodic_quickfix=1
"let g:clang_snippets=1
"let g:clang_close_preview=1
"let g:clang_use_library=1
"let g:clang_user_options='-stdlib=libc++ -std=c++11 -IIncludePath'

"==========================================
" others 其它设置
"==========================================
set wildmenu                                " 增强模式中的命令行自动完成操作
set wildignore=*.o,*~,*.pyc,*.class         " Ignore compiled files

"离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"回车即选中当前项
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

" if this not work ,make sure .viminfo is writable for you
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"==========================================
" Search HotKey Settings  搜索快捷键设置
"==========================================
" download http://www.vim.org/scripts/script.php?script_id=311
" install 把grep.vim 文件放到 ~/.vim/plugin
" Grep 按照指定的规则在指定的文件中查找
" Rgrep 递归的grep
" Bgrep 在所有打开的缓冲区中查找
" :cc                显示详细错误信息 ( :help :cc )
" :cp                跳到上一个错误 ( :help :cp )
" :cn                跳到下一个错误 ( :help :cn )
" :cl                列出所有错误 ( :help :cl )
" :cw                如果有错误列表，则打开quickfix窗口 ( :help :cw )
" :col               到前一个旧的错误列表 ( :help :col )
" :cnew              到后一个较新的错误列表 ( :help :cnew ) 

nnoremap <silent> <leader>ge :Grep<CR>
nnoremap <silent> <leader>rg :Rgrep<CR>
nnoremap <silent> <leader>bg :Bgrep<CR>

"==========================================
" c/h文件间相互切换 -- 插件: A
"==========================================
" download http://www.vim.org/scripts/script.php?script_id=31
" install 将a.vim 放到 ~/.vim/plugin 文件夹中
" :A    在新Buffer中切换到c/h文件
" :AS   横向分割窗口并打开c/h文件
" :AV   纵向分割窗口并打开c/h文件
" :AT   新建一个标签页并打开c/h文件
nnoremap <silent> <F12> :A<CR>


"==========================================
" HotKey Settings  自定义快捷键设置
"==========================================
" 主要按键重定义
" 关闭方向键, 强迫自己用 hjkl
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

"Treat long lines as break lines (useful when moving around in them)
"se swap之后，同物理行上线直接跳
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

" F1 - F6 设置
" F1 废弃这个键,防止调出系统帮助
" F2 行号开关，用于鼠标复制代码用
" F3 显示可打印字符开关
" F4 换行开关
" F5 粘贴模式paste_mode开关,用于有格式的代码粘贴
" F6 语法开关，关闭语法可以加快大文件的展示

" I can type :help on my own, thanks.  Protect your fat fingers from the evils of <F1>
noremap <F1> <Esc>"

""为方便复制，用<F2>开启/关闭行号显示:
function! HideNumber()
  if(&relativenumber == &number)
    set relativenumber! number!
  elseif(&number)
    set number!
  else
    set relativenumber!
  endif
  set number?
endfunc
nnoremap <F2> : call HideNumber()<CR>
nnoremap <F3> :set list! list?<CR>
nnoremap <F4> :set wrap! wrap?<CR>
"set paste
set pastetoggle=<F5>
au InsertLeave * set nopaste                    " disbale paste mode when leaving insert mode
nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>


"Smart way to move between windows 分屏窗口移动
map <c-j> <c-w>j
map <c-k> <C-w>k
map <c-h> <C-w>h
map <c-l> <c-w>l

" Go to home and end using capitalized directions
noremap H ^
noremap L $


"Map ; to : and save a million keystrokes
" ex mode commands made easy 用于快速进入命令行
nnoremap ; :


" 命令行模式增强，ctrl - a到行首， -e 到行尾
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>


" 搜索相关
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
" 进入搜索Use sane regexes"
nnoremap / /\v
vnoremap / /\v

"Keep search pattern at the center of the screen."
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" switch # *
nnoremap # *
nnoremap * #

" 去掉搜索高亮
noremap <silent><leader>/ :nohls<CR>

" tab/buffer相关
"Use arrow key to change buffer"
" TODO: 如何跳转到确定的buffer?
" :b1 :b2   :bf :bl
nnoremap [b :bprevious<cr>
nnoremap ]b :bnext<cr>
noremap <left> :bp<CR>
noremap <right> :bn<CR>


" tab 操作
" TODO: ctrl + n 变成切换tab的方法
" http://vim.wikia.com/wiki/Alternative_tab_navigation
" http://stackoverflow.com/questions/2005214/switching-to-a-particular-tab-in-vim
"map <C-2> 2gt
map <leader>th :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tj :tabnext<cr>
map <leader>tk :tabprev<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprev<cr>
map <leader>te :tabedit<cr>
map <leader>td :tabclose<cr>
map <leader>tm :tabm<cr>

" 新建tab  Ctrl+t
nnoremap <S-t>     :tabnew<CR>
inoremap <S-t>     <Esc>:tabnew<CR>
" TODO: 配置成功这里, 切换更方便, 两个键
" nnoremap <C-S-tab> :tabprevious<CR>
" nnoremap <C-tab>   :tabnext<CR>
" inoremap <C-S-tab> <Esc>:tabprevious<CR>i
" inoremap <C-tab>   <Esc>:tabnext<CR>i
" nnoremap <C-Left> :tabprevious<CR>
" nnoremap <C-Right> :tabnext<CR>

" normal模式下切换到确切的tab
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>


" Toggles between the active and last active tab "
" The first tab is always 1 "
"let g:last_active_tab = 1
"" nnoremap <leader>gt :execute 'tabnext ' . g:last_active_tab<cr>
"nnoremap <silent> <c-l> :execute 'tabnext ' . g:last_active_tab<cr>
"vnoremap <silent> <c-l> :execute 'tabnext ' . g:last_active_tab<cr>
"autocmd TabLeave * let g:last_active_tab = tabpagenr()


"选中及操作改键
"Reselect visual block after indent/outdent.调整缩进后自动选中，方便再次操作
vnoremap < <gv
vnoremap > >gv

" y$ -> Y Make Y behave like other capitals
map Y y$

" select all
map <Leader>sa ggVG"

" select block
nnoremap <leader>v V`}

" w!! to sudo & write a file
cmap w!! w !sudo tee >/dev/null %

" kj 替换 Esc
inoremap kj <Esc>

" 滚动Speed up scrolling of the viewport slightly
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>


"Jump to start and end of line using the home row keys
" 增强tab操作, 导致这个会有问题, 考虑换键
"nmap t o<ESC>k
"nmap T O<ESC>j

" Quickly close the current window
nnoremap <leader>q :q<CR>

" Swap implementations of ` and ' jump to markers
" By default, ' jumps to the marked line, ` jumps to the marked line and
" column, so swap them
nnoremap ' `
nnoremap ` '

" remap U to <C-r> for easier redo
nnoremap U <C-r>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>


"==========================================
" FileType Settings  文件类型设置
"==========================================

" Python 文件的一般设置，比如不要 tab 等
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai

" 保存python文件时删除多余空格
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,java,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()


" 定义函数AutoSetFileHead，自动插入文件头
" c++的头还没有定义
autocmd BufNewFile *.sh,*.py,*.cpp,*.c,*.h exec ":call AutoSetFileHead()"
function! AutoSetFileHead()
    "如果文件类型为.sh文件
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
    endif

    "如果文件类型为python
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call append(1, "\# encoding: utf-8")
    elseif &filetype == 'sh'
        call setline(1,"\#!/bin/bash")
        call append(line("."), "")
    elseif &filetype == 'ruby'
        call setline(1,"#!/usr/bin/env ruby")
        call append(line("."),"# encoding: utf-8")
        call append(line(".")+1, "")
    else
        call setline(1, "/*************************************************************************")
        call append(line("."),   "  > File Name: ".expand("%"))
        call append(line(".")+1, "  > Author: ")
        call append(line(".")+2, "  > Mail: ")
        " call append(line(".")+3, "  > Created Time: ".strftime("%c"))
        call append(line(".")+3, "  > Created Time: ".strftime("%Y-%m-%d %H:%M:%S"))
        call append(line(".")+4, " ************************************************************************/")
        call append(line(".")+5, "")
    endif

    if expand("%:e") == 'cpp'
        call append(line(".")+6, "#include <iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include <stdio.h>")
        call append(line(".")+7, "")
    endif
    if expand("%:e") == 'h'
        call append(line(".")+6, "#ifndef _".toupper(expand("%:r"))."_H_")
        call append(line(".")+7, "#define _".toupper(expand("%:r"))."_H_")
        call append(line(".")+8, "#endif")
    endif
    if &filetype == 'java'
        call append(line(".")+6,"public class ".expand("%:r"))
        call append(line(".")+7,"")
    endif

    normal G
    normal o
    normal o
endfunc

" F10 to run python script
nnoremap <buffer> <F10> :exec '!python' shellescape(@%, 1)<cr>
"==========================================
" C and C++ 编译和运行快捷键配置
"==========================================
" F5编译和运行C程序，F6编译和运行C++程序
" 请注意，下述代码在windows下使用会报错
" 需要去掉./这两个字符

""""" C的编译和运行
""""map <F7> :call CompileRunGcc()<CR>
""""func! CompileRunGcc()
""""exec "w"
""""exec "!gcc % -o %<"
""""exec "! ./%<"
""""endfunc

" C++的编译和运行
map <F7> :call CompileRunGpp()<CR>
func! CompileRunGpp()
exec "w"
"exec "!g++ % -o %<"
exec "!g++ *.cpp -o %<"
exec "! ./%<"
endfunc

"==========================================
" Theme Settings  主题设置
"==========================================

" Set extra options when running in GUI mode
if has("gui_running")
    set guifont=Monaco:h14
    if has("gui_gtk2")   "GTK2
        set guifont=Monaco\ 12, Monospace\ 12
    endif
    set guioptions-=T
    set guioptions+=e
    set guioptions-=r
    set guioptions-=L
    set guitablabel=%M\ %t
    set showtabline=1
    set linespace=2
    set noimd
    set t_Co=256
endif

"Vim的颜色主题在/usr/share/vim/vim73/colors文件夹里
"vim后在normal模式下输入“：colorscheme”查看当前的主题
syntax enable
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
"set background=dark
"colorscheme solarized
"colorscheme molokai
"colorscheme desert          # good
"colorscheme blue
"colorscheme darkblue
"colorscheme default        # good
"colorscheme delek          # good
colorscheme desert
"colorscheme elflord
"colorscheme evening
"colorscheme koehler        # good
"colorscheme morning        # good
"colorscheme murphy
"colorscheme pablo
"colorscheme peachpuff
"colorscheme ron
"colorscheme shine
"colorscheme slate          # good
"colorscheme torte
"colorscheme zellner
let g:solarized_termcolors=256
set t_Co=256


"设置标记一列的背景颜色和数字一行颜色一致
"hi! link SignColumn   LineNr
"hi! link ShowMarksHLl DiffAdd
"hi! link ShowMarksHLu DiffChange

"" for error highlight，防止错误整行标红导致看不清
"highlight clear SpellBad
"highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
"highlight clear SpellCap
"highlight SpellCap term=underline cterm=underline
"highlight clear SpellRare
"highlight SpellRare term=underline cterm=underline
"highlight clear SpellLocal
"highlight SpellLocal term=underline cterm=underline

"==========================================
" ctags help
"==========================================
" ctags-R --languages=c++ --langmap=c++:+.inl -h +.inl --c++-kinds=+px--fields=+aiKSz --extra=+q --exclude=lex.yy.cc --exclude=copy_lex.yy.cc

" -R 表示扫描当前目录及所有子目录（递归向下）中的源文件
" --languages=c++ 只扫描文件内容判定为c++的文件——即ctags观察文件扩展名，如果扩展名对应c++，则扫描该文件。反之如果某个文件叫aaa.py（python文件），则该文件不会被扫描。
" --langmap=c++:+.inl 告知ctags，以inl为扩展名的文件是c++语言写的，在加之上述2中的选项，即要求ctags以c++语法扫描以inl为扩展名的文件。
"-h +.inl 告知ctags，把以inl为扩展名的文件看作是头文件的一种（inl文件中放的是inline函数的定义，本来就是为了被include的）。这样ctags在扫描inl文件时，就算里面有static的全局变量，ctags在记录时也不会标明说该变量是局限于本文件的（见第一节描述）。
"--c++-kinds=+px 记录类型为函数声明和前向声明的语法元素
" --fields=+aiKSz 控制记录的内容
" --extra=+q 让ctags额外记录一些东西
" --exclude=lex.yy.cc 
"--exclude=copy_lex.yy.cc 告知ctags不要扫描名字是这样的文件。还可以控制ctags不要扫描指定目录，这里就不细说了。
" -f tagfile：指定生成的标签文件名，默认是tags. tagfile指定为 - 的话，输出到标准输出。
" map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
" imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>

" ctags基本命令
" # $ctags –R * ($为Linux系统Shell提示符,这个命令上面已经有所介绍)
" # $ vi –t tag (请把tag替换为您欲查找的变量或函数名)
" # :ts(ts助记字：tagslist, “:”开头的命令为VI中命令行模式命令)
" # :tp(tp助记字：tagspreview)---此命令不常用，可以不用记
" # :tn(tn助记字：tagsnext) ---此命令不常用，可以不用记
" # Ctrl+ ]跳到光标所在函数或者结构体的定义处
" # Ctrl+ T返回查找或跳转

" set tags=~/.ctags/project
" set autochdir

source ~/.mycompany.vimrc


