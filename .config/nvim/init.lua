-- global options
local o = vim.o

o.number = true
o.swapfile = false

-- `yadm bootstrap` does the initial `paq-nvim` install,
-- afterwards paq manages itself.
require "paq" {
    "savq/paq-nvim";

    "gpanders/editorconfig.nvim";
    -- "hrsh7th/nvim-cmp";
    "neovim/nvim-lspconfig";
    "numToStr/Comment.nvim";
}

-- mappings for Comment.nvim
require("Comment").setup()

-- LSP configuration
local lsp = require "lspconfig"
lsp.pyright.setup{}
lsp.rust_analyzer.setup{}

-- TODO: Completion configuration
