-- Appearence
vim.o.title = true
vim.o.termguicolors = true
vim.o.showmode = false
vim.wo.number = true
vim.wo.signcolumn = 'number'
vim.o.guifont = 'Symbols Nerd Font:h12'
vim.o.magic = true
vim.o.background = 'dark'
vim.g.tokyonight_style = 'night'
vim.g.colors_name = 'tokyonight'

-- Better completion
vim.o.completeopt = 'menuone,noinsert,noselect'
vim.o.shortmess = vim.o.shortmess .. 'c'

-- Trust plugin handling
vim.cmd [[ syntax enable ]]
vim.cmd [[ filetype plugin indent on ]]

-- Large undo size
vim.bo.undofile = true
vim.o.undofile = true
vim.o.undolevels = 1000
vim.o.undoreload = 1000

-- Sane encoding and binary handling
vim.o.bomb = true
vim.o.binary = true
vim.o.encoding = 'utf-8'
vim.o.fileencoding = 'utf-8'
vim.o.fileencodings = 'utf-8'

-- Mouse
vim.o.mouse = 'ni'

-- Indentation
vim.bo.expandtab = true
vim.o.expandtab = true
vim.bo.shiftwidth = 4
vim.o.shiftwidth = 4
vim.bo.tabstop = 4
vim.o.tabstop = 4

-- Grep
vim.o.grepprg = 'rg --vimgrep --no-heading --smart-case'

-- Deactivate some unused builtins.
vim.g.loaded_tutor_mode_plugin = 0

-- Folding
vim.api.nvim_exec([[
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set foldlevel=99999
]], false)


-- Misc.
vim.g.tex_flavor = "latex"
vim.g.asmsyntax = "nasm"
vim.o.lazyredraw = true
vim.o.clipboard = "unnamed,unnamedplus"
vim.o.virtualedit = "block"
vim.o.autoindent = true
vim.o.copyindent = true
