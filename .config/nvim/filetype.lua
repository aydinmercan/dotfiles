vim.filetype.add({
    extension = {
        ll = "llvm",
        v = "verilog",
    },
    filename = {
        [".clang-format"] = "yaml",
        ["APKBUILD"] = "sh",
        ["Justfile"] = "make",
        ["sbclrc"] = "lisp",
    },
    pattern = {
        ["(Container|Docker)file.*"] = "dockerfile",
    },
})
