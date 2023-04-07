-- Appearence
vim.o.background = 'dark'
vim.o.guifont = 'Symbols Nerd Font:h12'
vim.o.magic = true
vim.o.showmode = false
vim.o.termguicolors = true
vim.o.title = true
vim.wo.number = true
vim.wo.signcolumn = 'number'

-- Better completion
vim.o.completeopt = 'menuone,noinsert,noselect'
vim.o.shortmess = vim.o.shortmess .. 'c'

-- Colorful
vim.cmd [[ set termguicolors ]]

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

-- Default Indentation
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.tabstop = 4

-- Grep
vim.o.grepprg = 'rg --vimgrep --no-heading --smart-case'

-- Deactivate some unused builtins.
vim.g.loaded_tutor_mode_plugin = 0

-- Misc.
vim.fn.matchadd('TSDanger', [[\s\+$]])
vim.g.asmsyntax = "nasm"
vim.g.tex_flavor = "latex"
vim.o.autoindent = true
vim.o.clipboard = "unnamedplus"
vim.o.copyindent = true
vim.o.lazyredraw = true
vim.o.virtualedit = "block"
