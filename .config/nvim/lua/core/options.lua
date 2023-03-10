local opt = vim.opt

opt.swapfile = false                  -- Don't use swapfile

-----------------------------------------------------------
-- Neovim UI
-----------------------------------------------------------
opt.number = true           -- Show line number
opt.relativenumber = true           -- 
opt.showmatch = true        -- Highlight matching parenthesis
-- opt.colorcolumn = '80'      -- Line lenght marker at 80 columns
opt.splitright = true       -- Vertical split to the right
opt.splitbelow = true       -- Horizontal split to the bottom
opt.ignorecase = true       -- Ignore case letters when search
opt.smartcase = true        -- Ignore lowercase for the whole pattern
opt.linebreak = true        -- Wrap on word boundary
opt.termguicolors = true
-- Tabs/indentation
opt.expandtab = true        -- Use spaces instead of tabs
opt.shiftwidth = 4          -- Shift 4 spaces when tab
opt.tabstop = 4             -- 1 tab == 4 spaces
opt.smartindent = true      -- Autoindent new lines
vim.api.nvim_create_autocmd("FocusLost", {
    pattern = "*",
    callback = function()
        vim.cmd(":wa")
    end
})

require("github-theme").setup({
  theme_style = "light",
})
vim.g.python3_host_prog='/Users/anhdo/.pyenv/versions/pyvim/bin/python'
