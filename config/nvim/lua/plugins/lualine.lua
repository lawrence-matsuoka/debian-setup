return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				-- https://github.com/nvim-lualine/lualine.nvim/blob/master/THEMES.md
				--theme = "gruvbox-material",
				theme = "auto",
			},
		})
	end,
}
