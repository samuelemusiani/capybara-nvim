vim.g.mapleader = " "

-- Move lines with J and K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Open vim file explorer
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Make the cursor stay in place when using J
vim.keymap.set("n", "J", "mzJ`z")

-- Make ctrl+d/u less disorienting
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- When splitting the screen the cursor move to the next windows
vim.keymap.set("n", "<C-w>v", "<C-w>v<C-w>w")
vim.keymap.set("n", "<C-w><C-v>", "<C-w>v<C-w>w") -- To avoid missclicks

-- Make searched terms apper at the center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Make selection pase not rewrite the yank register
vim.keymap.set("x", "p", '"_dP')
vim.keymap.set("x", "<leader>p", "p")

-- Integration with system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Don't use arrows, please
local keymap = vim.keymap.set

local opts = { noremap = true, silent = true }
local modes = { "n", "i", "v" }
keymap(modes, "<Up>", "<Nop>", opts)
keymap(modes, "<Down>", "<Nop>", opts)
keymap(modes, "<Left>", "<Nop>", opts)
keymap(modes, "<Right>", "<Nop>", opts)
