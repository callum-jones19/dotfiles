-- Default colorscheme
vim.cmd("colorscheme catppuccin-mocha")

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

-- set up stuff when the LSP client attaches
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('lsp', {}),
    callback = function(args)
        local clientID = args.data.client_id

        -- enable autocomplete
        vim.lsp.completion.enable(true, clientID, 0, { autotrigger = true })
		vim.lsp.inlay_hint.enable(true)
    end,
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
vim.lsp.enable('vscode-esint-language-server')
vim.lsp.enable('marksman')
vim.lsp.enable('lua_ls')
vim.lsp.enable('ruff')
vim.lsp.enable('pyright')

-- open autocomplete menu when pressing <C-n>
vim.keymap.set('i', '<C-space>', function()
    vim.lsp.completion.get()
end)

-- Plugin config
require("which-key").setup({
	preset = "helix",
    delay = function(ctx)
		return 0
	end,
})
