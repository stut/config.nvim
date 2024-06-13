require("nvim-treesitter.configs").setup({
	modules = {},
	auto_install = true,
	ensure_installed = { "c", "lua", "go", "javascript", "html" },
	ignore_install = {},
	sync_install = false,
	highlight = { enable = true },
	indent = { enable = true },
})
