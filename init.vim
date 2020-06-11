
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
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-surround'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'ap/vim-css-color'
Plug 'vim-python/python-syntax'
Plug 'tpope/vim-vividchalk'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"Plug 'neoclide/coc.nvim'

"Initialize plugin system
call plug#end()


let mapleader = ","


"true colors
if (has("termguicolors"))
 set termguicolors
endif
syntax enable
set background=dark
" nord config
"let g:nord_italic = 1
"let g:nord_italic_comments = 1
"let g:nord_underline = 1
colorscheme vividchalk


" show whitespaces
set list lcs=space:·,tab:»·

" For Json
autocmd FileType json syntax match Comment +\/\/.\+$+

" fzf stuff
nnoremap <leader>f :Files<CR>
nnoremap <leader>F :Files ~/<CR>
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" coc stuff
" use <tab> for trigger completion and navigate to the next complete item
"function! s:check_back_space() abort
  "let col = col('.') - 1
  "return !col || getline('.')[col - 1]  =~ '\s'
"endfunction

"inoremap <silent><expr> <tab>
      "\ pumvisible() ? "\<c-n>" :
      "\ <sid>check_back_space() ? "\<tab>" :
      "\ coc#refresh() "" use <c-space>for trigger completion "inoremap <silent><expr> <c-space> coc#refresh()
"inoremap <expr> <tab> pumvisible() ? "\<c-n>" : "\<tab>"
"inoremap <expr> <s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
"inoremap <expr> <cr> pumvisible() ? "\<c-y>" : "\<c-g>u\<cr>"
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<c-g>u\<cr>"
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<c-g>u\<cr>\<c-r>=coc#on_enter()\<cr>"

"" Go to definitions
"nmap <leader>gd <Plug>(coc-definition)
"nmap <leader>gr <Plug>(coc-references)



" python-syntax
let g:python_highlight_all = 1


" settings and mappings
set nocp " make sure vim is not in compatible mode
syntax on
set number
set relativenumber " show number
set smartindent
set sw=4 " no of spaces when shift indenting
set ts=4 " no of visual spaces per tab
set softtabstop=4 " no of spaces in tab when editing
set expandtab " convert tab to spaces
set cursorline " hilight current line
set clipboard=unnamedplus " us os clipboard
set noswapfile
set encoding=utf-8 "neo vim uses utf-8 by default
set nowrap
"set colorcolumn=80
"highlight ColorColumn ctermbg=0 guibg=lightgrey

" Intelligent Searching
set ignorecase
set smartcase
set incsearch
set hlsearch

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Resize split windows using <Alt> and h,j,k,l, inspiration from
nnoremap <silent> <M-h> <C-w><
nnoremap <silent> <M-l> <C-w>>
nnoremap <silent> <M-j> <C-W>-
nnoremap <silent> <M-k> <C-W>+

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

set noruler
set noshowmode " don't show status in the command buffer


"Lightline config
let g:lightline = {
    \ 'mode_map': {
       \ 'n'  : 'N',
       \ 'v'  : 'V',
       \ 'V'  : 'V·L',
       \ '' : 'V·B',
       \ 'i'  : 'I',
       \ 'R'  : 'R',
       \ 'Rv' : 'V·R',
       \ 'c'  : 'C',
    \ },
    \ 'colorscheme': 'OldHope',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'readonly', 'filename' ] ],
    \ },
    \ 'component': {
    \ },
    \ 'component_function': {
    \   'filename': 'LightlineFilename',
    \   'fileformat': 'LightlineFileFormat',
    \   'filetype': 'LightlineFileType',
    \   'readonly': 'LightlineReadonly',
    \ },
    \ }

" join the modified indicator with filename
function! LightlineFilename()
    let filename = expand('%:t') !=# '' ? '‹‹' . expand('%:t') . '››' : '‹‹no name››'
    let modified = &modified ? '[+]' : ''
    return filename . modified
endfunction

" deprecate type and format when windows are small
function! LightlineFileFormat()
    return winwidth(0) > 70 ? &fileformat : ''
endfunction
function! LightlineFileType()
    return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction

" display the lock symbol for readonly files
function! LightlineReadonly()
    let readonly = &readonly ? '[]' : ''
    return readonly
endfunction
