 require'nvim-treesitter.configs'.setup {
     ensure_installed = {'python', 'r'},
     sync_install = false,
     highlight = {
     	enable = true,
     	additional_vim_regex_highlighting = false,
     }
 }
