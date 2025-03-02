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
  {
    'williamboman/mason.nvim',
    config = function()
      pcall(vim.cmd, 'MasonUpdate')
    end,
  },
  'williamboman/mason-lspconfig.nvim' , -- Optional
  'ThePrimeagen/harpoon',
  'windwp/nvim-autopairs',
  'lewis6991/gitsigns.nvim',
  'deoplete-plugins/deoplete-clang',
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  'MunifTanjim/nui.nvim',
  'onsails/lspkind.nvim',
  {
    'VonHeikemen/lsp-zero.nvim',
    dependencies = {
      'neovim/nvim-lspconfig' , -- Required
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim' , -- Optional

      -- Autocompletion
      'hrsh7th/nvim-cmp' , -- Required
      'hrsh7th/cmp-nvim-lsp' , -- Required
      'hrsh7th/cmp-buffer' , -- Optional
      'hrsh7th/cmp-path' , -- Optional
      'saadparwaiz1/cmp_luasnip' , -- Optional
      'hrsh7th/cmp-nvim-lua' , -- Optional

      -- Snippets
      'L3MON4D3/LuaSnip' ,    -- Required
      'rafamadriz/friendly-snippets' , -- Optional
    }

  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "luckasRanarison/tailwind-tools.nvim",
      "onsails/lspkind-nvim",
      -- ...
    }
  },
  {
    "luckasRanarison/tailwind-tools.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },
  'kyazdani42/nvim-web-devicons',
  'jose-elias-alvarez/null-ls.nvim',
  'MunifTanjim/prettier.nvim',
  'windwp/nvim-ts-autotag',
  'norcalli/nvim-colorizer.lua',
  {
    'nvimdev/lspsaga.nvim',
    dependencies = 'nvim-lspconfig',
    config = function()
      require('lspsaga').setup({})
    end,
  },
  "nvim-lua/plenary.nvim",
  "github/copilot.vim",
  'tpope/vim-fugitive',
  'prabirshrestha/vim-lsp',
  'Shougo/deoplete.nvim',
  'lighttiger2505/deoplete-vim-lsp',
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    lazy = false,
    version = false, -- Set this to "*" to always pull the latest release version, or set it to false to update to the latest code changes.
    opts = {
      -- add any opts here
      -- for example
      provider = "openai",
      openai = {
        endpoint = "https://api.openai.com/v1",
        model = "gpt-4o", -- your desired model (or use gpt-4o, etc.)
        timeout = 30000, -- timeout in milliseconds
        temperature = 0, -- adjust if needed
        max_tokens = 4096,
        reasoning_effort = "high" -- only supported for "o" models
      },
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = "make",
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below dependencies are optional,
      "echasnovski/mini.pick", -- for file_selector provider mini.pick
      "nvim-telescope/telescope.nvim", -- for file_selector provider telescope
      "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
      "ibhagwan/fzf-lua", -- for file_selector provider fzf
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "zbirenbaum/copilot.lua", -- for providers='copilot'
      {
        -- support for image pasting
        "HakonHarnes/img-clip.nvim",
        event = "VeryLazy",
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
      },
      {
        -- Make sure to set this up properly if you have lazy=true
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  }








}
require('lazy').setup(packages, opts)
