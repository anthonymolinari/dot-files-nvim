---@diagnostic disable: undefined-global
-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use { 'nvim-lua/plenary.nvim' }

  use { 'matbme/JABS.nvim'}

  use {
	'nvim-telescope/telescope.nvim', tag = '0.1.4',
	requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {'nvim-tree/nvim-web-devicons'}

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use {'AckslD/muren.nvim'}

  use {'stevearc/overseer.nvim'}

  -- leetcode plugin
  use ({
      "kawre/leetcode.nvim",
      requires = {
          "nvim-telescope/telescope.nvim",
          "nvim-lua/plenary.nvim",
          "MunifTanjim/nui.nvim",
      }
 })


  -- git plugins
  use {'sindrets/diffview.nvim'}
  use {'tpope/vim-fugitive'}
  use {'lewis6991/gitsigns.nvim'}
  use {
      'NeogitOrg/neogit',
      requires = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
        'sindrets/diffview.nvim',
      },
  }

  use {
      'nvim-neo-tree/neo-tree.nvim',
      branch = "v3.x",
      requires = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons",
          "MunifTanjim/nui.nvim",
          {
              's1n7ax/nvim-window-picker',
              tag = '2.*',
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
  use { 'Mofiqul/vscode.nvim' }
  use { 'rafamadriz/neon' }

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
  use('nvim-treesitter/playground')

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
