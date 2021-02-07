-- Personal Config
vim.cmd [[ autocmd BufNewFile,BufRead *.ll set filetype=llvm ]]
vim.cmd [[ autocmd BufNewFile,BufRead *.S set filetype=asm ]]
vim.cmd [[ autocmd BufWritePost packages.lua PackerCompile ]]

require 'intangible.options'
require 'intangible.packages'
require 'intangible.keymap'
require 'intangible.telescope'
require 'intangible.statusbar'

vim.cmd [[ hi Normal guibg=Black ]]

