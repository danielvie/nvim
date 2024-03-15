-- Native LSP Setup
require("me.keymaps")

-- Global setup.
local cmp = require 'cmp'
-- local luasnip = require 'luasnip'

require('luasnip/loaders/from_vscode').lazy_load()

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  mapping = {
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ['<CR>'] = function(fallback)
      if cmp.visible() then
        cmp.confirm()
      else
        fallback()
      end
    end
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, -- For luasnip users.
  }, {
    { name = 'buffer' },
  })
})

-- local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
require("mason").setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜--",
      package_uninstalled = "✗"
    }
  }
})

require("mason-lspconfig").setup {
    ensure_installed = {"lua_ls", "rust_analyzer", "cmake", "clangd", "pylsp"}
}

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
local on_attach = function(bufnr, client)
  local function buf_set_keymap(...)
    vim.api.nvim_buf_set_keymap(bufnr, ...)
  end

  -- Mappings.
  local opts = { noremap = true, silent = true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  -- leaving only what I actually use...
  -- vim.keymap.set('n', "K", "<cmd>Lspsaga hover_doc<CR>", opts)
  vim.keymap.set('n', "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
  vim.keymap.set('n', "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
  -- vim.keymap.set('n', "gr", "<cmd>Telescope lsp_references<CR>", opts)

  vim.keymap.set('n', "<leader>fl", "<cmd>Telescope lsp_workspace_symbols<CR>", opts)
  vim.keymap.set('n', "<leader>fr", "<cmd>Telescope lsp_document_symbols<CR>", opts)

  -- vim.keymap.set('n', "<C-j>", "<cmd>Telescope lsp_document_symbols<CR>", opts)
  -- vim.keymap.set('n', "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)

  vim.keymap.set('n', "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
  vim.keymap.set('n', "<leader>D", "<cmd>Telescope lsp_type_definitions<CR>", opts)
  -- vim.keymap.set('n', "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
  vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.keymap.set('n', "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
  vim.keymap.set('n', "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  vim.keymap.set('n', "<leader>dj", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
  vim.keymap.set('n', "<leader>dk", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
  -- vim.keymap.set('n', "<leader>r", "<cmd>Lspsada rename<CR>", opts)

  -- Set autoformat on save
  -- vim.cmd(
  --   [[
  --     augroup formatting
  --         autocmd! * <buffer>
  --         autocmd BufWritePre <buffer> lua vim.lsp.buf.format()
  --         autocmd BufWritePre <buffer> lua OrganizeImports(1000)
  --     augroup END
  --   ]]
  -- )

  -- Set autocommands conditional on server_capabilities
  vim.cmd(
    [[
      augroup lsp_document_highlight
          autocmd! * <buffer>
          autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
          autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]]
  )
end

-- organize imports
-- https://github.com/neovim/nvim-lspconfig/issues/115#issuecomment-902680058
function OrganizeImports(timeoutms)
  local params = vim.lsp.util.make_range_params()
  params.context = { only = { "source.organizeImports" } }
  local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, timeoutms)
  for _, res in pairs(result or {}) do
    for _, r in pairs(res.result or {}) do
      if r.edit then
        vim.lsp.util.apply_workspace_edit(r.edit, "UTF-8")
      else
        vim.lsp.buf.execute_command(r.command)
      end
    end
  end
end

local lspconfig = require('lspconfig')

-- local lsps = {"tsserver", "texlab", "cmake", "marksman", "lua_ls"}
local lsps = {"tsserver", "texlab", "cmake", "lua_ls"}

for _, value in pairs(lsps) do
    lspconfig[value].setup {
      capabilities = capabilities,
      on_attach = on_attach,
    }
end

lspconfig.lua_ls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      diagnostics = {
        -- get the language server to recognize `vim` global
        globals = { 'vim' },
      }
    }
  }
}

lspconfig.clangd.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  cmd = {"clangd", "--compile-commands-dir=./build"}
}

lspconfig.pylsp.setup {
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        configurationSources = {"flake8"},
        formatCommand = {"black"},
        pylsp = {
            plugins = {
                pycodestyle={
                    enabled=true,
                    ignore={'E231', 'E302', 'E305'},
                    maxLineLength=120},
                    yapf={enabled=true}
                }
            }
        }
}

lspconfig.rust_analyzer.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  cmd = {
    "rustup", "run", "stable", "rust-analyzer",
  }
}
