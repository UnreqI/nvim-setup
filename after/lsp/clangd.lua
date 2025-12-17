return {
    cmd = {
        "clangd",
        "--query-driver=E:/MSYS2/clang64/bin/clang++.exe",
    },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_markers = { "compile_commands.json", ".git" },
}
