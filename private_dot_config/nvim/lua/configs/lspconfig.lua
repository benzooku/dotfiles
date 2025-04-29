local configs = require("nvchad.configs.lspconfig")

local on_attach = configs.on_attach
local on_init = configs.on_init
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "clangd", "ruby_lsp", "standardrb", "jdtls", "gopls", "bashls", "cssmodules_ls", "eslint", "gopls", "ts_ls", "twiggy_language_server", "elixirls"}


require'lspconfig'.elixirls.setup{
    cmd = { "/home/ben/software/elixir-ls/language_server.sh" };
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_init = on_init,
    on_attach = on_attach,
    capabilities = capabilities,
  }
end


require'lspconfig'.elixirls.setup{
    cmd = { "/home/ben/software/elixir-ls/language_server.sh" };
}
-- Without the loop, you would have to manually set up each LSP 
-- 
-- lspconfig.html.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }
--
-- lspconfig.cssls.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
-- }
