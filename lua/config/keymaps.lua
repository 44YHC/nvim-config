-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Window navigation
-- keymap.set("n", "<S-h>", "<C-w>h", opts)
-- keymap.set("n", "<S-l>", "<C-w>l", opts)
keymap.set("n", "<S-j>", "<C-w>j", opts)
-- keymap.set("n", "<S-k>", "<C-w>k", opts)

-- Save file and quit
keymap.set("n", "<Leader>w", ":update<Return>", opts)
keymap.set("n", "<Leader>q", ":quit<Return>", opts)
keymap.set("n", "<Leader>Q", ":qa<Return>", opts)

-- File explorer with NvimTree
-- keymap.set("n", "<Leader>f", ":NvimTreeFindFile<Return>", opts)
-- keymap.set("n", "<Leader>t", ":NvimTreeToggle<Return>", opts)

-- Tabs
-- keymap.set("n", "te", ":tabedit")
-- keymap.set("n", "<tab>", ":tabnext<Return>", opts)
-- keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- keymap.set("n", "tw", ":tabclose<Return>", opts)

-- Split window
keymap.set("n", "vs", ":vsplit<Return>", opts)
-- Resize vertical split by +200 columns

-- Move window
-- keymap.set("n", "sh", "<C-w>h")
-- keymap.set("n", "sk", "<C-w>k")
-- keymap.set("n", "sj", "<C-w>j")
-- keymap.set("n", "sl", "<C-w>l")

-- Resize window
-- keymap.set("n", "<C-S-h>", "<C-w><")
-- keymap.set("n", "<C-S-l>", "<C-w>>")
-- keymap.set("n", "<C-S-k>", "<C-w>+")
-- keymap.set("n", "<C-S-j>", "<C-w>-")

-- Puts all x targets into the black hole register
keymap.set("n", "x", '"_x')

-- Puts all c* targets into the black hole register
keymap.set("n", "c", '"_c', opts)
keymap.set("n", "C", '"_C', opts)
keymap.set("v", "c", '"_c', opts)
keymap.set("v", "C", '"_C', opts)

-- Paste over visual selection without storing the deleted text in the register
keymap.set("v", "p", '"_dP', opts) -- Delete selected text to black hole register, then paste
keymap.set("v", "P", '"_dP', opts) -- Same for pasting before

-- Diagnostics
keymap.set("n", "sj", function()
  vim.diagnostic.goto_next()
end, opts)
