local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

local servers = {
  "sumneko_lua",
  "cssls",
  "tsserver",
  "pyright",
  "bashls",
  "jsonls",
  "yamlls",
}

lsp_installer.setup()

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
  return
end

local opts = {}

for _, server in pairs(servers) do
  opts = {
    on_attach = require("winternebs.lsp.handlers").on_attach,
    capabilities = require("winternebs.lsp.handlers").capabilities,
  }

  if server == "sumneko_lua" then
    local sumneko_opts = require "winternebs.lsp.settings.sumneko_lua"
    opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
  end

  if server == "pyright" then
    local pyright_opts = require "winternebs.lsp.settings.pyright"
    opts = vim.tbl_deep_extend("force", pyright_opts, opts)
  end

  lspconfig[server].setup(opts)
end
  opts = {
    on_attach = require("winternebs.lsp.handlers").on_attach,
    capabilities = require("winternebs.lsp.handlers").capabilities,
    settings = {
        ["rust-analyzer"] = {
            checkOnSave = {
                --command = "clippy"
            }
        }
    }
  }

require("rust-tools").setup({
    server = opts
})
