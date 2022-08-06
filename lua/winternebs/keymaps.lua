-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = false }


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

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')


-- Escape From Terminal
keymap("t", "<Esc>", "<C-\\><C-n>")
