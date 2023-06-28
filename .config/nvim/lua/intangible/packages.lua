-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({
    {'nvim-lua/completion-nvim'},

    {
        'neovim/nvim-lspconfig',
        config = function()
            local lsp = require('lspconfig')
            lsp.pyright.setup{}
            lsp.gopls.setup{}
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
    },

    {
        'folke/tokyonight.nvim',
        config = function()
            require('tokyonight').setup({
                style = "night",
            })

            vim.cmd [[ colorscheme tokyonight ]]
        end,
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = {'kyazdani42/nvim-web-devicons', lazy = true},
        config = function()
            require('lualine').setup {
                options = {
                    theme = 'tokyonight',
                    section_separators = '',
                    component_separators = ' ',
                }
            }
        end
    },

    {
        'nvim-telescope/telescope.nvim',
        dependencies = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
        init = function()
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
    },


    {
        'mhartington/formatter.nvim',
        init = function()
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
    },

    {
        'nvim-treesitter/nvim-treesitter',
        config = function()
            require('nvim-treesitter.configs').setup {
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
                ignore_install = { 'v' },
                ensure_installed = {
                    'bibtex',
                    'c',
                    'clojure',
                    'cmake',
                    'comment',
                    'commonlisp',
                    'cpp',
                    'dockerfile',
                    'dot',
                    'eex',
                    'elixir',
                    'erlang',
                    'git_config',
                    'git_rebase',
                    'gitattributes',
                    'gitcommit',
                    'gitignore',
                    'go',
                    'gomod',
                    'gosum',
                    'gowork',
                    'haskell',
                    'heex',
                    'hjson',
                    'http',
                    'ini',
                    'java',
                    'jq',
                    'json',
                    'json5',
                    'jsonnet',
                    'julia',
                    'latex',
                    'llvm',
                    'lua',
                    'luap',
                    'luadoc',
                    'make',
                    'markdown',
                    'markdown_inline',
                    'meson',
                    'ocaml',
                    'ocaml_interface',
                    'proto',
                    'python',
                    'r',
                    'racket',
                    'regex',
                    'rust',
                    'scala',
                    'scheme',
                    'sql',
                    'starlark',
                    'toml',
                    'verilog',
                    'vim',
                    'vimdoc',
                    'yaml',
                    'zig',
                },
            }

            vim.api.nvim_exec([[
                set foldmethod=expr
                set foldexpr=nvim_treesitter#foldexpr()
                set foldlevel=9999
            ]], false)
        end
    },

})
