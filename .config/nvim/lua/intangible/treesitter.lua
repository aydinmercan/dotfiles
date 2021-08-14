vim.cmd [[packadd nvim-treesitter]]

require('nvim-treesitter.configs').setup {
    ensure_installed = 'maintained',
    highlight = {
        enable = true,
    },
    incremental_selection = {
        enable = true,
    },
    indent = {
        enable = true,
        disable = { 'c', 'cpp', 'java' },
    },
}

vim.api.nvim_exec([[
autocmd BufNewFile,BufRead *.ll set ft=llvm
autocmd BufNewFile,BufRead *.zig set ft=zig
autocmd BufNewFile,BufRead *.nix set ft=nix
]],false )
