-- preprimeagen basic stuff
vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set autoindent")
vim.cmd("set smartindent")

--vim.cmd([[
--let &stc = '%#NonText#%{&nu?v:lnum:""}' .
--      \ '%=%{&rnu&&(v:lnum%2)?"\ ".v:relnum:""}' .
--      \ '%#LineNr#%{&rnu&&!(v:lnum%2)?"\ ".v:relnum:""}'
--]])

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.updatetime = 50
--vim.opt.colorcolumn = "80"
vim.opt.mouse = ""

vim.g.mapleader= " "
vim.g.maplocalleader = "\\"

-- Map Ctrl-Backspace to delete the previous word in insert mode.
-- solution: https://vim.fandom.com/wiki/Map_Ctrl-Backspace_to_delete_previous_word
vim.keymap.set({ "i", "c" }, "<C-BS>", "<C-w>", { noremap = true })
vim.keymap.set({ "i", "c" }, "<C-h>", "<C-w>", { noremap = true })

-- Marco Peluso (lsp and maybe some other stuff)
--vim.opt.winborder = "rounded"

-- primeagen useful keymaps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- allows similar functionality as alt + up/down arrow key in VSCode, but while in visual mode using J or K. Has some issues like not allowing a [count] or producing an error when you try to move below the file but that's fine.
vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv")
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z") -- when doing J, it keeps your cursor where it is rather than moving it to the space joining them

-- makes <C-d> and <C-u> place the cursor in the middle
--vim.keymap.set("n", "<C-d>", "<C-d>zz")
--vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- makes searching with "/" show results in the middle rather than anywhere, with this and the above 2 you have to decide whether this is actually what you want it seems to be just some ocd thing with primeagen but do some coding and see what you want
--vim.keymap.set("n", "n", "nzzzv")
--vim.keymap.set("n", "N", "Nzzzv")

-- very specific paste operator that allows you to paste over something without losing your old paste
vim.keymap.set("x", "<leader>p", "\"_dP")

-- basically does the same as "+ register before yank but with leader
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- same as above but with delete instead
vim.keymap.set("n", "<leader>d", "\"+d")
vim.keymap.set("v", "<leader>d", "\"+d")


-- i stoped doing the rest of Primeagen's remaps because I haven't encountered the problems yet or used it enough to want them but consider checking them out later.

