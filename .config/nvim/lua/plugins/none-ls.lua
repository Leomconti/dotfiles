return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            soruces = {
                -- Lua
                null_ls.builtins.formatting.stylua, -- lua formatting
                -- Python
                null_ls.builtins.formatting.black,
                null_ls.builtins.diagnostics.mypy,
                null_ls.builtins.diagnostics.ruff,
                null_ls.builtins.formatting.isort,
                -- Javascript
                null_ls.builtins.diagnostics.eslint_d
            }
        })
        vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
    end
}
