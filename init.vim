                                                  "/$$   /$$
                                                  "| $$  / $$
  "/$$$$$$   /$$$$$$  /$$$$$$  /$$    /$$ /$$   /$$|  $$/ $$/
 "/$$__  $$ /$$__  $$|____  $$|  $$  /$$/| $$  | $$ \  $$$$/
"| $$  \ $$| $$  \__/ /$$$$$$$ \  $$/$$/ | $$  | $$  >$$  $$
"| $$  | $$| $$      /$$__  $$  \  $$$/  | $$  | $$ /$$/\  $$
"| $$$$$$$/| $$     |  $$$$$$$   \  $/   |  $$$$$$/| $$  \ $$
"| $$____/ |__/      \_______/    \_/     \______/ |__/  |__/
"| $$
"| $$
"|__/
"
" Personal Configurations of Prabesh Subedi


" Plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'ap/vim-css-color'
Plug 'morhetz/gruvbox'
Plug 'vim-python/python-syntax'
Plug 'junegunn/fzf', {'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Initialize plugin system
call plug#end()




let mapleader = ","




"true colors
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
set background=dark
colorscheme gruvbox
"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'

" show whitespaces
set list lcs=space:·,tab:»·

" For Json
autocmd FileType json syntax match Comment +\/\/.\+$+




" Nerd tree
map <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    if has('nvim')
        let NERDTreeBookmarksFile = stdpath('data') . '/NERDTreeBookmarks'
    else
        let NERDTreeBookmarksFile = '~/.vim' . '/NERDTreeBookmarks'
    endif




" coc stuff
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <tab>
      \ pumvisible() ? "\<c-n>" :
      \ <sid>check_back_space() ? "\<tab>" :
      \ coc#refresh()

" use <c-space>for trigger completion
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<c-g>u\<cr>"
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<c-g>u\<cr>\<c-r>=coc#on_enter()\<cr>"

" Go to definitions
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)



" python-syntax
let g:python_highlight_all = 1



" fzf stuff
nnoremap <C-p> :Files<CR>



" settings and mappings
set nocp " make sure vim is not in compatible mode
syntax on
set number
set relativenumber " show number
set smartindent
set sw=2 " no of spaces when shift indenting
set ts=2 " no of visual spaces per tab
set softtabstop=2 " no of spaces in tab when editing
set expandtab " convert tab to spaces
"set cursorline " hilight current line
set clipboard=unnamedplus " us os clipboard
set noswapfile
set encoding=utf-8

" Intelligent Searching
set smartcase
set incsearch
set hlsearch

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Goyo plugin makes text more readable when writing prose:
map <leader>f :Goyo \| set bg=dark \| set linebreak<CR>

" move between buffers
map <C-Left> <Esc>:bprev<CR>
map <C-Right> <Esc>:bnext<CR>

" Switch between split screens
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-k> <C-W>k
map <C-j> <C-W>j

" cd to current file directory
nnoremap <leader>gh :cd %:p:h<CR>:pwd<CR>

" Automatically deletes all trailing whitespace and newlines at end of file on save.
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritepre * %s/\n\+\%$//e

set noruler
set noshowmode " don't show status in the command buffer
