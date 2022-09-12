vim.opt.guicursor = ""

vim.opt.mouse = "vi" -- Judging yet? ? 

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.hidden = true
vim.opt.errorbells = false

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodirnew"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Give more space for displaying messages.
vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

-- Don't pass messages to |ins-completion-menu|.
vim.opt.shortmess:append("c")

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.showmode = false

--vim.g.netrw_browse_split = 0
--vim.g.netrw_banner = 0
--vim.g.netrw_winsize = 25

vim.g.gruvbox_bold = 1
vim.g.gruvbox_tialic= 1
--
--vim.g.rooter_patterns = {"!node_modules", ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json"}
--
--vim.g.vimwiki_list = {{path = "/mnt/l/winterNebs/Documents/musings/vimwiki", syntax = "markdown", ext =  ".md"}}

vim.cmd("colorscheme gruvbox")

