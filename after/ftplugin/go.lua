vim.opt_local.expandtab = false
vim.opt_local.tabstop = 2
vim.opt_local.shiftwidth = 2

vim.keymap.set("n", "<space>td", function()
	require("dap-go").debug_test()
end, { buffer = 0 })

vim.keymap.set("n", "<space>tl", function()
	require("dap-go").debug_last_test()
end, { buffer = 0 })
