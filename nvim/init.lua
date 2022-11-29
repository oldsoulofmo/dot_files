require("packages")
require("mappings")

vim.opt.termguicolors = true
vim.cmd([[
let g:gruvbox_bold='0'
let g:gruvbox_improved_warnings='1'
let g:gruvbox_contrast_dark = 'hard'
]])
vim.cmd('set updatetime=100')
vim.cmd'colorscheme gruvbox'

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.wo.number = true
vim.wo.relativenumber = true

vim.o.background = "dark"

vim.cmd([[
highlight SignColumn 	  guibg=#1d2021 		ctermbg=1
highlight GitGutterAdd 	  guibg=#1d2021  guifg=#7cb518 ctermfg=2
highlight GitGutterChange guibg=#1d2021  guifg=#f4a261 ctermfg=3
highlight GitGutterDelete guibg=#1d2021  guifg=#f08080 ctermfg=1

highlight DiagnosticError guifg=#e63946 ctermfg=1

highlight BufferLineBackground guibg=#1d2021
highlight BufferLineFill guibg=#1d2021
highlight BufferLineNumbers guibg=#1d2021
highlight BufferLineSeparator guifg=#e63946 guibg=#1d2021
highlight BufferLineBufferSelected cterm=bold,italic gui=bold,italic guifg=#CE7777
highlight BufferLineNumbersSelected cterm=bold,italic gui=bold,italic guifg=#CE7777

]])
