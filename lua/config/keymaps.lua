local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<Leader>i", ":Telescope import<Return>")
-- Increment/decrement
keymap("n", "+", "<C-a>")
keymap("n", "-", "<C-x>")

keymap("n", "<M-tab>", ":bnext<Return>")
-- get command
keymap("n", "<leader>ga", ":!git add")
keymap("n", "<leader>gP", ":!git push<Return>")
keymap("n", "<leader>gp", ":!git pull<Return>")
keymap("n", "<leader>gc", ":!git commit -m '<Focus>'")

-- New tab
keymap("n", "<leader><tab>n", ":tabedit<Return>")
keymap("n", "<tab>", ":tabnext<Return>", opts)
keymap("n", "<s-tab>", ":tabprev<Return>", opts)

-- save
keymap("n", "<C-s>", ":w<Return>", opts)
-- close
keymap("n", "<C-q>", ":qa<Return>", opts)
-- vplit window
keymap("n", "<leader>wv", ":split<Return>", opts)
keymap("n", "<leader>wh", ":vsplit<Return>", opts)

-- Move window
keymap("n", "<leader><left>", "<C-w>h")
keymap("n", "<leader><up>", "<C-w>k")
keymap("n", "<leader><down>", "<C-w>j")
keymap("n", "<leader><right>", "<C-w>l")

-- Resize window
keymap("n", "<C-w><left>", "<C-w><")
keymap("n", "<C-w><right>", "<C-w>>")
keymap("n", "<C-w><up>", "<C-w>+")
keymap("n", "<C-w><down>", "<C-w>-")

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
-- Stay in indent mode
-- keymap("v", "<", "<gv^", opts)
-- keymap("v", ">", ">gv^", opts)
--
-- -- Move text up and down
-- keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
-- keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
-- keymap("v", "p", '"_dP', opts)
