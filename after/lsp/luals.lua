-- Clearly doesn't work as this print message is never seen. 
print("We are in LUALS")
return {
    -- Command and argument to start the server
    cmd = {'lua-language-server'},
    -- Filetypes to automatically attach to
    filetypes = {'lua'},
    root_markers = {'.luarc.json', '.luarc.jsonc'},
}
