require'battery'.setup({
    update_rate_seconds = 30,
    show_status_when_no_battery = true,
    show_plugged_icon = true,
    show_unplugged_icon = true,
    show_percent = true,
    vertical_icons = true,
})
local nvimbattery = {
    {
    function()
        return require('battery').get_status_line()
    end,
    color = { fg = "#FF00FF" , bg = "#000000" },
    }
}

require'tabline'.setup {
     enable = false,
     options = {
     	max_bufferline_percent = 44,
     	show_tabs_always = true,
     	show_devicons = true,
     	show_buffnr = false,
     	show_filename_only = true,
     	modified_icon = "+ ",
     	modifided_italic = true,
     	show_tabs_only = false,
     }
 }
 
 require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'molokai',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {
    lualine_a = nvimbattery,
    --lualine_b = {}
    --lualine_c = { require'tabline'.tabline_buffers },
    lualine_x = { require'tabline'.tabline_tabs },
    --lualine_y = {},
    --lualine_z = {},
  },
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

require('lualine').refresh()
