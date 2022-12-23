local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
    'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path
  })
  vim.api.nvim_command('packadd packer.nvim')
end
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- If you are using Packer
  use 'shaunsingh/nord.nvim'
  use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  use {
      'kyazdani42/nvim-tree.lua',
     requires = 
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
  }
  use {'windwp/nvim-ts-autotag'}
  use {'p00f/nvim-ts-rainbow'}
  use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
  use {'folke/which-key.nvim'}
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
}
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'  
    use 'hrsh7th/nvim-cmp' 
    use 'hrsh7th/cmp-vsnip' 
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use 'rafamadriz/friendly-snippets'  
    use 'onsails/lspkind.nvim'
    use 'williamboman/nvim-lsp-installer'
    use 'Neevash/awesome-flutter-snippets'
    use 'folke/tokyonight.nvim'
    use "lukas-reineke/indent-blankline.nvim"
    use 'norcalli/nvim-colorizer.lua'
    -- Lua
    use {
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
  }
    use {
      'numToStr/Comment.nvim',
        config = function()
        require('Comment').setup()
    end
    }
    -- Lua
use {
  "folke/twilight.nvim",
  config = function()
    require("twilight").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup()
end}
    use({
    "glepnir/lspsaga.nvim",
      branch = "main",
      config = function()
        local saga = require("lspsaga")

          saga.init_lsp_saga({
            -- your configuration
          })
      end,
    })
    use 'andweeb/presence.nvim'
    use 'glepnir/dashboard-nvim'
    use {"ellisonleao/glow.nvim"}
    use "lunarvim/horizon.nvim"
    use 'ChristianChiarulli/colorgen-nvim'
    use "lunarvim/synthwave84.nvim"
    use "jose-elias-alvarez/null-ls.nvim"
    use 'getomni/neovim'
    use 'navarasu/onedark.nvim'
    use 'github/copilot.vim'
--    use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}
--    use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
--   use 'rcarriga/nvim-notify'
use {
    'rcarriga/nvim-notify',
    config = function ()
      require("notify").setup {
        stages = 'fade_in_slide_out',
        background_colour = 'FloatShadow',
        timeout = 3000,
      }
      vim.notify = require('notify')
    end
  }
  use "numToStr/FTerm.nvim"

end)
