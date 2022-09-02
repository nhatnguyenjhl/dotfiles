--You should install git.

-- In windows run file ./scripts/install_packer_for_windows.bat in the first using

--Auto install Packer if it doesn't exist
if vim.fn.has('win32') == 0 then
    local home_dir = '/home/'..os.getenv("USER")
    local packer_path = '/.local/share/nvim/site/pack/packer/start/packer.nvim'
    if vim.fn.empty(vim.fn.glob(home_dir..packer_path)) == 1 then
    	local git_cmd = '!git clone --depth 1 https://github.com/wbthomason/packer.nvim'
    	vim.cmd(git_cmd..' ~'..packer_path)
    end
end
require('plugins')
require('env.summary')
require('core.summary')
