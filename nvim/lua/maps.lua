local map = require('utils').map
local remap = require('utils').remap
-- keybindings/mappings
-- change size of split panes
map('n', '<M-h>', '<C-w><')
map('n', '<M-l>', '<C-w>>')
map('n', '<M-j>', '<C-w>-')
map('n', '<M-k>', '<C-w>+')

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
-- netrw config
map('n', '<leader>d', ':Vex<CR>')
-- move between buffers
map('', '<C-left>', '<Esc>:bp<CR>')
map('', '<C-right>', '<Esc>:bn<CR>')
-- switch between split screens
map('', '<C-h>', '<C-W>h')
map('', '<C-l>', '<C-W>l')
map('', '<C-j>', '<C-W>j')
map('', '<C-k>', '<C-W>k')
-- telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fg', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fb', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
