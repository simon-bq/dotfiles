local map = require("utils").map

map("n", "<Leader>gg", ":Git<CR>")
map("n", "<Leader>gj", "<plug>(signify-next-hunk)")
map("n", "<Leader>gk", "<plug>(signify-prev-hunk)")
map("n", "<Leader>gf", ":lua require'telescope.builtin'.git_files{}<CR>", { noremap = true })
