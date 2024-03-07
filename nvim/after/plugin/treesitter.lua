require'nvim-treesitter.configs'.setup {
    -- Update all installed parsers on build
    build = ":TSUpdate",

    -- Lazy load treesitter when we open an existing file or a new file
    event = { "BufReadPre", "BufNewFile" },

	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = { "rust", "javascript", "typescript", "c", "lua", "python", "vim", "vimdoc", "query" },

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	highlight = {
		enable = true,
		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},

    -- Enable indentation
    indent = { enable = true },

    -- Use treesiter's parsers to select code objects
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<C-space>",
            node_incremental = "C-space>",
            scope_incremental = false,
            node_decremental = "<bs>"
        },
    },
}
