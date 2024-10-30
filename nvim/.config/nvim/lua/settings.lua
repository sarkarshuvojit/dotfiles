-- basics
vim.o.swapfile = false
vim.o.so = 15

vim.opt.colorcolumn = "80"

vim.o.nu = true
vim.o.rnu = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.bo.expandtab = true

vim.o.termguicolors = true


vim.cmd("colorscheme lunaperche")

vim.cmd("autocmd VimEnter * doautocmd FileType")

vim.opt.completeopt = {'menu', 'menuone', 'noselect'}
