
execute pathogen#infect()
call pathogen#helptags()

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let vundle manage vundle
Plugin 'gmarik/vundle'

" list all plugins that you'd like to install here
" Plugin 'kien/ctrlp.vim' " fuzzy find files
Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
" Plugin 'benmills/vimux'
Plugin 'tpope/vim-fugitive' " the ultimate git helper
" Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in
Plugin 'bling/vim-airline'
Plugin 'nfvs/vim-perforce'
Helptags

let g:airline_powerline_fonts = 1
let g:airline_theme = 'behelit'

call vundle#end()
filetype plugin indent on
syntax on

" optical settings
source ~/.vim/bundle/vim-sunburst/colors/Sunburst.vim
colorscheme Sunburst
hi CursorLine term=bold cterm=bold
hi CursorColumn term=bold cterm=bold ctermbg=none
hi ColorColumn ctermbg=darkgrey
set cursorline
set cursorcolumn
set sp=2>&1\|sed\ 's#^\.\./#'`wspath`'/#'\|tee

if exists( '+colorcolumn' )
 set colorcolumn=111
endif

set lcs=tab:>-,eol:$,trail:.
set list
set is
set number
set diffopt+=iwhite

" format settings
set tabstop=2
set expandtab
set shiftwidth=2

" some more setting
set ruler
set enc

"set encoding=utf-8
set wildmenu
set laststatus=2
set clipboard=unnamedplus

" Show partial commands in the last line of the screen
set showcmd

" functions
source ~/.vim/comments.vim
map <C-k> :call Comment()<CR>

source ~/.vim/trim.vim
map <C-x> :call Trim()<CR>

source ~/.vim/wmake.vim
:command W :call WMake()

" other
source ~/.vim/gtags.vim

source ~/.vim/filetype.vim

map <C-[>[32;2u <Space>

