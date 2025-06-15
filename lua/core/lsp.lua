require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "pyright", "ts_ls", "html", "cssls", "rust_analyzer"  }
})

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local on_attach = function(client, bufnr)

    -- Быстрые команды для LSP
    local opts = { buffer = bufnr, noremap = true, silent = true }
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)

    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
    vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
    vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
    vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)
    vim.keymap.set('n', '<leader>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
end

local servers = { "pyright", "ts_ls", "html", "cssls", "rust_analyzer"  }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    capabilities = capabilities,
  })
end

lspconfig.pyright.setup({
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "workspace",
            },
        },
    },
})






--lspconfig.pyright.setup({
--  settings = {
--    pyright = {
--      -- Using Ruff's import organizer
--      disableOrganizeImports = true,
--    },
--    python = {
--      analysis = {
        -- Ignore all files for analysis to exclusively use Ruff for linting
--        ignore = { '*' },
--      },
--    },
--  },
--})


--lspconfig.ruff.setup{
--  init_options = {
--    settings = {
--      logLevel = 'debug',
 --           configurationPreference = "filesystemFirst",
 --           lineLength = 90,
 --           fixAll = false,
 --           organizeImports = true,
 --           showSyntaxErrors = true,
 --           codeAction = {
 --             disableRuleComment = {
 --               enable = false
 --             }
 --           },
 --           lint = {
 --             enable = false,
	--      preview = true,
	--      select = {"E", "F"},
	--      ignore = {"E4", "E7"},
 --           },
 --           format = {
 --             preview = true
 --           }
 --         }
 --       }
--}      
