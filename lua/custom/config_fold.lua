-- no wrap
vim.opt.wrap = false

-- numbers
vim.opt.rnu = true

-- add cfilter
vim.cmd 'packadd cfilter'

-- fold expression
-- vim.opt.foldmethod = 'expr'
-- vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
-- vim.opt.foldenable = true

vim.opt.foldcolumn = '1'
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

local ufo = require 'ufo'

vim.keymap.set('n', 'zr', ufo.openAllFolds, { desc = 'Open All Folds' })
vim.keymap.set('n', 'zm', ufo.closeAllFolds, { desc = 'Close All Folds' })
vim.keymap.set('n', 'zk', function()
  local winid = ufo.peekFoldedLinesUnderCursor()
  if not winid then
    vim.lsp.buf.hover()
  end
end, { desc = 'Peek Fold' })

local set_ufo = {
  lsp = function()
    -- config for nvim with `lsp`
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    }
    local language_servers = require('lspconfig').util.available_servers() -- or list servers manually like {'gopls', 'clangd'}
    for _, ls in ipairs(language_servers) do
      require('lspconfig')[ls].setup {
        capabilities = capabilities,
        -- you can add other fields for setting up lsp server in this table
      }
    end
    ufo.setup()
  end,

  treesitter = function()
    -- config for nvim with `treesitter`
    ufo.setup {
      provider_selector = function(bufnr, filetype, buftype)
        return { 'treesitter', 'indent' }
      end,
    }
  end,
}

set_ufo.lsp()
