local M = {}
-- some useful aliases
M.cmd = vim.cmd
M.fn = vim.fn
M.g = vim.g
M.opt = vim.opt

function M.map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

return M
