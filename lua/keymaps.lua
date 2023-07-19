-- [[ Basic Keymaps ]]
-- Keymaps for better default experience
-- See `:help vim.keymap.set()`

vim.keymap.set('n', 'FF', 'gT', {desc = "go to previous tab"})
vim.keymap.set('n', 'ff', 'gt', {desc = "go to next tab"})
vim.keymap.set('n', '#', '#N')
vim.keymap.set('n', 'zl', 'zt')
vim.keymap.set('n', '：', ':')
vim.keymap.set('n', '<F8>', ':vsplit<CR>:terminal<CR>:set nonu<CR>i')
vim.keymap.set('n', '<F5>', '<Cmd>Neotree toggle<CR>')
vim.keymap.set('n', '<F6>', '<Cmd>Neotree reveal<CR>')
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>')
vim.keymap.set('n', '<leader>gj', '<Cmd>Joshuto<CR>', {desc = '[G]o to [J]oshuto'})

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- move
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
