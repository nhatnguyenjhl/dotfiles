require('toggleterm').setup {
    open_mapping = [[<C-\>]],
    hide_numbers = true,
    shade_filetypes = {},
    highlights = {
    	Normal = {
    	    guifg = "#ffa500" 
    	},
    	NormalFloat = {
    	    guifg = '#ffa500',
    	},
    	FloatBorder = {
    	    --guifg = '#39ff14',
    	    guifg = "#9d00ff"
    	},
    },
    shade_terminals = true,
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
    persist_size = true,
    persist_mode = false,
    shell = vim.o.shell,
    auto_scroll = true,
    float_opts = {
        border = 'curved',
        width = math.floor(vim.o.columns * 0.666),
        height = math.floor(vim.o.lines * 0.666),
        winblend = 3,
    },
    winbar = {
    	enabled = false,
    	name_formatter = function(term)
    	    return term.name
    	end
    },
}
local Terminal = require('toggleterm.terminal').Terminal
local cmatrix = Terminal:new({
    cmd = 'cmatrix',
    direction = 'float',
    float_opts = {
    	border = "shadow",
    	width = vim.o.columns,
    	height = vim.o.lines,
    },
    on_open = function(term) 
    	vim.cmd('startinsert!')
    end,
    on_close = function(term)
    	vim.cmd('Closing terminal')
    end,
})

function _cmatrix_toggle()
    cmatrix:toggle()
end
--Ctrl M to show Matrix
vim.api.nvim_set_keymap('n', '<C-m>', '<cmd>lua _cmatrix_toggle()<CR>', {noremap = true, silent = true})

local python3 = Terminal:new({
    cmd = 'python3',
    direction = 'float',
    float_opts = {
    	border = "double",
    	width = vim.o.columns - 10,
    	height = vim.o.lines - 4, 	
    },
    on_open = function(term) 
    	vim.cmd('startinsert!')
    end,
    on_close = function(term)
    	vim.cmd('Closing terminal')
    end,
})

function _python3_toggle(interactive_mode)
    if not interactive_mode then
        python3.cmd = 'python3 '..vim.fn.expand('%:p')
    else
        python3.cmd = 'python3'
    end
    python3:toggle()
end

--Type er to run python file
vim.api.nvim_set_keymap('n', 'er', '<cmd>lua _python3_toggle(false)<CR>', {noremap = true, silent = true})

--Type ei to run interactive mode
vim.api.nvim_set_keymap('n', 'ei', '<cmd>lua _python3_toggle(true)<CR>', {noremap = true, silent = true})


local neofetch = Terminal:new({
    cmd = 'neofetch',
    direction = 'float',
    float_opts = {
    	border = "single",
    	width = 82,
    	height = 25, 	
    },
    on_open = function(term) 
    	vim.cmd('startinsert!')
    end,
    on_close = function(term)
    	vim.cmd('Closing terminal')
    end,
})

function _neofetch_toggle()
    neofetch:toggle()
end

--Type ew to show computer info
vim.api.nvim_set_keymap('n', 'ew', '<cmd>lua _neofetch_toggle()<CR>', {noremap = true, silent = true})

