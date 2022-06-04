local map = require("utils").map

map("n", "<Leader>ss", ":Telescope live_grep<CR>")
map("n", "<Leader>ff", ":Telescope git_files<CR>")
map("n", "<Leader>b", ":lua require'telescope.builtin'.buffers({ sort_lastused = true, ignore_current_buffer = true })<CR>")
map("n", "<Leader>su", ":lua require'telescope.builtin'.grep_string{}<CR>", { noremap = true })
map("n", "<Leader>sr", ":lua require'telescope.builtin'.lsp_references{}<CR>", { noremap = true })
map("n", "<Leader>sca", ":lua require'telescope.builtin'.lsp_code_actions{}<CR>", { noremap = true })

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}
