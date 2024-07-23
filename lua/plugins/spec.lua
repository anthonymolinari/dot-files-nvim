return {
  'wbthomason/packer.nvim',
  'nvim-lua/plenary.nvim',
  'matbme/JABS.nvim',
  {
	'nvim-telescope/telescope.nvim', tag = '0.1.4',
	dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  'nvim-tree/nvim-web-devicons',
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
  },
  'AckslD/muren.nvim',
  'stevearc/overseer.nvim',
  { -- leetcode plugin
      "kawre/leetcode.nvim",
      dependencies = {
          "nvim-telescope/telescope.nvim",
          "nvim-lua/plenary.nvim",
          "MunifTanjim/nui.nvim",
      }
  },
  -- git plugins
  'sindrets/diffview.nvim',
  'tpope/vim-fugitive',
  'lewis6991/gitsigns.nvim',
  {
      'NeogitOrg/neogit',
      dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
        'sindrets/diffview.nvim',
      },
  },
  {
      'nvim-neo-tree/neo-tree.nvim',
      branch = "v3.x",
      dependencies = {
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
  },
  -- themes
  {
    "neanias/everforest-nvim",
    config = function()
        require("everforest").setup()
    end,
  },
  "ellisonleao/gruvbox.nvim",
  { 'rose-pine/neovim', as = 'rose-pine' },
  'shaunsingh/moonlight.nvim',
  'frenzyexists/aquarium-vim',
  { 'catppuccin/nvim', as = 'catpuccin' },
  'rebelot/kanagawa.nvim',
  'savq/melange-nvim',
  'Mofiqul/vscode.nvim',
  'rafamadriz/neon',
  {'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'}},
  'nvim-treesitter/playground',
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
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
  },
  "akinsho/toggleterm.nvim",
}
