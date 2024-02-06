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
      "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
      dependencies = {
        "neovim/nvim-lspconfig",
      },
      config = function()
        require("lsp_lines").setup()
      end,
    },
    {
        "neovim/nvim-lspconfig",
        lazy = false,
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.tsserver.setup({
              vim.diagnostic.config({
                virtual_text = false,
                signs = true,
                underline = true,
                update_in_insert = true,
                severity_sort = true,
              }),
              capabilities = capabilities
            })
            lspconfig.html.setup({
              capabilities = capabilities
            })
            lspconfig.lua_ls.setup({
              capabilities = capabilities
            })
            lspconfig.jdtls.setup({
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
