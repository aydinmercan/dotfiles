vim.cmd [[ autocmd BufNewFile,BufRead *.rs set ft=rust ]]
vim.cmd [[ autocmd BufNewFile,BufRead *.ll set ft=llvm ]]
vim.cmd [[ autocmd BufNewFile,BufRead *.S set ft=asm ]]
vim.cmd [[ autocmd BufWritePost packages.lua PackerCompile ]]

require 'intangible.options'
require 'intangible.packages'
require 'intangible.keymap'
require 'intangible.telescope'
require 'intangible.statusbar'
