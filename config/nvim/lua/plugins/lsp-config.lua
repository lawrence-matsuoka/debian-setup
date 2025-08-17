return {
	{
		"williamboman/mason.nvim",
		build = ":MasonUpdate",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { -- MasonInstall asm-lsp, asmfmt, black, isort, prettier, vhdl-style-guide
					-- "asm_lsp",
--					"basedpyright",
					"bashls",
					"clangd",
					-- "cmake",
					--                   "dockerls",
--					"gopls",
					"lua_ls",
					"marksman",
					"texlab",
					--                   "rnix",
--					"ruff",
					--                   "sqlls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local on_attach = require("plugins.lsp-config").on_attach
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			local util = require("lspconfig/util")

			local lspconfig = require("lspconfig")
--			lspconfig.basedpyright.setup({ -- Python
--				capabilities = capabilities,
--			})
			lspconfig.bashls.setup({ -- Bash
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({ -- C, C++
				capabilities = capabilities,
				cmd = {
					"clangd",
				},
			})
--			lspconfig.gopls.setup({ -- Go
--				on_attach = on_attach,
--				capabilities = capabilities,
--				cmd = { "gopls" },
--				filetypes = { "go", "gomod", "gowork", "gotmpl" },
--				root_dir = util.root_pattern("go.work", "go.mod", ".git"),
--				settings = {
--					gopls = {
--						completeUnimported = true,
--						usePlaceholders = true,
--						analyses = {
--							unusedparams = true,
--						},
--					},
--				},
--			})
			lspconfig.texlab.setup({ -- LaTeX
				capabilities = capabilities,
			})
			lspconfig.lua_ls.setup({ -- Lua
				capabilities = capabilities,
			})
			lspconfig.marksman.setup({ -- Markdown
				capabilities = capabilities,
			})
			lspconfig.nil_ls.setup({ -- Nix
				capabilities = capabilities,
			})
--			lspconfig.ruff.setup({ -- Python
--				capabilities = capabilities,
--			})

			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
		end,
	},
}
