"                                                  /$$   /$$
"                                                  | $$  / $$
"  /$$$$$$   /$$$$$$  /$$$$$$  /$$    /$$ /$$   /$$|  $$/ $$/
" /$$__  $$ /$$__  $$|____  $$|  $$  /$$/| $$  | $$ \  $$$$/
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
" ESSENTIALISM -> Just gonna use the plugins I find essential
Plug 'scrooloose/nerdcommenter'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'airblade/vim-gitgutter'
Plug 'kassio/neoterm'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"colors and appearance
Plug 'joshdick/onedark.vim'
Plug 'mhinz/vim-janah'
Plug 'fenetikm/falcon'
Plug 'atahabaki/archman-vim'
Plug 'srcery-colors/srcery-vim'
Plug 'cocopon/iceberg.vim/'
Plug 'jdsimcoe/hyper.vim'
Plug 'ts-26a/vim-darkspace'
Plug 'arcticicestudio/nord-vim'
Plug 'haishanh/night-owl.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'andreasvc/vim-256noir'
Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai'
Plug 'junegunn/seoul256.vim'
Plug 'jacoborus/tender.vim'
Plug 'iCyMind/NeoSolarized'
Plug 'nerdypepper/agila.vim'

Plug 'ap/vim-css-color'
Plug 'vim-python/python-syntax'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'


"Initialize plugin system
call plug#end()


let mapleader = ","


"true colors
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
set background=dark
let g:onedark_terminal_italics = 1
colorscheme onedark

" For Json
autocmd FileType json syntax match Comment +\/\/.\+$+


" settings and mappings
set nocp                     " make sure vim is not in compatible mode
syntax on
set number relativenumber    " show number
set smartindent
set sw=4                     " no of spaces when shift indenting
set ts=4                     " no of visual spaces per tab
set softtabstop=4            " no of spaces in tab when editing
set expandtab                " convert tab to spaces
set cursorline               " hilight current line
set clipboard=unnamedplus    " us os clipboard
set noswapfile
set encoding=utf-8
set wrap
set showbreak=¬
set updatetime=100           " for git gutter
set list lcs=space:·,tab:»\  " show whitespaces
"set colorcolumn=80
"highlight ColorColumn ctermbg=0 guibg=lightgrey

" Intelligent Searching
set ignorecase
set smartcase
set incsearch
set hlsearch

set noruler
set noshowmode               " don't show status in the command buffer
set splitbelow splitright    " splits open at the bottom and right

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Resize split windows using <Alt> and h,j,k,l, inspiration from
nnoremap <silent> <A-h> <C-w><
nnoremap <silent> <A-l> <C-w>>
nnoremap <silent> <A-j> <C-W>-
nnoremap <silent> <A-k> <C-W>+

" Yank from current cursor position to the end of the line (make it
" consistent with the behavior of D, C)
nnoremap Y y$


" move between buffers
map <C-Left> <Esc>:bprev<CR>
map <C-Right> <Esc>:bnext<CR>

" Switch between split screens
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-k> <C-W>k
map <C-j> <C-W>j

" cd to current file directory
nnoremap <leader>cd :lcd %:p:h<CR>:pwd<CR>

" Use Esc to quit builtin terminal
if exists(":tnoremap")
    tnoremap <ESC>   <C-\><C-n>
    tnoremap <C-h> <C-\><C-n><C-W>h
    tnoremap <C-l> <C-\><C-n><C-W>l
    tnoremap <C-k> <C-\><C-n><C-W>k
    tnoremap <C-j> <C-\><C-n><C-W>j
endif

" Automatically delete all trailing whitespace and newlines at end of file on save.
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritepre * %s/\n\+\%$//e

" Toggle spell checking
nnoremap <silent> <F11> :set spell!<cr>
inoremap <silent> <F11> <C-O>:set spell!<cr>

" Change text without putting the text into register(comes handy when pasting)
nnoremap c "_c
nnoremap C "_C
nnoremap cc "_cc


"Lightline config
set laststatus=2             " Clear statusline
let g:lightline = {
    \ 'colorscheme': 'onedark',
    \ }

let g:lightline.mode_map = {
    \ 'n'  : 'n',
    \ 'v'  : 'v',
    \ 'V'  : 'v·l',
    \ '' : 'v·b',
    \ 'i'  : 'i',
    \ 'R'  : 'r',
    \ 'Rv' : 'v·r',
    \ 'c'  : 'c',
    \ 't'  : 't',
    \}

let g:lightline.tabline = {
    \ 'left': [ [ 'tabs' ] ],
    \ 'right': [ ] }

let g:lightline.tab = {
    \ 'active': [ 'tabnum', 'filename' ],
    \ 'inactive': [ 'tabnum', 'filename' ] }

let g:lightline.active = {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'gitbranch', 'readonly', 'filename', ] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'fileformat', 'fileencoding', 'filetype' ] ]
    \
    \}

let g:lightline.component_function = {
    \   'filename': 'LightlineFilename',
    \   'fileformat': 'LightlineFileFormat',
    \   'readonly': 'LightlineReadonly',
    \   'fileencoding': 'LightlineFileencoding',
    \   'gitbranch': 'gitbranch#name'
    \
    \}

let g:lightline.tab_component_function = {
    \ 'filename': 'lightline#tab#filename'
    \}

let g:lightline.separator = {
    \ 'left': '', 'right': ''
  \ }

"│ this may come in handy
let g:lightline.subseparator = {
    \ 'left':'' , 'right':''
  \ }

let g:lightline.enable = {
    \ 'statusline': 1,
    \ 'tabline': 1
    \ }

" join the modified indicator with filename
function! LightlineFilename()
    let filename = expand('%:t') !=# '' ? '｢' . expand('%:t') . '｣' : '｢no name｣'
    let modified = &modified ? '｢•｣' : ''
    return filename . modified
endfunction

" deprecate type and format when windows are small
function! LightlineFileFormat()
    return winwidth(0) > 70 ? &fileformat : ''
endfunction
function! LightlineFileencoding()
    return winwidth(0) > 70 ? &fileencoding : ''
endfunction

" display the lock symbol for readonly files
function! LightlineReadonly()
    let readonly = &readonly ? '[]' : ''
    return readonly
endfunction

" fzf config
nnoremap <leader>f :Files<CR>
nnoremap <leader>F :Files ~/<CR>
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)
autocmd! FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2

" deoplete config
"let g:deoplete#enable_at_startup = 1

" python-syntax config
let g:python_highlight_all = 1

" neoterm config
let g:neoterm_default_mod = 'belowright'