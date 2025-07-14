return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
    require('neo-tree').setup {
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = false,
	      hide_dotfiles = false,
	      hide_gitignored = true,
	      hide_by_name = {
        },
	      never_show = {
          '.git',
        },
      },
    },
  }
		vim.keymap.set("n", "<leader>e", ":Neotree toggle<CR>", {})
		vim.keymap.set("n", "<leader>t", ":Neotree buffers reveal float<CR>", {})
	end,
}