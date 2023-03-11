local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.g.mapleader = ','
vim.g.maplocalleader = ','

map('i', 'jk', '<Esc>')
map('i', 'kj', '<Esc>')
map('n', '<leader>r', ':so %<CR>')
-- keybindings for editing commands
map('n', '<leader>s', ':wa<CR>')--save
map('n', '<leader>x', ':x<CR>')--save and quit
map('n', '<leader>q', ':q<CR>')--quit
map('n', '<leader>v', '"+p')--paste from clipboard
map('n', '<leader>c', '"+c')--copy to clipboard
-- split window
map('n', '<leader>h', ':split<CR>')
map('n', 'vv', ':vsplit<CR>')



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
map('n', '<C-p>', ':FZF <CR>')
map('n', '<C-S-p>', ':FZF %:p:h<CR>')
