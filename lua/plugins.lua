-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use { 'nvim-lua/plenary.nvim' }

  use { 'j-morano/buffer_manager.nvim' }

  use {
	'nvim-telescope/telescope.nvim', tag = '0.1.1',
	requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {'nvim-tree/nvim-web-devicons'}

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {'lewis6991/gitsigns.nvim'}

  -- disabled 
  use {'romgrk/barbar.nvim', disable=true }

  use { 'nanozuki/tabby.nvim' }

  use {
      'nvim-neo-tree/neo-tree.nvim',
      branch = "v3.x",
      requires = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons",
          "MunifTanjim/nui.nvim",
          {
              'sin7ax/nvim-window-picker',
              tag = 'v2.*',
              config = function()
                  require 'window-picker'.setup({
                      filter_rules = {
                          include_current_win = false,
                          autoselect_one = true,
                          bo = {
                              filetype = { 'neo-tree', 'neo-tree-popup', 'notify' },
                              buftype = { 'terminal', 'quickfix' },
                          },
                      },
                  })
              end,
          },
      },
  }

  -- themes
  use ({
    "neanias/everforest-nvim",
    config = function()
        require("everforest").setup()
    end,
  })
  use { "ellisonleao/gruvbox.nvim" }
  use { 'rose-pine/neovim', as = 'rose-pine' }
  use { 'shaunsingh/moonlight.nvim' }
  use { 'frenzyexists/aquarium-vim' }
  use { 'catppuccin/nvim', as = 'catpuccin' }
  use { 'rebelot/kanagawa.nvim' }
  use { 'savq/melange-nvim' }

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  }

  
  use {"akinsho/toggleterm.nvim"}

end)
