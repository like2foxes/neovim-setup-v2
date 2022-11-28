local cfg = {
	transparency = 20,
	toggle_key = '<M-x>',
	select_dignature_key = '<M-n>',
	move_cursor_key = '<M-k>'
}

require('lsp_signature').setup(cfg)
