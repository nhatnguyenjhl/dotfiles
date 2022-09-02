vim.cmd[[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'jiangmiao/auto-pairs'
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use 'preservim/nerdtree'
    use {
    	'nvim-lualine/lualine.nvim',
    	requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use 'kdheepak/tabline.nvim'
    use {'samodostal/image.nvim', requires = {'nvim-lua/plenary.nvim'}}
    use 'justinhj/battery.nvim'
    use {'akinsho/toggleterm.nvim', tag = 'v2.*'}
    use 'EdenEast/nightfox.nvim'
    use {'nvim-telescope/telescope.nvim', tag = '0.1.0',
    	requires = {{'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}}
    }
    use {'ms-jpq/coq_nvim', branch = 'coq'}
    use {'ms-jpq/coq.artifacts', branch = 'artifacts'}
    use {'ms-jpq/coq.thirdparty', branch = '3p'}
end)
