
execute pathogen#infect()
call pathogen#helptags()

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let vundle manage vundle
Plugin 'gmarik/vundle'

" list all plugins that you'd like to install here
Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plugin 'tpope/vim-fugitive' " the ultimate git helper
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'Yggdroot/indentLine'
Plugin 'gko/vim-coloresque'
Plugin 'wkentaro/conque.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'gabrielelana/vim-markdown'
Plugin 'aur-archive/vim-genutils'
Plugin 'lawrencejones/vim-multiselect'
Plugin 'mhinz/vim-startify'
Helptags

let g:airline_powerline_fonts = 1
let g:airline_theme = 'behelit'

let g:tagbar_ctags_bin = '~/bin/ctags/ctags'

let g:indentLine_color_term = 239
let g:indentLine_char = '|'
let g:indentLine_enabled = 1

let g:NERDTreeDirArrowExpandable = '噍'
let g:NERDTreeDirArrowCollapsible = '磱'

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
set lcs=tab:»-,eol:¬,trail:.
set list

set sp=2>&1\|sed\ 's#^\.\./#'`wspath`'/#'\|tee

if exists( '+colorcolumn' )
 set colorcolumn=111
endif

set is

set number

set diffopt+=iwhite

" format settings
set tabstop=8
set softtabstop=2
set shiftwidth=2
set expandtab
set shiftwidth=2
set foldmarker={,}
set foldmethod=marker

" some more setting
set ruler
set enc
set encoding=utf-8
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

source ~/.vim/gtags.vim

source ~/.vim/filetype.vim

map <C-[>[32;2u <Space>

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

autocmd VimEnter * NERDTree
autocmd VimEnter * Tagbar
