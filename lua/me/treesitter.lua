local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then return end
treesitter.setup {
    ensure_installed = { "python", "javascript", "typescript", "rust", "c", "cpp", "c_sharp", "lua", "markdown", "markdown_inline" },
	highlight = { enable = true, additional_vim_regex_highlighting = { "latex" } }
}
