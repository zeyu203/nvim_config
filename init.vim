"VIMRC"{{{
colorscheme peachpuff

autocmd! bufwritepost _vimrc source %
set nocompatible
syntax enable
syntax on
set showmatch
set fenc=utf-8
set fencs=utf-8,gbk,usc-bom,chinese,latin-1
set tags=./tags,./../tags,./../../tags,./../../../tags,./../../../../tags,./../../../../../tags
set nu!
set hlsearch
set ignorecase
set smartcase
set autoindent
set backspace=indent,eol,start
set textwidth=0
autocmd FileType py set expandtab
autocmd FileType yaml set expandtab
autocmd FileType asm set expandtab
autocmd FileType c set expandtab
autocmd FileType cpp set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set foldmethod=marker
set guifont=monaco:h12
set fileencoding=utf-8
set encoding=utf-8
set langmenu=zh_CN.UTF-8
set nobackup
set noundofile

" 提示框颜色
hi Pmenu ctermfg=black ctermbg=lightblue guibg=#444444 guifg=#ffffff
hi PmenuSel ctermfg=7 ctermbg=4 guibg=#555555 guifg=#ffffff
" Matched brackets
hi MatchParen ctermfg=7 ctermbg=white guibg=#555555 guifg=#ffffff

hi Visual term=reverse ctermbg=black guibg=#353535
hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold
hi Search term=reverse ctermbg=Yellow ctermfg=Black guibg=lightYellow guifg=Black
au InsertEnter * hi StatusLine cterm=bold ctermfg=blue ctermbg=yellow gui=none
au InsertLeave * hi StatusLine cterm=bold ctermfg=yellow ctermbg=lightblue gui=none
highlight colorcolumn ctermbg=blue
highlight TabLine term=underline cterm=bold ctermbg=lightblue ctermfg=yellow
highlight TabLineSel term=bold cterm=bold ctermbg=black ctermfg=white
highlight TabLineFill term=bold cterm=bold ctermbg=lightblue
highlight Folded ctermfg=yellow
set mouse-=a

nmap ff gt
nmap FF gT
nmap # #N
nmap zl zt
nmap ： :

if &diff
    highlight DiffAdd    cterm=bold ctermfg=14 ctermbg=8 gui=none guifg=bg guibg=Red
    highlight DiffDelete cterm=bold ctermfg=16 ctermbg=8 gui=none guifg=bg guibg=Red
    highlight DiffChange cterm=bold ctermfg=46 ctermbg=5 gui=none guifg=bg guibg=Red
    highlight DiffText   cterm=bold ctermfg=11 ctermbg=13 gui=none guifg=bg guibg=Red
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dhruvasagar/vim-table-mode'
Plug 'folke/tokyonight.nvim'
call plug#end()

set undofile
set undodir=~/.vim/undodir

nnoremap <F6> :UndotreeToggle<cr>
nnoremap <F5> :NERDTreeToggle<cr>
nnoremap \|\| :TableModeToggle<cr>
nnoremap <C-p> :CocList -A --normal yank<cr>
tnoremap <Esc><Esc> <C-\><C-n>
nnoremap <F10> :InstantMarkdownPreview<CR>
nnoremap <F8> :vsplit<CR>:terminal<CR>:set nonu<CR><C-W>x<C-W>l

let g:airline_theme="bubblegum"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:gitgutter_terminal_reports_focus = 0
let g:instant_markdown_autostart = 0
let g:coc_disable_startup_warning = 1

set ambiwidth=double


set t_Co=256
"}}}
