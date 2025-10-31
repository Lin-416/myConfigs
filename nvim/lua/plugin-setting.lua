require("lazy").setup("plugins")

require('lualine').setup({
	options = {
		theme = "auto"
	}
})

require("nvim-tree").setup()

require("telescope").setup()

-- 使用leetcode.nvim
require("leetcode").setup({
	cn = { -- leetcode.cn
		enabled = true, ---@type boolean
		translator = true, ---@type boolean
		translate_problems = true, ---@type boolean
	},

	storage = {
		home = vim.fn.expand("~/CODE/leetcode"),
		cache = vim.fn.expand("~/CODE/leetcode/.cache"),
	},

	injector = {
		["cpp"] = {
			imports = function()
				-- return a different list to omit default imports
				return { "#include <stack>", "#include <queue>", "#include <vector>", "#include <string>",
					"using namespace std;" }
			end,
		},
	},
})

require('conform').setup({ --使用conform插件 保存自动格式化
	formatters_by_ft = {
		lua = {
			"lua_ls",
			format_on_save = true
		},
		c = {
			"clangd",
			format_on_save = true
		},
		cpp = {
			"clangd",
			format_on_save = true
		},
		javascript = {
			"ts_ls",
			format_on_save = true
		},
		typescript = {
			"ts_ls",
			format_on_save = true
		},
		vue = {
			"vue_ls",
			format_on_save = true
		},
		rust = {
			"rust_analyzer",
			format_on_save = true
		}
	},
	format_on_save = function(bufnr)
		local ignore_filetypes = { "oil" }
		if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
			return
		end

		return { timeout_ms = 500, lsp_fallback = true }
	end,
	log_level = vim.log.levels.ERROR,
})

--使用autopairs插件（自动补全括号）
require("nvim-autopairs").setup()

require("dashboard").setup({
	config = {
		week_header = {
			enable = true,
		},
		packages = { enable = false },

		project = {
			enable = false,
		},

		shortcut = {
			{
				icon = ' ',
				desc = 'Projects',
				group = 'Label',
				key = 'p',
				action = 'Telescope find_files cwd=/Users/lijianlin/CODE/project find_command=fd,--type,d,--max-depth,1',
			},
			{
				icon = ' ',
				desc = 'LeetCode',
				group = 'Label',
				key = 'l',
				action = 'Leet',
			},
			{
				icon = ' ',
				desc = 'DotFiles',
				group = 'Label',
				key = 'd',
				action = 'cd /Users/lijianlin/.config/nvim | NvimTreeOpen',
			},
			{
				icon = '󰈆 ',
				desc = 'Quit',
				group = 'Label',
				key = 'q',
				action = 'q',
			},
		},
	},
})


require("notify").setup({
	background_colour = "#313445"
})

require("noice").setup({
	lsp = {
		-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
		},
	},
	-- you can enable a preset for easier configuration
	presets = {
		bottom_search = true,   -- use a classic bottom cmdline for search
		command_palette = true, -- position the cmdline and popupmenu together
		long_message_to_split = true, -- long messages will be sent to a split
		inc_rename = false,     -- enables an input dialog for inc-rename.nvim
		lsp_doc_border = false, -- add a border to hover docs and signature help
	},
})

require("toggleterm").setup({
	direction = "float",
	float_opts = { border = "curved" },
	start_in_insert = true
})

require("render-markdown").setup()

require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		}
	}
})

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"clangd",
		"ts_ls",
		"vue_ls",
		"rust_analyzer",
		"tailwindcss"
	},
})
