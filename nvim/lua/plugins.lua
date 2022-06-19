return require('packer').startup(function()
  use { 'wbthomason/packer.nvim' }
  use { 'nathom/filetype.nvim' }
  use { 'lewis6991/impatient.nvim' }
  use { 'nvim-lua/plenary.nvim' }
  use { 'morhetz/gruvbox' }
  use { 'NLKNguyen/papercolor-theme'}
  use { 'tpope/vim-fugitive', config = "require('vim-fugitive')" }
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' }, event = "BufRead", config = "require('_gitsigns')" }
  use { 'tpope/vim-surround' }
  use { 'mg979/vim-visual-multi' }
  use { 'airblade/vim-rooter' }
  use { 'folke/which-key.nvim', config = "require('_which-key')" }
  use { 'hrsh7th/nvim-cmp', config = "require('_cmp')" }
  use { 'hrsh7th/cmp-nvim-lsp', after = { 'nvim-cmp', "nvim-lsp-ts-utils" } }
  use { 'hrsh7th/cmp-nvim-lua', after = 'nvim-cmp' }
  use { 'hrsh7th/cmp-path', after = 'nvim-cmp' }
  use { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' }
  use { 'hrsh7th/cmp-cmdline', after = 'nvim-cmp' }
  use { 'hrsh7th/cmp-vsnip', after = 'nvim-cmp' }
  use { 'hrsh7th/vim-vsnip', after = 'nvim-cmp' }
  use { 'neovim/nvim-lspconfig', after = { "cmp-nvim-lsp" }, config = "require('lsp/init')", requires = { 'williamboman/nvim-lsp-installer' } }
  use { 'editorconfig/editorconfig-vim' }
  use { 'rcarriga/nvim-notify' }
  use { 'ggandor/lightspeed.nvim' }
  use { 'stevearc/dressing.nvim' }
  use { 'akinsho/toggleterm.nvim' }
  use { 'numToStr/Comment.nvim', config = function() require('Comment').setup() end }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use { 'windwp/nvim-autopairs', after = { 'nvim-treesitter', 'nvim-cmp' }, config = "require('_autopairs')" }
  use { 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' } }
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use { 'jose-elias-alvarez/nvim-lsp-ts-utils', after = { 'nvim-treesitter' } }
  use { 'romgrk/barbar.nvim', requires = { 'kyazdani42/nvim-web-devicons' } }
  use { "folke/todo-comments.nvim", requires = "nvim-lua/plenary.nvim" }
  use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" }
end)
