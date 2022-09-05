local on_attch = function(client, bufnr)
    vim.api.nvim_buf.set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
    local bufopts = { noremap = true, silent = true, buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lasp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementaion, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function() 
    	print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

local lsp_flags = {
    debounce_text_changes = 150,
}

require('lspconfig').pyright.setup{
    on_attach = on_attach,
    flags = lsp_flags,
}

--Completion
--Run :COQdeps and restart nvim if seeing error.
vim.g.coq_settings = {
    auto_start = true,
    --display = {
    --	pum = {
    --	    --Disable or enable auto cleared old results on keystroke
    --	    fast_close = true,
    --	}
    --},
    --limits = {
      --Increasing if LSP too slow to show up on keystroke.
    	--completion_auto_timeout = ...
    --},
    --clients = {
    --    lsp = {
          --Increasing if LSP sometimes not importing
            --resolve_timeout = ...
    --    }
    --},
    --match = {
    	--max_results = ...
    --}
}

require('coq')

