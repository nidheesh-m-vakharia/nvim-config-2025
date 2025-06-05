local lspconfig = require('lspconfig')
vim.lsp.enable('pyright')
vim.lsp.enable('air')
vim.lsp.enable('biome')
lspconfig.ts_ls.setup{}
