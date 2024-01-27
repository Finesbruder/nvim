return {
    {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function()
            vim.g.rustfmt_autosave = 1
        end
    },
    {
        'mrcjkb/rustaceanvim',
        version = '^3', -- Recommended
        ft = { 'rust' },
    }
    -- {
    --     local capabilities = require("lspconfig").capabilities,
    --     local on_attach = require("lspconfig").on_attach,
    --     "simrat39/rust-tools.nvim",
    --     ft = "rust",
    --     config = function()
    --         options = {
    --             server = {
    --                 on_attach = on_attach,
    --                 capabilities = capabilities,
    --             }
    --         }
    --     end
    -- }
    
}