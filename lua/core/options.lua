--##OPTIONS##--
vim.o.background = 'dark'
vim.o.clipboard = 'unnamedplus'
vim.o.completeopt = 'noinsert,menuone,noselect'
vim.o.cursorline = true
vim.o.hidden = true
vim.o.inccommand = 'split'
vim.o.mouse = 'a'
vim.o.number = true
vim.o.relativenumber = true
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.title = true
vim.o.ttimeoutlen = 0
vim.o.wildmenu = true

--##TABS SIZE##--
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4

--##SYNTAX##--
vim.cmd[[
    filetype plugin indent on
    syntax on
]]

--##COLOR SUPPORT##--
vim.o.t_Co = 259

if os.getenv('TERM_PROGRAM') ~= 'Apple_Terminal' then
    vim.o.termguicolors = true
else
    if os.getenv('TERM') ~= 'xterm-256color' then
        vim.o.termguicolors = true
    end
end

--##TRUE ITALICS SUPPORT##--
vim.o.t_ZH = [[\e[3m]]
vim.o.t_ZR = [[\e[23m]]

--##FONT##--
vim.opt.guifont = {"Fira Code", ":h10"}

