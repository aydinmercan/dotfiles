vim.cmd [[ packadd packer.nvim ]]

return require('packer').startup(function()
    use {'wbthomason/packer.nvim', opt = true}

    use {'nvim-lua/completion-nvim'}
    use {'editorconfig/editorconfig-vim'}

    use {
        'neovim/nvim-lspconfig',
        config = function()
            local lsp = require('lspconfig')
            lsp.gopls.setup{}
            lsp.pyright.setup{}
            lsp.clangd.setup{
                default_config = {
                    root_dir = [[
                        root_pattern(
                            '.git',
                            'compile_commands.json',
                        )
                    ]],
                }
            }
        end
    }

    use {
        'folke/tokyonight.nvim',
        config = function()
            require('tokyonight').setup({
                style = "night",
            })

            vim.cmd [[ colorscheme tokyonight ]]
        end,
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            require('nvim-treesitter.configs').setup {
                ensure_installed = 'all',
                ignore_install = { 'v' },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
                },
                incremental_selection = {
                    enable = true,
                },
                indent = {
                    enable = true,
                    disable = { 'c', 'cpp', 'java', 'python', 'toml' },
                },
            }

            vim.api.nvim_exec([[
                set foldmethod=expr
                set foldexpr=nvim_treesitter#foldexpr()
                set foldlevel=9999
            ]], false)
        end
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = function()
            require('lualine').setup {
                options = {
                    theme = 'tokyonight',
                    section_separators = '',
                    component_separators = ' ',
                }
            }
        end
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
        setup = function()
            vim.api.nvim_set_keymap('n', '<CR>', ':Telescope fd<CR>', {noremap = true, silent = true})
        end,

        config = function()
            local actions = require('telescope.actions')

            require('telescope').setup {
                defaults = {
                    mappings = {
                        i = {
                            ["<esc>"] = actions.close
                        },
                    },
                }
            }
        end,
    }


    use {
        'mhartington/formatter.nvim',
        setup = function()
            vim.api.nvim_set_keymap('n', '<C-f>', ':Format<CR>', {noremap = true, silent = true})
        end,

        config = function()
            require('formatter').setup({
                filetype = {
                    rust = {
                        function()
                            return {
                                exe = 'rustfmt',
                                args = {'--emit=stdout', '--edition=2021'},
                                stdin = true,
                            }
                        end
                    },

                    python = {
                        function()
                            return {
                                exe = 'black',
                                args = {'-q', '-'},
                                stdin = true,
                            }
                        end
                    },

                    cpp = {
                        function()
                            return {
                                exe = "clang-format",
                                args = {"--assume-filename", vim.api.nvim_buf_get_name(0)},
                                stdin = true,
                                cwd = vim.fn.expand('%:p:h')  -- Run clang-format in cwd of the file.
                            }
                        end
                    },

                    c = {
                        function()
                            return {
                                exe = "clang-format",
                                args = {"--assume-filename", vim.api.nvim_buf_get_name(0)},
                                stdin = true,
                                cwd = vim.fn.expand('%:p:h')  -- Run clang-format in cwd of the file.
                            }
                        end
                    },

                    go = {
                        function()
                            return {
                                exe = "gofmt",
                                stdin = true,
                            }
                        end
                    },

                    json = {
                        function()
                            return {
                                exe = "jq",
                                args = {".", "-M"},
                                stdin = true,
                            }
                        end
                    },

                    elixir = {
                        function()
                            return {
                                exe = "mix",
                                args = {"format", "-"},
                                stdin = true
                            }
                        end
                    },

                    zig = {
                        function()
                            return {
                                exe = "zig",
                                args = {"fmt", "--stdin"},
                                stdin = true,
                            }
                        end
                    },

                    ["*"] = {
                        require('formatter.filetypes.any').remove_trailing_whitespace
                    }
                }
            })
        end
    }

end)
