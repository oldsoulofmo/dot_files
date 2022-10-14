vim.opt.termguicolors = true
require("bufferline").setup{
	options = {
		mode = 'tabs',
		numbers = "ordinal",
		indicator = 'none ',
		show_buffer_icons = false,
		always_show_bufferline = false,
	        show_buffer_close_icons = false,
    		show_close_icon = false,
		
		} 
	}







vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
