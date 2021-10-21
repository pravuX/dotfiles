local map = require('utils').map
local remap = require('utils').remap
local opts = { silent = true }
-- keybindings/mappings
-- change size of split panes
map('n', '<M-H>', '<C-w><' ,opts)
map('n', '<M-L>', '<C-w>>' ,opts)
map('n', '<M-J>', '<C-w>-' ,opts)
map('n', '<M-K>', '<C-w>+' ,opts)

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
map('n', '<C-left>', ':BufferLineCyclePrev<CR>' ,opts)
map('n', '<C-right>', ':BufferLineCycleNext<CR>' ,opts)
map('n', '<C-S-left>', ':BufferLineMovePrev<CR>' ,opts)
map('n', '<C-S-right>', ':BufferLineMoveNext<CR>' ,opts)
map('n', '<C-p>', ':BufferLinePick<CR>', opts)
map('n', '<C-c>', ':BufferLinePickClose<CR>', opts)
-- switch between split screens
map('', '<M-h>', '<C-w><C-h>' ,opts)
map('', '<M-l>', '<C-w><C-l>' ,opts)
map('', '<M-j>', '<C-w><C-j>' ,opts)
map('', '<M-k>', '<C-w><C-k>' ,opts)
map('t', '<Esc>', [[<C-\><C-n>]] ,opts)
map('t', '<M-h>', [[<C-\><C-N><C-w>h]] ,opts)
map('t', '<M-l>', [[<C-\><C-N><C-w>l]] ,opts)
map('t', '<M-j>', [[<C-\><C-N><C-w>j]] ,opts)
map('t', '<M-k>', [[<C-\><C-N><C-w>k]] ,opts)
-- telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fg', '<cmd>Telescope file_browser<cr>')
map('n', '<leader>fb', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>fh', '<cmd>Telescope help_tags<cr>')
-- trouble
map('n', '<leader>xx', '<cmd>TroubleToggle<cr>', opts)
map('n', '<leader>xw', '<cmd>TroubleToggle lsp_workspace_diagnostics<cr>', opts)
map('n', '<leader>xd', '<cmd>TroubleToggle lsp_document_diagnostics<cr>', opts)
map('n', '<leader>xq', '<cmd>TroubleToggle quickfix<cr>', opts)
map('n', '<leader>xl', '<cmd>TroubleToggle loclist<cr>', opts)
map('n', 'gR', '<cmd>TroubleToggle lsp_references<cr>', opts)
-- nvim tree
map('n', '<leader>d', '<cmd>NvimTreeToggle<cr>')
-- insert chars
map('i', [[<M-\>]], 'λ')
