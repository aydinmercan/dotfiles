vim.filetype.add({
    extension = {
        ll = "llvm",
        v = "verilog",
    },
    filename = {
        [".clang-format"] = "yaml",
        ["Justfile"] = "make",
    },
    pattern = {
        ["Containerfile.*"] = "dockerfile",
    },
})
