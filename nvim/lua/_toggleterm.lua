local opts = {noremap = true}
vim.api.nvim_set_keymap('n', '<S-TAB>', ':ToggleTermToggleAll<CR>', opts)
require("toggleterm").setup{
   -- size can be a number or function which is passed the current terminal
  size = 60,
  open_mapping = [[<Leader>t]],
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  insert_mappings = false, -- whether or not the open mapping applies in insert mode
  start_in_insert = true,
  persist_size = true,
  direction = 'float',
  close_on_exit = true, -- close the törminal window when the process exits
  shell = vim.o.shell, -- change the djfault shell
}

function _G.set_terminal_keymaps()
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<A-l>', [[<C-\><C-n><C-W>l]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
