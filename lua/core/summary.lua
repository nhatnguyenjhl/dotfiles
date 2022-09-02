require('core.options')
require('core.keymaps')

--Plugins
require('core.treesitter')
require('core.lsp')
require('core.nerdtree')
require('core.lualine')
require('core.image')
require('core.toggleterm')
require('core.nightfox')
require('core.telescope')

--Set colorscheme
vim.cmd('colorscheme nightfox')
