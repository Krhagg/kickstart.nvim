print 'remap'
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'FileExplorer' })
vim.keymap.set('n', 'ö', ':', { desc = ':' })
vim.keymap.set('n', '<leader><C-s>', vim.cmd.w, { desc = 'Save' })

-- local opts = {noremap = true, silent = true}
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move Line Down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move Line Up' })
-- Normal mode mappings
vim.api.nvim_set_keymap('n', '<A-j>', ':m+<CR>==', { desc = 'Move Line Down' })
vim.api.nvim_set_keymap('n', '<A-k>', ':m-2<CR>==', { desc = 'Move Line Up' })

-- Insert mode mappings
vim.api.nvim_set_keymap('i', '<A-j>', '<Esc>:m+<CR>==gi', { desc = 'Move Line Down' })
vim.api.nvim_set_keymap('i', '<A-k>', '<Esc>:m-2<CR>==gi', { desc = 'Move Line Up' })

-- Visual mode mappings
vim.api.nvim_set_keymap('v', '<A-j>', ":m'>+<CR>gv=gv", { desc = 'Move Line Down' })
vim.api.nvim_set_keymap('v', '<A-k>', ':m-2<CR>gv=gv', { desc = 'Move Line Up' })

vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Merge Row' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Page Down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Page Up' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Find Next' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Find Prev' })

-- greatest remap ever
vim.keymap.set('x', '<leader>p', [["_dP]], { desc = 'Paste But Keep' })

-- next greatest remap ever : asbjornHaland
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "" })
-- vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "" })

-- vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete" })

-- This is going to get me cancelled
vim.keymap.set('i', '<C-c>', '<Esc>', { desc = '<Esc>' })

vim.keymap.set('n', 'Q', '<nop>', { desc = '' })
vim.keymap.set('n', '<C-f>', '<cmd>silent !tmux neww tmux-sessionizer<CR>')
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = 'Format Document' })

vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz', { desc = 'Jump Next Error' })
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz', { desc = 'Jump Pre Error' })
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz', { desc = 'lnext??' })
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz', { desc = 'lprev??' })

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'Search&Replace' })
vim.keymap.set('n', '<leader>x', '!<cmd> chmod +x %<CR>', { silent = false, desc = 'chmod+x' })

-- vim.keymap.set('n', '<leader>vpp', '<cmd>e ~/.config/nvim/lua/kristian/packer.lua<CR>', { desc = 'PackerConfigFile' })
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Make It Rain" });
vim.keymap.set('n', '<Leader>xn', ':let @+=@%<cr>', { desc = 'Copy Buffer name and path' })
vim.keymap.set('n', '<leader><leader>', function()
  vim.cmd 'so'
end, { desc = 'ShoutOut' })
