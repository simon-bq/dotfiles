local map = require("utils").map

--- faster window navigation
map("n", "<M-h>", ":wincmd h<CR>")
map("n", "<M-j>", ":wincmd j<CR>")
map("n", "<M-k>", ":wincmd k<CR>")
map("n", "<M-l>", ":wincmd l<CR>")
map("n", "<M-q>", ":wincmd q<CR>")
map("n", "<M-r>", ":wincmd r<CR>")
map("n", "<M-r>", ":wincmd r<CR>")

--- faster window creation
map("n", "<M-S-j>", ":wincmd s<CR>")
map("n", "<M-S-k>", ":wincmd s<CR>:wincmd k<CR>")
map("n", "<M-S-h>", ":wincmd v<CR>:wincmd h<CR>")
map("n", "<M-S-l>", ":wincmd v<CR>")

--- copy paste to system clipboard
map("v", "<Leader>y", '"+y', { noremap = true })
map("n", "<Leader>p", '"+p', { noremap = true })
map("n", "<Leader>P", '"+P', { noremap = true })

--- move line in normal, instert and visual mode
map("n", "<C-j>", ":m .+1<CR>==", { noremap = true })
map("n", "<C-k>", ":m .-2<CR>==", { noremap = true })
map("i", "<C-j>", "<Esc>:m .+1<CR>==gi", { noremap = true })
map("i", "<C-k>", "<Esc>:m .-2<CR>==gi", { noremap = true })
map("v", "<C-j>", ":m '>+1<CR>gv=gv", { noremap = true })
map("v", "<C-k>", ":m '<-2<CR>gv=gv", { noremap = true })

--- follow link
map("n", "ü", "<c-]>", { noremap = true })

--- fast esc
map("i", "jj", "<Esc>")
map("n", "<Leader><Leader>", ":noh<CR>")
