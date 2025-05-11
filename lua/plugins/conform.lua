return {
    "stevearc/conform.nvim",
    opts = {
        notify_on_error = false,
        formatters_by_ft = {
            lua = { "stylua" },
            -- Conform will run multiple formatters sequentially
            python = { "isort", "black" },
            -- You can customize some of the format options for the filetype (:help conform.format)
            rust = { "rustfmt", lsp_format = "fallback" },
            -- Conform will run the first available formatter
            javascript = { "prettierd", "prettier", stop_after_first = true },
        },
        format_on_save = function(bufnr)
            -- disable "format_on_save lsp_fallback" for languages that dont
            -- have a well standardized coding style. You can add add additional
            -- languages here or re-enable it for the disabled oned
            local disable_filetypes = { go = true }
            if disable_filetypes[vim.bo[bufnr].filetype] then
                return nil
            else
                return {
                    timeout_ms = 500,
                    lsp_format = "fallback",
                }
            end
        end,
    },
}
