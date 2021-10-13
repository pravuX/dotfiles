local u = require('utils')
-- plugin configurations

-- colorizer
require('colorizer').setup()

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

-- completion
u.g.coq_settings = {
    -- conflicts with window nav keys. Disable for now
    keymap = {
        jump_to_mark = "",
        bigger_preview = "",
        recommended = false,
    },
    clients = {
        tags = {
            enabled = false,
        },
    },
    display = {
        ghost_text = {
            enabled = false,
        },
        pum = {
            fast_close = false,
        },
        icons = {
            mode = "long",
            aliases = {
                Enum = "Value",
                EnumMember = "Value",
                Method = "Constructor",
                Boolean = "Value",
                Character = "Value",
                String = "Value",
            },
            mappings = {
                Class = "⬢",
                Color = "❁",
                Constant = "π",
                Constructor = "⬡",
                Event = "⤸",
                Field = "◧",
                File = "⟔",
                Folder = "⧸",
                Function = "λ",
                Interface = "□",
                Keyword = "ᴋ",
                Module = "■",
                Operator = "÷",
                Property = "⋯",
                Reference = "→",
                Snippet = "◸",
                Struct = "▣",
                Text = "ᴀ",
                TypeParameter = "ᴛ",
                Unit = "␣",
                Value = "🞇",
                Variable = "𝑣",
            },
        },
    },
}

-- LSP Configuration
local lspconfig = require'lspconfig'
-- c/c++ language server
lspconfig.ccls.setup{}

-- python language server
lspconfig.pyright.setup{
    --
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
}
