local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save file and quit
keymap.set("n", "<Leader>w", ":update<Return>", opts)
keymap.set("n", "<Leader>q", ":quit<Return>", opts)
keymap.set("n", "<Leader>Q", ":qa<Return>", opts)

-- File explorer with NvimTree
keymap.set("n", "<Leader>f", ":NvimTreeFindFile<Return>", opts)
keymap.set("n", "<Leader>t", ":NvimTreeToggle<Return>", opts)

-- Tabs
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
keymap.set("n", "tw", ":tabclose<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-S-h>", "<C-w><")
keymap.set("n", "<C-S-l>", "<C-w>>")
keymap.set("n", "<C-S-k>", "<C-w>+")
keymap.set("n", "<C-S-j>", "<C-w>-")

keymap.set("n", "x", '"_x')

-- Change inner word
keymap("n", "ciw", '"_ciw', opts)

-- Change inner sentence
keymap("n", "cis", '"_cis', opts)

-- Change inner paragraph
keymap("n", "cip", '"_cip', opts)

-- Change inner tag block
keymap("n", "cit", '"_cit', opts)

-- Change inner curly braces block
keymap("n", "ci{", '"_ci{', opts)

-- Change inner square brackets block
keymap("n", "ci[", '"_ci[', opts)

-- Change inner parentheses block
keymap("n", "ci(", '"_ci(', opts)
keymap("n", "ci)", '"_ci)', opts)

-- Change inner angle brackets block
keymap("n", "ci<", '"_ci<', opts)

-- Change inner double quotes
keymap("n", 'ci"', '"_ci"', opts)

-- Change inner single quote
keymap("n", "ci'", "\"_ci'", opts)

-- Change inner backtick
keymap("n", "ci`", '"_ci`', opts)

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
