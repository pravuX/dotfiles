" Statusline settings

"define custom highlight group
hi User1 guibg=#2e3440 guifg=#eceff4
hi User2 guibg=#5e81ac guifg=#eceff4
hi User3 guibg=#3b4252 guifg=#eceff4
hi User4 guibg=#b48ead guifg=#2e3440

let g:currentmode={
    \ 'n'  : 'n',
    \ 'v'  : 'v',
    \ 'V'  : 'v·l',
    \ '' : 'v·b',
    \ 'i'  : 'i',
    \ 'R'  : 'r',
    \ 'Rv' : 'v·r',
    \ 's'  : 's',
    \ 'S'  : 's·l',
    \ '' : 's·b',
    \ 'c'  : 'c',
    \ 't'  : 't',
       \}


set statusline=                           "initialise
"show current mode
set statusline+=%2*                       "initialise color sequence
set statusline+=‹
set statusline+=%{toupper(g:currentmode[mode()])}
set statusline+=›
set statusline+=%*                        "switch back to statusline highlight ending color sequence


set statusline+=%1*                       "initialise color sequence

set statusline+=%<\                       "cut at start

set statusline+=‹
set statusline+=%t                        "tail of the filename
set statusline+=%m                        "modified flag
set statusline+=›

set statusline+=%{&readonly?'\ []':''}   "readonly flag

set statusline+=%=                        "left/right separator

set statusline+=‹
set statusline+=%Y:%{&ff}                 "file type & file format
set statusline+=›

set statusline+=%3*                       "initialise color sequence
set statusline+=%3v                       "cursor column with 3px padding
set statusline+=:                         "colon separator
set statusline+=%3l/%3L                   "cursor line/total lines with 3px padding
set statusline+=\                         "blank space
set statusline+=%*                        "switch back to statusline highlight ending color sequence


set statusline+=%4*                       "initialise color sequence
set statusline+=‹
set statusline+=%{winnr()}                "buffer number
set statusline+=›
set statusline+=%*                        "switch back to statusline highlight ending color sequence
