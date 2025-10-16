-- Default colorscheme
vim.cmd("colorscheme gruvbox")

-- Setup base options

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.mouse = ""

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

-- LSP ConfiG
-- Handled by nvim-lspconfig package
vim.lsp.config('vtsls', {
  settings = { autotrigger = true }
})

vim.lsp.config('typescript', {
  settings = { autotrigger = true }
})

-- Enalbe LSPs
vim.lsp.enable('rust_analyzer')
vim.lsp.enable('vtsls')
vim.lsp.enable('vscode-esint-language-server')
vim.lsp.enable('marksman')
vim.lsp.enable('lua_ls')

-- set up stuff when the LSP client attaches
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('lsp', {}),
    callback = function(args)
        local clientID = args.data.client_id

        -- enable autocomplete
        vim.lsp.completion.enable(true, clientID, 0, { autotrigger = true })
    end,
})

-- open autocomplete menu when pressing <C-n>
vim.keymap.set('i', '<C-space>', function()
    vim.lsp.completion.get()
end)
