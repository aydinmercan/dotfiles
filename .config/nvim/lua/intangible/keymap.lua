-- Saner nagivation and search
vim.g.mapleader = ","

--
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })

-- Tab Control
vim.api.nvim_set_keymap('n', 'tn', ':tabnew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'tq', ':tabclose<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-h>', 'gT', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<A-l>', 'gt', { noremap = true, silent = true })

-- Split control via C leader
vim.api.nvim_set_keymap('n', 'tv', ':vsplit<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'th', ':split<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-W><C-H>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-W><C-J>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-W><C-K>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-W><C-L>', { noremap = true, silent = true })

-- Clear search highlight
vim.api.nvim_set_keymap('n', '<C-/>', ':nohlsearch<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-_>', ':nohlsearch<CR>', { noremap = true, silent = true })

-- Q as a macro quickloader
vim.api.nvim_set_keymap('n', 'Q', '@q', { noremap = true, silent = true })

-- I don't want F1 to search
vim.api.nvim_set_keymap('n', '<F1>', '<ESC>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<F1>', '<ESC>', { noremap = true, silent = true })
