vim.cmd [[packadd packer.nvim ]]

return require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}

    use {'neovim/nvim-lspconfig'}
    use {'nvim-lua/popup.nvim'}
    use {'nvim-lua/plenary.nvim'}
    use {'nvim-lua/completion-nvim'}
    use {'nvim-treesitter/nvim-treesitter'}
    use {'editorconfig/editorconfig-vim'}
    use {'norcalli/snippets.nvim'}
    use {'folke/tokyonight.nvim'}

    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = function()
            require('lualine').setup {
                options = { theme = 'tokyonight' }
            }
        end
    }

    use {
        'ntpeters/vim-better-whitespace',
        setup = function()
            vim.g.better_whitespace_filetypes_blacklist = {
                'diff', 'gitcommit', 'packer'
            }
        end
    }

    use {
        'sbdchd/neoformat',
        setup = function()
            vim.api.nvim_set_keymap('n', '<C-f>', ':Neoformat<CR>', {noremap = true, silent = true})
            vim.g.neoformat_basic_format_align = 1
            vim.g.neoformat_basic_format_retab = 1
            vim.g.neoformat_basic_format_trim = 1
        end
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
        setup = function()
            vim.api.nvim_set_keymap('n', '<C-m>', ':Telescope find_files<CR>', {noremap = true, silent = true})
            vim.api.nvim_set_keymap('n', '<C-t>', ':Telescope tags<CR>', {noremap = true})
        end
    }
end)
