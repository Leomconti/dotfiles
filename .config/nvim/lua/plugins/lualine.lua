-- Makes pretty bottom bar on nvim
return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                theme = "dracula",
            },
        })
    end,
}
