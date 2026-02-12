-- Default colorscheme
vim.cmd("colorscheme kanagawa")

-- Disable lexical syntax highlighting, only use TreeSitter
vim.cmd("syntax off")

-- Setup base options

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.mouse = ""
vim.opt.signcolumn = yes
vim.opt.expandtab = yes
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.winborder = 'rounded'
vim.opt.clipboard = "unnamedplus"

-- Connect TreeSitter for relevant langauges
vim.api.nvim_create_autocmd( 'FileType', {
    pattern = {
		"python",
		"typescript*",
		"javascript*",
		"rust",
		"markdown",
		"json",
		"css",
		"scss"
	},
    callback = function(args)
        vim.treesitter.start()
    end
})

-- Change default indent lengths for certain languages
vim.api.nvim_create_autocmd('FileType', {
	pattern = {
		"typescript*",
		"javascript*"
	},
	callback = function(args)
		vim.opt.shiftwidth = 2
		vim.opt.tabstop = 2
	end
})

-- Completion stuff
vim.opt.completeopt = { "menuone", "noselect", "popup" }

vim.diagnostic.config({
  signs = {
    severity = { min = vim.diagnostic.severity.WARN }
  },
  underline = true,
  jump = {
    severity = { min = vim.diagnostic.severity.WARN }
  },
  severity_sort = true,
  virtual_lines = {
    severity = { min = vim.diagnostic.severity.ERROR }
  }
})

-- Enable LSPs
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('vtsls')
vim.lsp.enable('eslint')
vim.lsp.enable('marksman')
vim.lsp.enable('lua_ls')
vim.lsp.enable('ruff')
vim.lsp.enable('pyright')
vim.lsp.enable('tailwindcss')

--
-- Plugin config
--

-- Treesitter setup for better language syntax-highlighting
-- and textobject-based motions
require("nvim-treesitter").setup()
require("nvim-treesitter").install { "rust", "typescript", "tsx", "javascript", "jsx", "css", "scss", "python", "json", "markdown", "toml", "bash" }

-- Display keybind combos in a popup for QOL purposes
require("which-key").setup({
	preset = "helix",
    delay = function(ctx)
		return 0
	end,
})

-- Enable auto JSX/TSX tag management
require('nvim-ts-autotag').setup({})

-- QOL for seeing LSP server startup and status
require("fidget").setup {}

-- Automatically match brackets, quotes, etc.
require("nvim-autopairs").setup()

-- Setup dedicated autocompletion plugin
require("blink.cmp").setup()
