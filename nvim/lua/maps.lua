local map = require('utils').map
local remap = require('utils').remap
-- keybindings/mappings
-- change size of split panes
map('n', '<M-H>', '<C-w><' ,{ silent = true })
map('n', '<M-L>', '<C-w>>' ,{ silent = true })
map('n', '<M-J>', '<C-w>-' ,{ silent = true })
map('n', '<M-K>', '<C-w>+' ,{ silent = true })

-- yank to the end of the line (consistent with D, C)
map('n', 'Y', 'y$')
-- copy to the end of the line
map('n', 'vv', 'v$')
-- change current directory to working directory
map('n', '<leader>cd', ':lcd %:p:h<CR>:pwd<CR>')
-- change text without putting the text into register
map('n', 'c', [["_c]])
map('n', 'C', [["_C]])
map('n', 'cc', [["_cc]])
-- move between buffers
map('', '<C-left>', '<Esc>:bp<CR>' ,{ silent = true })
map('', '<C-right>', '<Esc>:bn<CR>' ,{ silent = true })
-- switch between split screens
map('', '<M-h>', '<C-w><C-h>' ,{ silent = true })
map('', '<M-l>', '<C-w><C-l>' ,{ silent = true })
map('', '<M-j>', '<C-w><C-j>' ,{ silent = true })
map('', '<M-k>', '<C-w><C-k>' ,{ silent = true })
map('t', '<Esc>', [[<C-\><C-n>]] ,{ silent = true })
map('t', '<M-h>', [[<C-\><C-N><C-w>h]] ,{ silent = true })
map('t', '<M-l>', [[<C-\><C-N><C-w>l]] ,{ silent = true })
map('t', '<M-j>', [[<C-\><C-N><C-w>j]] ,{ silent = true })
map('t', '<M-k>', [[<C-\><C-N><C-w>k]] ,{ silent = true })
-- telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fg', '<cmd>Telescope file_browser<cr>')
map('n', '<leader>fb', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
-- FTerm
local opts = { noremap = true, silent = true }

map('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>', opts)
map('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)
