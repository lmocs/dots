local colorschemes = {
	bamboo = {
		"ribru17/bamboo.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("bamboo").setup({})
			require("bamboo").load()
		end,
	},

	tokyonight = {
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
}

-- TODO: Find a way to toggle between colorschemes.
-- vim.g.scheme_idx = 1
--
-- vim.keymap.set("n", "<leader>cs", function()
-- 	if vim.g.scheme_idx > #colorschemes then
-- 		vim.g.scheme_idx = 1
-- 	end
-- 	vim.g.scheme_idx = vim.g.scheme_idx + 1
-- 	colorschemes[vim.g.scheme_idx].config()
-- end)

return {
	colorschemes.bamboo,
}
