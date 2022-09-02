require('nightfox').setup({
    options = {
    	compile_path = vim.fn.stdpath('cache') .. '/nightfox',
    	compile_file_suffix = '_compiled',
    	transparent = true,
    	terminal_colors = true,
    	dim_inactive = false,
    	styles = {
    	    comments = 'underline',
    	    conditionals = 'NONE',
    	    constants = 'bold',
    	    functions = 'NONE',
    	    keywords = 'NONE',
    	    numbers = 'NONE',
    	    operators = 'NONE',
    	    strings = 'italic',
    	    types = 'NONE',
    	    variables = 'italic',
    	},
    	inverse = {
    	    match_paren = false,
    	    visual = false,
    	    search = false,
    	},
    	modules = {},
    	palettes = {},
    	specs = {},
    	groups = {},
    }
}) 
