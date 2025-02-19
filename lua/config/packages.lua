local packages = {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
  'nvim-treesitter/playground',
  "rose-pine/neovim",
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { {'nvim-lua/plenary.nvim'} }
  },
  'mbbill/undotree',
  'ThePrimeagen/harpoon',
  'windwp/nvim-autopairs',
  'lewis6991/gitsigns.nvim',


}
require('lazy').setup(packages, opts)
