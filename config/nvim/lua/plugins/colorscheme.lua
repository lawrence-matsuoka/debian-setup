function ColorMyPencils(color)
	color = color
	vim.cmd.colorscheme(color)
end

return {
	{
		"sainnhe/gruvbox-material",
		name = "gruvbox-material",
		priority = 999,
		config = function()
			vim.g.gruvbox_material_better_performance = 1
			-- Fonts
			vim.g.gruvbox_material_transparent_background = 1
			vim.g.gruvbox_material_disable_italic_comment = 1
			vim.g.gruvbox_material_enable_italic = 0
			vim.g.gruvbox_material_enable_bold = 0
			-- Themes
			vim.g.gruvbox_material_background = "hard"
			vim.g.gruvbox_material_ui_contrast = "high"
			vim.g.gruvbox_material_foreground = "mix"
			vim.g.gruvbox_material_float_style = "dim"

			--vim.cmd("colorscheme gruvbox-material")

			--ColorMyPencils()
		end,
	},

	{
		"scottmckendry/cyberdream.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("cyberdream").setup({
				-- Recommended - see "Configuring" below for more config options
				transparent = true,
				italic_comments = true,
				hide_fillchars = false,
				borderless_telescope = true,
				terminal_colors = true,
			})
			vim.cmd("colorscheme cyberdream") -- set the colorscheme

			ColorMyPencils()
		end,
	},
}
