vim.filetype.add({
    extension = {
        ll = "llvm",
        v = "verilog",
    },
    filename = {
        [".clang-format"] = "yaml",
    },
    pattern = {
        ["Containerfile.*"] = "dockerfile",
    },
})
