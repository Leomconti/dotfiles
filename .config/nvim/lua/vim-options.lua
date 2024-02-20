-- Tab to spaces and shift <> configuration
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Map Leader to <Space>
vim.g.mapleader = " "

-- Show line number and relative lines
vim.opt.number = true
vim.opt.relativenumber = true

-- Highlight column to not make large code
vim.opt.colorcolumn = "120"

-- Sroll past end of file
vim.opt.scrolloff = 8

-- Incremental search to match as you type
vim.opt.incsearch = true

-- Better indenting
vim.opt.smartindent = true

-- Don't wrap lines when they are too long
vim.opt.wrap = false

-- Add true colors
vim.opt.termguicolors = true

-- Reduce time to wait after stop typing
vim.opt.updatetime = 50

-- Standard vim file explorer
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
