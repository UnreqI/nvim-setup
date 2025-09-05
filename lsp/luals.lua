return {
    -- Command and argument to start the server
    cmd = {'lua-language-server'},
    -- Filetypes to automatically attach to
    filetypes = {'lua'},
    root_markers = {'.luarc.json', '.luarc.jsonc'},
}
