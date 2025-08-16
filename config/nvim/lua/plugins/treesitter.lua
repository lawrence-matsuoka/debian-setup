return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			auto_install = false,
			ensure_installed = {
				"asm",
				"c",
				"cpp",
				"latex",
				"lua",
				"python",
				"vim",
			},
			--      highlight = {
			--        enable = true,
			--        disable = { "latex" },
			--      },
			--      indent = { enable = true },
		})
	end,
}
