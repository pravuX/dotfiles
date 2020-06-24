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
Plug 'vimwiki/vimwiki'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
let gruvbox_italic = 1
let gruvbox_italicize_comments = 0
colorscheme gruvbox

" For Json
autocmd FileType json syntax match Comment +\/\/.\+$+


" settings and mappings
set nocp                     " make sure vim is not in compatible mode
syntax on
set number relativenumber    " show number
set signcolumn=yes           " always show signcolumn
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
set linebreak                " make softwrap
set showbreak=¬
set updatetime=100           " for git gutter (update time set to 100 miliseconds(ms))
set timeoutlen=500 ttimeoutlen=0 " make esc faster(0 to 500 miliseconds
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

" Change cursor depending on the mode (FOR KDE KONSOLE)
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Resize split windows using <Alt> and h,j,k,l, inspiration from
nnoremap <silent> <leader>n <C-w><
nnoremap <silent> <leader>m <C-w>>
nnoremap <silent> <leader>N <C-W>-
nnoremap <silent> <leader>M <C-W>+

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
    \ 'colorscheme': 'gruvbox',
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
    \              [ 'cocstatus', 'fileformat', 'fileencoding', 'filetype' ] ]
    \
    \}

let g:lightline.component_function = {
    \   'filename': 'LightlineFilename',
    \   'fileformat': 'LightlineFileFormat',
    \   'readonly': 'LightlineReadonly',
    \   'fileencoding': 'LightlineFileencoding',
    \   'gitbranch': 'gitbranch#name',
    \   'cocstatus': 'coc#status'
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


" python-syntax config
let g:python_highlight_all = 1


" vimwiki
let g:vimwiki_global_ext = 0


" coc config

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)

" Force lightline to update
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
