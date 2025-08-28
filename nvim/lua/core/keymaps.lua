-- Prefix leader key
vim.g.mapleader = " "

-- Make relative line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Show which line your cursor is on
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

-- Default spacing
vim.opt.tabstop = 8
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- Preview substitutions in a popup below
vim.opt.inccommand = "split"

-- Sets how certain whitespace characters are displayed
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Every wrapped line will continue visually indented
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Enable mouse mode for resizing splits
vim.opt.mouse = "a"

-- Sync clipboard between OS and Neovim
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

-- Example function to simplify normal mode keymapping
local nmap = function(keys, func, desc)
	vim.keymap.set("n", keys, func, { desc = desc })
end

nmap("<leader>q", vim.diagnostic.setloclist, "[Q]uickfix list")
nmap("<leader>pv", vim.cmd.Ex, "netrw")

nmap("<CR>", "o<Esc>", "Open a new line below using Enter")
nmap("<S-CR>", "ko<Esc>", "Open a new line above using Enter")
nmap("<Esc>", "<cmd>nohlsearch<CR>", "Remove highlights")

vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- `:so` to source the file
