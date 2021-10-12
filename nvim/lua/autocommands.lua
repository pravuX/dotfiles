local u = require('utils')
-- autocommands
-- remove trailing whitespace on write
u.cmd [[au BufWritePre * %s/\s\+$//e]]
u.cmd [[au BufWritePre * %s/\n\+\%$//e]]
-- prevent from auto-commenting new line
u.cmd [[autocmd! BufEnter * set fo-=r fo-=o]]
