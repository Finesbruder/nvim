return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end
    },{
        "williamboman/mason-lspconfig.nvim",
        lazy = false,
        opts = {
            auto_install = true,
          },
        -- config = function()
        --     require("mason-lspconfig").setup({
        --         ensure_installed = { "lua_ls", "tsserver" }
        --     })
        -- end
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            
            lspconfig.tsserver.setup({
              capabilities = capabilities
            })
            lspconfig.html.setup({
              capabilities = capabilities
            })
            lspconfig.lua_ls.setup({
              capabilities = capabilities
            })
            -- lspconfig.rust_analyzer.setup({
            --   capabilities = capabilities
            -- })
          --   lspconfig.rust_analyzer.setup({
          --     capabilities = capabilities,
          --     settings = {
          --         ['rust-analyzer'] = {
          --             check = {
          --                 command = "clippy";
          --             },
          --             diagnostics = {
          --                 enable = true;
          --             }
          --         }
          --     }
          -- })
        end
    }
}
