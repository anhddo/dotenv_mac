local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ','

map('i', 'jk', '<Esc>')
map('i', 'kj', '<Esc>')
map('n', '<leader>r', ':so %<CR>')
-- save/quit commands
map('n', '<leader>s', ':w<CR>')
map('n', '<leader>x', ':x<CR>')
map('n', '<leader>q', ':q<CR>')

-- Tab switching
map('n', '<leader>f', ':tabnext<CR>')
map('n', '<leader>d', ':tabprevious<CR>')
map('n', '<left>', ':tabprevious<CR>')
map('n', '<right>', ':tabnext<CR>')

map('n', '<C-n>', ':NvimTreeToggle<CR>') 
-- Switching between windows
map('n', '<C-j>', '<C-w>j')            
map('n', '<C-k>', '<C-w>k')            
map('n', '<C-h>', '<C-w>h')            
map('n', '<C-l>', '<C-w>l')            

-- fzf commands
map('n', '<C-p>', ':FZF %:p:h<CR>')
