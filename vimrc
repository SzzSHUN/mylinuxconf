"Modified: Wed 12 Feb 2020 02:13:31 PM CET
set number
syntax on
set wildmenu
set wildmode=list:longest
set lazyredraw
set showmatch 
set incsearch
set hlsearch
set cursorline
hi CursorLine cterm=NONE ctermbg=darkblue ctermfg=white
set foldenable
set foldlevelstart=10
set foldmethod=marker
set noexpandtab
set tabstop=4
set softtabstop=4
set ignorecase
set smartcase
set ruler
set laststatus=2
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set t_Co=256
set mouse=
let g:airline#extensions#tabline#enabled = 1
set nolist
set listchars=eol:¬,tab:↹·,trail:⏼,extends:⍈,precedes:⍇,space:␣

" _SH szövegből #!/bin/bash -t csinál
abbr _SH #!/bin/bash
"CTRL+n -> set relative line numbers on/off
nmap <C-n> :set invrelativenumber<CR>
"CTRL-l (L) ->set list on/off
nmap <C-l> :set invlist<CR>
