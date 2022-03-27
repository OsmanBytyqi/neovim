local keymap = vim.api.nvim_set_keymap
keymap('n','<c-s>',':w<CR>',{})
keymap('i','jj','<Esc>',{})
keymap('n','<c-d>',':NvimTreeToggle<CR>',{})
--keymap('n','<c-t>',':below terminal<CR>',{})
keymap('n','<c-p>',':TagbarToggle<CR>',{})
keymap('n','<c-f>','/',{})
keymap('n','<c-h>',':noh<CR>',{})
keymap('i','{','{}',{})
local opts={noremap=true}
keymap('n','<c-j>','<c-w>j',opts)
keymap('n','<c-h>','<c-w>h',opts)
keymap('n','<c-k>','<c-w>k',opts)
keymap('n','<c-l>','<c-w>l',opts)
