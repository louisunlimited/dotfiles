return {
	"lervag/vimtex",
	lazy = false, -- we don't want to lazy load VimTeX
	config = function()
		vim.g.vimtex_view_method = "skim"
		vim.g.vimtex_syntax_enabled = 0
		vim.g.vimtex_quickfix_ignore_filters = [[
      \ 'Underfull \\hbox',
      \ 'Overfull \\hbox',
      \]]
	end,
}
