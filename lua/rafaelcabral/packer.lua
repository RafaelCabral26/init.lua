-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- 

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
 -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
--Color Schemes
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
	  vim.cmd('colorscheme rose-pine')
	  end
  })
use ({
        "rebelot/kanagawa.nvim",
        as = 'kanagawa',
        config = function()
        vim.cmd('colorscheme kanagawa-lotus')
        end
    })
 use ('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
 use ('theprimeagen/harpoon')
 use ('mbbill/undotree')
 use ('tpope/vim-fugitive')

 use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
        }
    } 
use({
	"Pocco81/auto-save.nvim",
	config = function()
		 require("auto-save").setup {
	        enabled = false		
		
		 }
	end,
})

use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
use {'nvim-tree/nvim-web-devicons'}
use {'sbdchd/neoformat'}
use {'prichrd/netrw.nvim'}
use{'windwp/nvim-ts-autotag'}
use {
  'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
use {'mfussenegger/nvim-dap'}
use {'nvim-telescope/telescope-dap.nvim'}
use {'mfussenegger/nvim-dap-python'}
use {'Pocco81/DAPInstall.nvim'}
    use{'rcarriga/nvim-dap-ui', requires = {"mfussenegger/nvim-dap"}}
            use{"theHamsta/nvim-dap-virtual-text"}
    use {'christoomey/vim-tmux-navigator'} --tmux and split window navigation
    use { "mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap"} }
end)

