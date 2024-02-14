-- Mason: has the lsps, nice interface
local mason = {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
}

-- Installs the lsps in mason via this config file 
local mason_lsp_config = {
    "williamboman/mason-lspconfig.nvim",
    config = function()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls", -- lua
                "tsserver", -- typescript
                "pyright", -- python
                "html" -- html
            }
        })
    end
}

-- Makes it so nvim uses the lsp config
local nvim_lsp_config = {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        local default_ops = {capabilities=capabilities}
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup(default_ops)
        lspconfig.tsserver.setup(default_ops)
        lspconfig.pyright.setup(default_ops)
        lspconfig.bashls.setup(default_ops)
        lspconfig.html.setup(default_ops)

        -- TODO: lsp attach hook to use certain configs for certain language servers
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {}) -- shows the info on hover
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {}) -- go to definition
        vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

    end
}

return {
    mason,
    mason_lsp_config,
    nvim_lsp_config
}


