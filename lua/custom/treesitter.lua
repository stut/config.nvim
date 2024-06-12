-- local treesitter = require "nvim-treesitter"

local M = {}

M.setup = function()
	local group = vim.api.nvim_create_augroup("custom-treesitter", { clear = true })

	require("nvim-treesitter").setup({
		ensure_install = { "core", "stable" },
		ensure_installed = { "c", "go", "lua", "vim", "vimdoc", "query", "javascript", "html" },
		sync_install = false,
		highlight = { enable = true },
		indent = { enable = true },
	})

	vim.api.nvim_create_autocmd("FileType", {
		group = group,
		callback = function()
			pcall(vim.treesitter.start)
		end,
	})

	vim.api.nvim_create_autocmd("User", {
		pattern = "TSUpdate",
		callback = function()
			local parsers = require("nvim-treesitter.parsers")

			parsers.lua = {
				tier = 0,
			}
		end,
	})
end

M.setup()

return M
