local u = require('utils')
-- plugin configurations

-- treesitter configurations
require('nvim-treesitter.configs').setup {
    ensure_installed = 'maintained',
    -- enable syntax hilightling
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true
    },
    -- enable extended selection
  incremental_selection = {
      enable = true,
      keymaps = {
          init_selection = "<CR>",
          scope_incremental = "<CR>",
          node_incremental = "<TAB>",
          node_decremental = "<S-TAB>",
      },
  },
    -- enable indentation
    -- indent = { enable = true },
}

-- gitsigns configs
require('gitsigns').setup {
    signs = {
        add          = {hl = 'GitSignsAdd'   , text = '┃', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
        change       = {hl = 'GitSignsChange', text = '┃', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
        delete       = {hl = 'GitSignsDelete', text = '', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        topdelete    = {hl = 'GitSignsDelete', text = '', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
        changedelete = {hl = 'GitSignsChange', text = '┃', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    },
    watch_gitdir = {
        interval = 1000,
        follow_files = true
    },
    -- upadate interval for git signs
    update_debounce = 500,
}

-- indentline configs
require("indent_blankline").setup {
    char = "│",
    space_char_blankline=' ',
    buftype_exclude = {"terminal"},
    show_end_of_line = true,
    show_trailing_blankline_indent = false,
}

-- completion
local cmp = require('cmp')
cmp.setup({
    snippet = {
        expand = function(args)
            u.fn['vsnip#anonymous'](args.body)
        end,
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'vsnip' }
    },
    mapping = {
        ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
        ['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        })
    },
})

-- LSP Configuration
local lspconfig = require'lspconfig'
-- c/c++ language server
lspconfig.ccls.setup{}

-- python language server
lspconfig.pyright.setup{
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

-- julia language server
lspconfig.julials.setup{}

-- lua language server
local system_name = 'Linux'
local sumneko_root_path = '/home/prabesh/lua-language-server'
local sumneko_binary = sumneko_root_path.."/bin/"..system_name.."/lua-language-server"

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")
lspconfig.sumneko_lua.setup{
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
    settings = {
        Lua = {
            diagnostics = {
                -- recognize the vim global
                globals = {'vim'},
            },
            runtime = {
                version = 'LuaJIT',
                path = runtime_path,
            },
            workspace = {
                -- make server aware of the vim runtime files
                library = vim.api.nvim_get_runtime_file("", true)
            },
            telemetry = {
                enable = false,
            }
        }
    },
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}
