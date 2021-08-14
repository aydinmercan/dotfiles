vim.api.nvim_exec([[
filetype plugin on
set termguicolors
]], false)

require 'intangible.options'
require 'intangible.keymap'
require 'intangible.packages'
require 'intangible.telescope'
require 'intangible.treesitter'
