
return require("packer").startup(function()
  -- Plugin configurations

  -- Packer
  use "wbthomason/packer.nvim"

  -- General
  -- use "scrooloose/nerdtree"                 -- Tree view
  -- use "xuyuanp/nerdtree-git-plugin"
  use "bronson/vim-trailing-whitespace"
  -- use "itchyny/lightline.vim"               -- Status line
  use "airblade/vim-gitgutter"
  use "bling/vim-airline"                   -- Status line
  use "lukas-reineke/indent-blankline.nvim" -- Indentation guide
  use "tpope/vim-commentary"
  use { "nvim-telescope/telescope.nvim", requires = {
    { "nvim-lua/popup.nvim" },
    { "nvim-lua/plenary.nvim" }
  } }
  -- use { "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } }
  use "easymotion/vim-easymotion"
  use "jiangmiao/auto-pairs"
  use "psliwka/vim-smoothie"                -- Smooth scrolling
  use "tpope/vim-surround"
  use "tpope/vim-fugitive"                  -- Git integration
  use "ervandew/supertab"
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use "nvim-treesitter/playground"
  -- use "dense-analysis/ale"
  -- use { "Shougo/deoplete.nvim", run = ":UpdateRemotePlugins" }
  -- use "ap/vim-buftabline"
  use "wfxr/minimap.vim"
  use "neovim/nvim-lspconfig"
  use "hrsh7th/nvim-compe"
  use "alvan/vim-closetag"
  -- use "kyazdani42/nvim-web-devicons"
  -- use "ryanoasis/vim-devicons"
  use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
  use 'kyazdani42/nvim-tree.lua'
  -- use 'rinx/nvim-minimap'
  use 'folke/lsp-colors.nvim'
  use 'folke/trouble.nvim'

  -- Colorschemes
  use "franbach/miramare"
  -- use "flazz/vim-colorschemes"
  -- use "altercation/vim-colors-solarized"
  use "joshdick/onedark.vim"
  -- use "junegunn/seoul256.vim"
  use "sainnhe/edge"
  use "sainnhe/sonokai"

  -- Language
  use "elixir-lang/vim-elixir" -- Elixir
  use "jdonaldson/vaxe"        -- Haxe
  use "dag/vim-fish"           -- fish script
  use "elmcast/elm-vim"        -- Elm

end)
