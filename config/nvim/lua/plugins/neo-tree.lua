return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		vim.keymap.set("n", "<C-e>", ":Neotree source=filesystem reveal=true position=right<CR>", {})
		vim.keymap.set("n", "<C-f>", ":Neotree source=filesystem position=right toggle<CR>", {})
	end,
}
