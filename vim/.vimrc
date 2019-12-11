set nocompatible
syntax on
set showcmd
set mouse=a
set encoding=utf-8
set t_Co=256
filetype indent on

" indent
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4

" appearance
set number
set relativenumber
set cursorline
set textwidth=128
set wrap
set linebreak
set wrapmargin=2
set scrolloff=5
set sidescrolloff=15
set  ruler


" search
set showmatch
set hlsearch
set incsearch


" edit
set noswapfile
set noerrorbells
set visualbell
set history=1000
set autoread
set listchars=tab:»■,trail:■
set list
set wildmenu
set wildmode=longest:list,full

" status line
:set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
"set statusline=%2*%n%m%r%h%w%*\ %F\ %1*[FORMAT=%2*%{&ff}:%{&fenc!=''?&fenc:&enc}%1*]\ [TYPE=%2*%Y%1*]\ [COL=%2*%03v%1*]\ [ROW=%2*%03l%1*/%3*%L(%p%%)%1*]\
hi User1 guifg=gray
hi User2 guifg=red
hi User3 guifg=white
" 使状态行根据状态的不同，显示不同的颜色
function! InsertStatuslineColor(mode)
if a:mode == 'i'
  hi statusline guibg=peru
elseif a:mode == 'r'
  hi statusline guibg=blue
else
  hi statusline guibg=black
endif
endfunction
au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline guibg=orange guifg=white
hi statusline guibg=black

