local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<Leader>i", ":Telescope import<Return>")
-- Increment/decrement
keymap("n", "+", "<C-a>")
keymap("n", "-", "<C-x>")

keymap("n", "<M-tab>", ":bnext<Return>")
-- get command
keymap("n", "<leader>gP", ":!git push<Return>")
keymap("n", "<leader>gp", ":!git pull<Return>")
keymap("n", "<leader>gc", ":!git commit -m 'input{}'")

-- New tab
keymap("n", "<leader><tab>n", ":tabedit<Return>")
keymap("n", "<tab>", ":tabnext<Return>", opts)
keymap("n", "<s-tab>", ":tabprev<Return>", opts)

-- save
keymap("n", "<C-s>", ":w<Return>", opts)
-- close
keymap("n", "<C-q>", ":qa<Return>", opts)
-- split window
keymap("n", "<leader>wv", ":split<Return>", opts)
keymap("n", "<leader>wh", ":vsplit<Return>", opts)

-- Move window
keymap("n", "<leader><left>", "<C-w>h")
keymap("n", "<leader><up>", "<C-w>k")
keymap("n", "<leader><down>", "<C-w>j")
keymap("n", "<leader><right>", "<C-w>l")

-- Resize window
keymap("n", "<M-left>", "<C-w><")
keymap("n", "<M-right>", "<C-w>>")
keymap("n", "<M-up>", "<C-w>+")
keymap("n", "<M-down>", "<C-w>-")

-- uppercase
keymap("n", "su", 'gUi"')
keymap("n", "sl", 'gui"')

-- Diagnostics
keymap("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)

keymap("n", "<leader>r", function()
  require("craftzdog.utils").replaceHexWithHSL()
end)

-- VISUAL MODE
keymap("v", "J", ":m '>+1<CR>gv=gv") -- Shift visual selected line down
keymap("v", "K", ":m '<-2<CR>gv=gv") -- Shift visual selected line upyi
