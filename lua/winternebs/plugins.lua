local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  }
  print 'Installing packer close and reopen Neovim...'
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, 'packer')
if not status_ok then
  print 'packer not ok'
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float { border = 'rounded' }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)
  -- My plugins here

  -- Packer, you need packer to use packer
  use { 'wbthomason/packer.nvim', commit = '90b323bccc04ad9b23c971a85813a1405c7725a8' } -- Have packer manage itself

  -- Utils
  use { 'nvim-lua/plenary.nvim', commit = '31807eef4ed574854b8a53ae40ea3292033a78ea' } -- Useful lua functions used by lots of plugins
  use { 'nvim-lua/popup.nvim', commit = 'b7404d35d5d3548a82149238289fa71f7f6de4ac' }

  -- LSP
  use { 'neovim/nvim-lspconfig', commit = 'da7461b596d70fa47b50bf3a7acfaef94c47727d' } -- enable LSP
  use { 'williamboman/nvim-lsp-installer', commit = 'ae913cb4fd62d7a84fb1582e11f2e15b4d597123' } -- simple to use language server installer

  -- cmp plugins
  use { 'hrsh7th/nvim-cmp', commit = '913eb8599816b0b71fe959693080917d8063b26a' } -- The completion plugin
  use { 'hrsh7th/cmp-buffer', commit = '3022dbc9166796b644a841a02de8dd1cc1d311fa' } -- buffer completions
  use { 'hrsh7th/cmp-path', commit = '447c87cdd6e6d6a1d2488b1d43108bfa217f56e1' } -- path completions
  use { 'hrsh7th/cmp-nvim-lsp', commit = 'affe808a5c56b71630f17aa7c38e15c59fd648a8' } -- lsp completion
  use { 'hrsh7th/cmp-nvim-lua', commit = 'd276254e7198ab7d00f117e88e223b4bd8c02d21' } -- lua completion for nvim
  use { 'saadparwaiz1/cmp_luasnip', commit = 'a9de941bcbda508d0a45d28ae366bb3f08db2e36' } -- lua snippets
  use { 'jose-elias-alvarez/null-ls.nvim', commit = '8914051a3d399e9715833ad76bbf5fe69ea7faf0' } -- for formatters and linters
  use { 'jubnzv/virtual-types.nvim', commit = '31da847fa54b801f309a08123935626adda4aaad' }
  use { 'j-hui/fidget.nvim', commit = '492492e7d50452a9ace8346d31f6d6da40439f0e' }
  use { 'tzachar/cmp-tabnine', commit = '8f54df340baa6d1a7164a5388d0d1d3d8e4faa29', run = './install.sh', requires = 'hrsh7th/nvim-cmp' }
  use { 'RRethy/vim-illuminate', commit = '27f6ef135a88d9410a33cf92fc47f5c018df552c' } -- highlight other uses under cursor

  --  use { "simrat39/rust-tools.nvim", commit="367c9a8157f5a7818784f1d2737f582deab7b848"} -- ur not supposed to use this LOL
  --
  use { 'windwp/nvim-autopairs', commit = 'a7a8be3d2f2473300d070293903ac8b95edeccc1' } -- Autopairs, integrates with both cmp and treesitter
  --  use { "numToStr/Comment.nvim", commit="ae8c440fe98c65f3a941d6fc6de75538c5c1ecde"}
  --  use { "JoosepAlviste/nvim-ts-context-commentstring", commit="4befb8936f5cbec3b726300ab29edacb891e1a7b"}
  use { 'kyazdani42/nvim-web-devicons', commit = '2d02a56189e2bde11edd4712fea16f08a6656944' }
  use { 'nvim-lualine/lualine.nvim', commit = 'c0510ddec86070dbcacbd291736de27aabbf3bfe' }
  ----  use { "ahmedkhalf/project.nvim", commit=""}
  --  use { "lewis6991/impatient.nvim", commit="49f4ed4a96e0dec3425f270001f341f78400fb49"}
  --  use { "lukas-reineke/indent-blankline.nvim", commit="c15bbe9f23d88b5c0b4ca45a446e01a0a3913707"}
  --  use {"tpope/vim-surround", commit="bf3480dc9ae7bea34c78fbba4c65b4548b5b1fea"}
  use { 'vimwiki/vimwiki', commit = '63af6e72dd3fa840bffb3ebcb8c96970c02e0913' }
  --  use {"preservim/vim-markdown", commit="3a9643961233c2812816078af8bd1eaabc530dce"}
  --  use {"folke/zen-mode.nvim", commit="f1cc53d32b49cf962fb89a2eb0a31b85bb270f7c"}
  --
  -- Colorschemes
  use { 'gruvbox-community/gruvbox', commit = '95b120a15d0765037d2836d04e3360c273caf111' }
  --
  --
  --     -- snippets
  use { 'L3MON4D3/LuaSnip', commit = '7bd90385f59098cf6779c23eabe6b273b7f5c69f' } --snippet engine
  --  use { "rafamadriz/friendly-snippets" , commit="b2446100d9f6609526cf1839b4ce3dc1ff07ada0"} -- a bunch of snippets to use
  --
  --
  --  -- Telescope
  use { 'nvim-telescope/telescope.nvim', commit = 'd793de0f12d874c463e81edabee741b802c1a37a' }
  use { 'nvim-telescope/telescope-ui-select.nvim', commit = '62ea5e58c7bbe191297b983a9e7e89420f581369' }
  --
  --  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', commit = '11e88f698ac27081e2d238289474c4b8780007d3' }
  use { 'romgrk/nvim-treesitter-context', commit = '8e88b67d0dc386d6ba1b3d09c206f19a50bc0625' }
  --
  --  -- Git
  --  use { "lewis6991/gitsigns.nvim", commit="f6d93f90bed4f86ef204bb023b3bdea9fd27d7f6"}
  --
  --  -- DAP
  --  use { "mfussenegger/nvim-dap", commit="ad8b0de205a077b66cb301531bdc31c8fc7551b6"}
  --  use { "rcarriga/nvim-dap-ui", commit="225115ae986b39fdaffaf715e571dd43b3ac9670"}
  --  use { "ravenxrz/DAPInstall.nvim", commit="8798b4c36d33723e7bba6ed6e2c202f84bb300de"}
  --
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
