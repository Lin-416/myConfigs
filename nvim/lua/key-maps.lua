local opts = { noremap = true, silent = true }

-- space+e 打开nvim-tree
vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- space+d 显示报错
vim.api.nvim_set_keymap('n', '<leader>d', '<cmd>lua vim.diagnostic.open_float(nil, { focusable = false })<CR>',
	{ noremap = true, silent = true })

-- 添加 option+上下移动当前行
vim.api.nvim_set_keymap('n', '<A-Up>', ':m .-2<CR>==', opts)
vim.api.nvim_set_keymap('n', '<A-Down>', ':m .+1<CR>==', opts)
vim.api.nvim_set_keymap('i', '<A-Up>', '<Esc>:m .-2<CR>==gi', opts)
vim.api.nvim_set_keymap('i', '<A-Down>', '<Esc>:m .+1<CR>==gi', opts)
vim.api.nvim_set_keymap('v', '<A-Up>', ':m \'<-2<CR>gv=gv', opts)
vim.api.nvim_set_keymap('v', '<A-Down>', ':m \'>+1<CR>gv=gv', opts)

-- 添加 V模式下 Ctrl+C 复制 Ctrl+X 剪切
vim.api.nvim_set_keymap('v', '<C-c>', '"+y', opts)
vim.api.nvim_set_keymap('v', '<C-x>', '"+d', opts)

-- 添加 cmd+/ 快速注释
vim.api.nvim_set_keymap('n', '<C-/>', 'gcc', { noremap = false, silent = true })
vim.api.nvim_set_keymap('v', '<C-/>', 'gc', { noremap = false, silent = true })
