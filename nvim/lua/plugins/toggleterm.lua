return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = [[<C-\>]],
			hide_numbers = false,
			shade_filetypes = {},
			autochdir = false,
			shade_terminals = true,
			shading_factor = "-30",
			shading_ratio = "-3",
			start_in_insert = true,
			insert_mappings = true,
			terminal_mappings = true,
			persist_size = true,
			persist_mode = true,
			direction = "float",
			close_on_exit = true,
			clear_env = false,
			shell = vim.o.shell,
			auto_scroll = true,
		})
	end,
}
