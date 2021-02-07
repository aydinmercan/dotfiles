vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}
    use {'nvim-lua/popup.nvim'}
    use {'nvim-lua/plenary.nvim'}
    use {'dracula/vim'}
    use {
        'sheerun/vim-polyglot',
        setup = function()
            vim.g.polyglot_disabled = {'v', 'c', 'cpp', 'rust'}
        end
    }
    use {
        'glepnir/galaxyline.nvim',
        branch = 'main',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
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
 --           vim.g.neoformat_enabled_cpp = {'clang-format'}
        end
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
        setup = function()
            vim.api.nvim_set_keymap('n', '<C-m>', ':Telescope find_files<CR>', {noremap = true, silent = true})
            vim.api.nvim_set_keymap('n', '<C-t>', ':Telescope tags<CR>', {noremap = true})
            --vim.api.nvim_set_keymap('n', '<C-m>', ':FZF<CR>', {noremap = true, silent = true})
        end
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            vim.api.nvim_set_option('foldmethod', 'expr')
            vim.api.nvim_set_option('foldexpr', 'nvim_treesitter#foldexpr()')
            require('nvim-treesitter.configs').setup {
                ensure_installed = {"c", "cpp", "rust", "verilog", "java", "json"},
                highlight = {
                    enable = true,
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        scope_incremental = "grc",
                    },
                },
            }
        end
    }
    use {'nvim-treesitter/playground'}
end)
