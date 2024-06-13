return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 4242,
		config = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},
	{
		"NLKNguyen/papercolor-theme",
		priority = 1000,
	},
}
