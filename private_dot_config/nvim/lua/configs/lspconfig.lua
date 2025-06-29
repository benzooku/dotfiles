require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "bashls", "ts_ls", "elixirls", "tailwindcss-language-server"}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
local path_to_elixirls = vim.fn.expand("~/software/elixir-ls-v0.28.0/language_server.sh")

vim.lsp.config('elixirls', {
  cmd = {path_to_elixirls},
  settings = {
    elixirLS = {
      -- I choose to disable dialyzer for personal reasons, but
      -- I would suggest you also disable it unless you are well
      -- acquainted with dialzyer and know how to use it.
      dialyzerEnabled = false,
      -- I also choose to turn off the auto dep fetching feature.
      -- It often get's into a weird state that requires deleting
      -- the .elixir_ls directory and restarting your editor.
      fetchDeps = false
    }
  }
})

vim.lsp.config('tailwindcss-language-server', {
    init_options = {
        userLanguages = {
            elixir = "html-eex",
            eelixir = "html-eex",
            heex = "html-eex",
    },
  },
})


