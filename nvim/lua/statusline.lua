local gl = require('galaxyline')
local condition = require('galaxyline.condition')
local gls = gl.section
gl.short_line_list = {'NvimTree','vista','dbui','packer'}

local colors = {
    bg = 'NONE',
    fg = '#c0caf5',
    yellow = '#e0af68',
    cyan = '#7dcfff',
    darkblue = '#3d59a1',
    green = '#9ece6a',
    orange = '#ff9e64',
    violet = '#9d7cd8',
    magenta = '#bb9af7',
    blue = '#7aa2f7';
    red = '#f7768e';
}

gls.left[1] = {
  RainbowRed = {
    provider = function() return ' ' end,
    highlight = {colors.blue,colors.bg}
  },
}
gls.left[2] = {
  ViMode = {
    provider = function()
      -- auto change color according the vim mode
      local mode_color = {n = colors.red, i = colors.green,v=colors.blue,
                          [''] = colors.blue,V=colors.blue,
                          c = colors.magenta,no = colors.red,s = colors.orange,
                          S=colors.orange,[''] = colors.orange,
                          ic = colors.yellow,R = colors.violet,Rv = colors.violet,
                          cv = colors.red,ce=colors.red, r = colors.cyan,
                          rm = colors.cyan, ['r?'] = colors.cyan,
                          ['!']  = colors.red,t = colors.red}
      vim.api.nvim_command('hi GalaxyViMode guifg='..mode_color[vim.fn.mode()])
      return '  '
    end,
    highlight = {colors.red,colors.bg,'bold'},
  },
}
gls.left[3] ={
  FileIcon = {
    provider = 'FileIcon',
    condition = condition.buffer_not_empty,
    highlight = {require('galaxyline.provider_fileinfo').get_file_icon_color,colors.bg},
  },
}

gls.left[4] = {
  FileName = {
    provider = 'FileName',
    condition = condition.buffer_not_empty,
    highlight = {colors.magenta,colors.bg,'bold'}
  }
}



gls.right[1] = {
  DiagnosticError = {
    provider = 'DiagnosticError',
    icon = '  ',
    highlight = {colors.red,colors.bg}
  }
}

gls.right[2] = {
  DiagnosticWarn = {
    provider = 'DiagnosticWarn',
    icon = '  ',
    highlight = {colors.yellow,colors.bg},
  }
}

gls.right[3] = {
  DiagnosticHint = {
    provider = 'DiagnosticHint',
    icon = '  ',
    highlight = {colors.cyan,colors.bg},
  }
}

gls.right[4] = {
  DiagnosticInfo = {
    provider = 'DiagnosticInfo',
    icon = '  ',
    highlight = {colors.blue,colors.bg},
  }
}

--gls.right[5] = {
--  FileFormat = {
--    provider = function() return vim.bo.fileformat end,
--    condition = condition.buffer_not_empty,
--    separator = ' ',
--    separator_highlight = {'NONE',colors.bg},
--    highlight = {colors.green,colors.bg,'bold'}
--  }
--}


gls.right[5] = {
  DiffAdd = {
    provider = 'DiffAdd',
    condition = condition.buffer_not_empty,
    icon = '  ',
    highlight = {colors.green,colors.bg},
    separator = ' '
  }
}
gls.right[6] = {
  DiffModified = {
    provider = 'DiffModified',
    condition = condition.buffer_not_empty,
    icon = ' 柳',
    highlight = {colors.violet,colors.bg},
  }
}
gls.right[7] = {
  DiffRemove = {
    provider = 'DiffRemove',
    condition = condition.buffer_not_empty,
    icon = '  ',
    highlight = {colors.red,colors.bg},
  }
}
gls.right[8] = {
  GitIcon = {
    provider = function() return '  ' end,
    condition = condition.check_git_workspace,
    separator = '',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.orange,colors.bg,'bold'},
  }
}

gls.right[9] = {
  GitBranch = {
    provider = 'GitBranch',
    condition = condition.check_git_workspace,
    highlight = {colors.orange,colors.bg,'bold'},
  }
}

gls.right[10] = {
  LineInfo = {
    provider = 'LineColumn',
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.fg,colors.bg},
  },
}

gls.right[11] = {
  RainbowBlue = {
    provider = function() return ' ' end,
    highlight = {colors.blue,colors.bg}
  },
}

gls.short_line_left[1] = {
  BufferType = {
    provider = 'FileTypeName',
    separator = ' ',
    separator_highlight = {'NONE',colors.bg},
    highlight = {colors.blue,colors.bg,'bold'}
  }
}

gls.short_line_left[2] = {
  SFileName = {
    provider =  'SFileName',
    condition = condition.buffer_not_empty,
    highlight = {colors.fg,colors.bg,'bold'}
  }
}

gls.short_line_right[1] = {
  BufferIcon = {
    provider= 'BufferIcon',
    highlight = {colors.fg,colors.bg}
  }
}
