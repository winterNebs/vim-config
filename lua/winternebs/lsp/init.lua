local status_ok, _ = pcall(require, 'lspconfig')
if not status_ok then
  print 'lspconfig not ok'
  return
end

require 'winternebs.lsp.lsp-installer'
require('winternebs.lsp.handlers').setup()
require 'winternebs.lsp.null-ls'
