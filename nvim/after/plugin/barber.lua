require('barbar').setup()
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', 'nn', '<Cmd>BufferNext<CR>', opts)
map('n', 'ww', '<Cmd>BufferPrevious<CR>', opts)

map('n', '<C-j>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<C-k>', '<Cmd>BufferMoveNext<CR>', opts)

map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

map('n', '<C-q>', '<Cmd>q<CR>', opts)
map('n', '<C-w>', '<Cmd>BufferClose<CR>', opts)
