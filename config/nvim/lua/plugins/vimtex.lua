return {
	{
		"lervag/vimtex",
		init = function()
			vim.cmd("filetype plugin indent on")
			vim.cmd("syntax enable")
			vim.g.tex_flavor = "latex"
			vim.g.vimtex_view_enabled = 1
			vim.g.vimtex_view_method = "zathura"
			vim.g.vimtext_compiler_method = "latexmk"
			vim.g.vimtex_quickfix_mode = 0
			-- Concealment configuration
			--vim.cmd("set conceallevel=1")
			--vim.g.tex_conceal = 'abdmg'
		end,
	},
}
