return {
		{
				"williamboman/mason.nvim",
				dependencies = {
						"williamboman/mason-lspconfig.nvim",
						"neovim/nvim-lspconfig",
						"hrsh7th/cmp-nvim-lsp",
						"hrsh7th/cmp-buffer",
						"hrsh7th/cmp-path",
						"hrsh7th/cmp-cmdline",
						"hrsh7th/nvim-cmp",
						"L3MON4D3/LuaSnip",
						"saadparwaiz1/cmp_luasnip",
						"j-hui/fidget.nvim"
				},

				config = function()
						local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
						require("mason").setup({})
						require("mason-lspconfig").setup({
								capabilities = capabilities,
								ensure_installed = {
										"lua_ls",
										"tsserver"
								},
								handlers = {
										function (server_name)
												require("lspconfig")[server_name].setup({})
										end,

										["lua_ls"] = function ()
												local lspconfig = require("lspconfig")
												lspconfig.lua_ls.setup {
														settings = {
																Lua = {
																		diagnostics = {
																				globals = { "vim" }
																		}
																}
														}
												}
										end,
								},
						})

						vim.keymap.set('n', "gd", function() vim.lsp.buf.definition() end, {});
						vim.keymap.set('n', "K", function() vim.lsp.buf.hover() end, {});
						vim.keymap.set('n', "<leader>wps",function() vim.lsp.buf.workplace_symbol() end, {});
						vim.keymap.set('n', "<leader>of", function() vim.lsp.buf.open_float() end, {});
						vim.keymap.set({ 'n', 'v' }, "<leader>ca", function() vim.lsp.buf.code_action() end, {})
						vim.keymap.set('n', "<leader>f", function()
								vim.lsp.buf.format { async = true }
						end, {})
						vim.keymap.set('n', "[d", function() vim.diagnostic.goto_next() end, {})
						vim.keymap.set('n', "]d", function() vim.diagnostic.goto_prev() end, {})


						local cmp = require("cmp")
						local cmp_select = {behavior = cmp.SelectBehavior.Select}
						cmp.setup({
								snippet = {
										expand = function(args)
												require('luasnip').lsp_expand(args.body)
										end,
								},
								mapping = cmp.mapping.preset.insert({
										['<C-j>'] = cmp.mapping.scroll_docs(-4),
										['<C-k>'] = cmp.mapping.scroll_docs(4),
										['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
										['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
										['<C-Space>'] = cmp.mapping.complete(),
										['<C-e>'] = cmp.mapping.abort(),
										['<CR>'] = cmp.mapping.confirm({ select = true }),
								}),
								sources = cmp.config.sources({
										{ name = 'nvim_lsp' },
										{ name = 'luasnip' },
								}, {
										{ name = 'buffer' },
								})
						})

						vim.diagnostic.config({
								update_in_insert = true,
								float = {
										focusable = true,
										style = "minimal",
										border = "rounded",
										source = "always",
										header = "",
										prefix = "",
								},
						})

						require("fidget").setup({})
				end
		}
}
