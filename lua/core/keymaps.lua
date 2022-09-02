function basic_map (hotkey)
    vim.keymap.set('v', '<'..hotkey..'-c>', 'yi', {noremap = true})  --copy
    vim.keymap.set('v', '<'..hotkey..'-v>', 'pi', {noremap = true})  --paste in visual mode
    vim.keymap.set('i', '<'..hotkey..'-v>', '<esc>pi', {noremap = true})  --paste in insert mode
    --vim.keymap.set('n', '<'..hotkey..'-v>', 'p', {noremap = true})  --paste in normal mode
    vim.keymap.set('v', '<'..hotkey..'-x>', 'xi', {noremap = true})  --cut
    vim.keymap.set('i', '<'..hotkey..'-s>', '<esc>:w<CR>li', {noremap = true})  --save in insert mode
    vim.keymap.set('n', '<'..hotkey..'-s>', '<cmd>w<CR>', {noremap = true})  --save in normal mode
    vim.keymap.set('i', '<'..hotkey..'-z>', '<esc>ui', {noremap = true})  --Undo in insert mode
    vim.keymap.set('n', '<'..hotkey..'-z>', 'u', {noremap = true})  --Undo in normal mode
    vim.keymap.set('i', '<'..hotkey..'-r>', '<esc><C-r>i', {noremap = true})  --Redo
end

--Basic map for terminal env
basic_map('C')

--Basic map for GUI Nvim (seemly not working in term) in mac for command key (cuz in mac, cmd do like ctrl).
if vim.fn.has('macunix') ~= 0 then
    if vim.fn.exists('g:neovide') ~= 0 then
    	basic_map('D')
    else
    	basic_map('M')
    end
end

--Tab control keymaps
--##Create new tab
vim.keymap.set('n', '<tab>n', '<cmd>tabnew<CR>', {noremap = true})

--##Quit tab
vim.keymap.set('n', '<tab>w', '<cmd>tabc<CR>', {noremap = true})

--##Quit buffer
vim.keymap.set('n', '<tab>q', ':q<CR>', {noremap = true})

--##Quit buffer and save
vim.keymap.set('n', '<tab>x', ':x<CR>', {noremap = true})
if not vim.fn.exists('g:neovide') then
    --Use Ctrl + pageup/pagedown to switch tab, in neovide, it's available so that not 
    --necessary.
    vim.keymap.set('n', '<C-pageup>', '<cmd>tabp<CR>', {noremap = true})
    vim.keymap.set('i', '<C-pageup>', '<esc><cmd>tabp<CR>i', {noremap = true})
    vim.keymap.set('n', '<C-pagedown>', '<cmd>tabn<CR>', {noremap = true})
    vim.keymap.set('i', '<C-pagedown>', '<esc><cmd>tabn<CR>i', {noremap = true})
end

--Split screen control keymaps
--##Go to down screen
vim.keymap.set('n', '<tab>j', '<C-w>j', {noremap = true})
vim.keymap.set('n', '<tab><down>', '<C-w>j', {noremap = true})

--##Go to up screen
vim.keymap.set('n', '<tab>k', '<C-w>k', {noremap = true})
vim.keymap.set('n', '<tab><up>', '<C-w>k', {noremap = true})

--##Go to left screen
vim.keymap.set('n', '<tab>h', '<C-w>h', {noremap = true})
vim.keymap.set('n', '<tab><left>', '<C-w>h', {noremap = true})

--##Go to right screen
vim.keymap.set('n', '<tab>l', '<C-w>l', {noremap = true})
vim.keymap.set('n', '<tab><right>', '<C-w>l', {noremap = true})

--##New split screen
vim.keymap.set('n', '<tab>v', '<cmd>vs<CR>', {noremap = true})
vim.keymap.set('n', '<tab>s', '<cmd>sp<CR>', {noremap = true})

--For plugins
--##For NERDTree
vim.keymap.set('n', '<leader>n', ':NERDTreeFocus<CR>', {noremap = true})
vim.keymap.set('n', '<C-n>', ':NERDTree<CR>', {noremap = true})
vim.keymap.set('n', '<C-t>', ':NERDTreeToggle<CR>', {noremap = true})
vim.keymap.set('n', '<C-f>', ':NERDTreeFind<CR>', {noremap = true})

--##For ToggleTerm
vim.cmd[[
    autocmd TermEnter term://*toggleterm#*
      \ tnoremap <C-t> <Cmd>ToggleTerm<CR>
]]

vim.keymap.set('n', 'tt', [[<cmd>exe 'TermExec cmd="cd '.expand("%:p:h").'" direction=horizontal'<CR>]], {noremap = true})
vim.keymap.set('i', '<C-t>', [[<esc><cmd>exe 'TermExec cmd="cd '.expand("%:p:h").'" direction=horizontal'<CR>]], {noremap = true})
vim.keymap.set('n', 'ff', [[<cmd>exe 'TermExec cmd="cd '.expand("%:p:h").'" direction=float'<CR>]], {noremap = true})
vim.keymap.set('i', '<C-f>', [[<esc><cmd>exe 'TermExec cmd="cd '.expand("%:p:h").'" direction=float'<CR>]], {noremap = true})

--##For Telescope
vim.keymap.set('n', 'et', ':Telescope ', {noremap = true})
vim.keymap.set('n', 'ef', '<cmd>Telescope find_files prompt_prefix=🔍<CR>', {noremap = true})
vim.keymap.set('n', 'eg', '<cmd>Telescope live_grep<CR>', {noremap = true})
vim.keymap.set('n', 'eb', '<cmd>Telescope buffers<cr>', {noremap = true})
vim.keymap.set('n', 'eh', '<cmd>Telescope help_tags<cr>', {noremap = true})

--##For Nvim LSP Config
vim.keymap.set('n', 'e<space>', vim.diagnostic.open_float, {noremap = true, silent = true})
vim.keymap.set('n', 'e<down>', vim.diagnostic.goto_next, {noremap = true, silent = true})
vim.keymap.set('n', 'e<up>', vim.diagnostic.goto_prev, {noremap = true, silent = true})
--vim.keymap.set('n', 'eq', vim.diagnostic.setloclist, {noremap = true, silent = true})

