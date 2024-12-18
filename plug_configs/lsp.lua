-- Includes snippetSupport
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Configuration for LSP

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>f', function() vim.lsp.buf.format { async = true } end, bufopts)
end

local lsp_flags = {
    -- This is the default in Nvim 0.7+
    debounce_text_changes = 150,
}

-- Configure LSP servers
-- List of supported servers and compilation options:
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

local lspconfig = require('lspconfig')

-- Configure server for Python
lspconfig['pyright'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}
-- Configure server for Rust
lspconfig['rust_analyzer'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}
-- Configure server for Bash
lspconfig['bashls'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}
-- Configure server for C, C++, ObjectiveC, ObjectiveC++, and CUDA
lspconfig['clangd'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}
-- Configure server for CMake
lspconfig['cmake'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}
-- Configure server for Sphinx
lspconfig['esbonio'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}
-- Configure server for JavaScript and TypeScript
lspconfig['eslint'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}
-- Configure server for Golang
lspconfig['gopls'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}
-- Configure server for HTML
lspconfig['html'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}
-- Configure server for JSON
lspconfig['jsonls'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}
-- Configure server for CSS
lspconfig['cssls'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}
-- Configure server for LaTeX, BibTex, Markdown, PlainText, and ReStructureText
lspconfig['ltex'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}
-- Configure server for TOML
lspconfig['taplo'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}
-- Configure server for YAML
lspconfig['yamlls'].setup{
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
}

require("mason").setup()
require("mason-lspconfig").setup()
