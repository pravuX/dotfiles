local u = require('utils')
-- settings and options
u.g.mapleader = ','
u.g.maplocalleader = ','
-- get a nice numberline
u.opt.number = true
u.opt.relativenumber = true
u.opt.signcolumn = 'yes'
-- use RGB 256
u.opt.termguicolors = true
-- sane splitting
u.opt.splitbelow = true
u.opt.splitright = true
-- enable syntax
u.opt.syntax = 'on'
-- indentation
u.opt.tabstop = 4
u.opt.softtabstop = 4
u.opt.shiftwidth = 4
u.opt.smartindent = true
u.opt.expandtab = true
-- no swap file
u.opt.swapfile = false
-- speed up ESC squence
u.opt.ttimeoutlen = 0
u.opt.timeoutlen = 500
-- display whitespace
u.opt.showbreak = '¬'
u.opt.list = true
u.opt.lcs = [[tab: ,space:·,eol:↴]]
-- use os clipboard
u.opt.clipboard = 'unnamedplus'
-- intelligent searching
u.opt.smartcase = true
u.opt.ignorecase = true
u.opt.hlsearch = true
u.opt.incsearch = true
-- completion
u.opt.completeopt = 'menu,menuone,noselect'
-- miscellaneous
u.opt.wrap = true
u.opt.linebreak = true
u.opt.encoding = 'utf-8'
u.opt.ruler = false
u.opt.showmode = false
u.opt.hidden = true
