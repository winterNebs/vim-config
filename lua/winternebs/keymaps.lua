-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)

-- Window mappings
keymap("n", "<leader>h", ":wincmd h<CR>", opts)
keymap("n", "<leader>j", ":wincmd j<CR>", opts)
keymap("n", "<leader>k", ":wincmd k<CR>", opts)
keymap("n", "<leader>l", ":wincmd l<CR>", opts)

keymap("n", "<leader>vr", ":vertical resize 30<CR>", opts)
keymap("n", "<leader>r+", ":vertical resize +5<CR>", opts)
keymap("n", "<leader>r-", ":vertical resize -5<CR>", opts)
keymap("n", "<leader>u", ":UndotreeToggle<CR>", opts)
keymap("n", "<leader>t", ":split <Bar> :term<CR>", opts)
keymap("n", "<leader><Enter>", "o<Esc>", opts)
keymap("n", "<leader>cn", ":cn<CR>", opts)
keymap("n", "<leader>cp", ":cp<CR>", opts)
keymap("n", "<leader>ccl", ":ccl<CR>", opts)
