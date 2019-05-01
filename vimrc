" 不要使用vi的键盘模式，而是vim自己的 
set nocompatible 

" 侦测文件类型 
filetype on 
" 为特定文件类型载入相关缩进文件 
filetype indent on
" 载入文件类型插件 
filetype plugin on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 设定默认解码 
set fenc=utf-8 
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936 

" history文件中需要记录的行数 
set history=1000

" 在处理未保存或只读文件的时候，弹出确认 
set confirm 

" 与windows共享剪贴板 
set clipboard+=unnamed 

" 带有如下符号的单词不要被换行分割 
" set iskeyword+=_,$,@,%,#,- 

" 语法高亮 
syntax enable
syntax on 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文件设置 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
set autoread

" 不要生成swap文件，当buffer被丢弃的时候隐藏它 
setlocal noswapfile 
set bufhidden=hide 
" 不要备份文件（根据自己需要取舍） 
set nobackup 

" 字符间插入的像素行数目 
set linespace=0 

" 增强模式中的命令行自动完成操作 
set wildmenu 
" 智能补全
set completeopt=longest,menu

" 在状态行上显示光标所在位置的行号和列号 
set ruler 
set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%) 

" 命令行（在状态行下）的高度，默认为1，这里是2 
set cmdheight=2

" 使回格键（backspace）正常处理indent, eol, start等 
set backspace=2 

" 允许backspace和光标键跨越行边界 
" set whichwrap+=<,>,h,l 
set whichwrap-=b

" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位） 
set mouse=a 
set selection=exclusive 
set selectmode=mouse,key 

" 启动的时候不显示那个援助索马里儿童的提示 
set shortmess=atI 

" 通过使用: commands命令，告诉我们文件的哪一行被改变过 
set report=0 

" 不让vim发出讨厌的滴滴声 
set noerrorbells 

" 在被分割的窗口间显示空白，便于阅读 
set fillchars=vert:\ ,stl:\ ,stlnc:\ 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 搜索和匹配 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 高亮显示匹配的括号 
set showmatch 
" 匹配括号高亮的时间（单位是十分之一秒） 
" set matchtime=5 

" 在搜索的时候忽略大小写 
set smartcase 
" 不要高亮被搜索的句子（phrases） 
set hlsearch 
" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索） 
set incsearch 

" 输入:set list命令是应该显示些啥？ 
" set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ 

" 光标移动到buffer的顶部和底部时保持3行距离 
set scrolloff=3 

" 不要闪烁 
set vb t_vb= 

" 我的状态行显示的内容（包括文件类型和解码） 
set statusline=%F\ %m\ %r\ %h\ %w\ %y\ \[POS=%l,%v]\ [%p%%]\ \%{strftime(\"%d/%m/%y-%H:%M\")} 

" 总是显示状态行 
set laststatus=2 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 文本格式和排版 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" 自动格式化 
set formatoptions+=tcrqn 

set textwidth=80
set colorcolumn=+1

" 继承前一行的缩进方式，特别适用于多行注释 
set autoindent 
" 为C程序提供自动缩进 
set smartindent 
" 使用C样式的缩进 
set cindent 
" 在行和段开始处使用制表符 
set smarttab 

" 制表符为4 
set tabstop=4 
" 统一缩进为4 
set softtabstop=4 
set shiftwidth=4 
" 用空格代替制表符 
set expandtab 

" 不要换行 
set nowrap 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
set guioptions-=m

set number
set relativenumber

set guicursor+=a:blinkon0

" 配色方案
colorscheme desert

" gvim字体
"set guifont=Courier\ Regular\ 11

set foldenable
set foldmethod=manual

set cursorline

autocmd BufNewFile *.v 0r ~/.vim/vimtemplate/tmplate.txt
autocmd BufNewFile *.py 0r ~/.vim/vimtemplate/tempalte.txt
autocmd BufNewFile *.c 0r ~/.vim/vimtemplate/tempalte.txt
autocmd BufNewFile *.cpp 0r ~/.vim/vimtemplate/tempalte.txt
autocmd BufNewFile *.h 0r ~/.vim/vimtemplate/tempalte.txt

set lines=999
set columns=999
"au GuiEnter * call MaximizeWindow
"function! MaximizeWindow()
"	set lines=999
"	set columns=999
"endfunction
"autocmd GUIEnter * call system ('wmctrl -i -b add, maximized_vert, maximized_horz -r ',.v:winowwid)

