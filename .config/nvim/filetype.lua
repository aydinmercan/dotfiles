vim.filetype.add({
    extension = {
        ll = "llvm",
        v = "verilog",
    },
    filename = {
        [".clang-format"] = "yaml",
        ["APKBUILD"] = "sh",
        ["Justfile"] = "make",
    },
    pattern = {
        ["(Container|Docker)file.*"] = "dockerfile",
    },
})
