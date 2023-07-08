-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- ensures that packer is installed in your system and if not than the following command will do it
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

-- -- automatically runs :PackerSync when the file is saved
-- vim.cmd([[
-- augroup packer_user_config
-- autocmd!
-- autocmd BufWritePost packer.lua source <afile> | PackerSync 
-- augroup end
-- ]])

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- colorscheme kanagawa
    use "rebelot/kanagawa.nvim"

    -- Treesitter
    use ({'nvim-treesitter/nvim-treesitter'}, {run = ':TSUpdate'})

    -- Harpoon
    use 'ThePrimeagen/harpoon'

    -- Undo Tree for past changes made
    use 'mbbill/undotree'

    -- Vim tmux navigator
    use { "alexghergh/nvim-tmux-navigation" }

    -- dev icons
    use 'https://github.com/ryanoasis/vim-devicons' 
    
    -- Git icons
    use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status

    -- Lualine 
    use('https://github.com/tpope/vim-commentary')
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    
    -- Auto pairs
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    
    -- Planery Lua (comes with essential features needed for all the lua files to run)
    use "nvim-lua/plenary.nvim" 
    
    -- nvim-jdtls 
    use 'mfussenegger/nvim-jdtls' 

    -- Lsp Zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
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
        {'hrsh7th/nvim-cmp'},         -- Required
        {'hrsh7th/cmp-nvim-lsp'},     -- Required
        {'hrsh7th/cmp-buffer'},       -- Optional
        {'hrsh7th/cmp-path'},         -- Optional
        {'saadparwaiz1/cmp_luasnip'}, -- Optional
        {'hrsh7th/cmp-nvim-lua'},     -- Optional

        -- Snippets
        {'L3MON4D3/LuaSnip'},             -- Required
        {'rafamadriz/friendly-snippets'}, -- Optional
    }
}

if packer_bootstrap then
    require("packer").sync()
end
end)
