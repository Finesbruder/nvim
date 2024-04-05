return {
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup()
        end
    },
    {
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
        lazy = false;
        dependencies = { "mfussenegger/nvim-jdtls" },
        opts = {
          setup = {
            jdtls = function(_, opts)
              vim.api.nvim_create_autocmd("FileType", {
                pattern = "java",
                callback = function()
                  local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
                  -- vim.lsp.set_log_level('DEBUG')
                  -- local workspace_dir = "/home/jake/.workspace/" .. project_name -- See `:help vim.lsp.start_client` for an overview of the supported `config` options.
                  local config = {
                    -- The command that starts the language server
                    -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
                    cmd = {
    
                      "java", -- or '/path/to/java17_or_newer/bin/java'
                      -- depends on if `java` is in your $PATH env variable and if it points to the right version.
    
                      -- "-javaagent:/home/jake/.local/share/java/lombok.jar",
                      -- '-Xbootclasspath/a:/home/jake/.local/share/java/lombok.jar',
                      "-Declipse.application=org.eclipse.jdt.ls.core.id1",
                      "-Dosgi.bundles.defaultStartLevel=4",
                      "-Declipse.product=org.eclipse.jdt.ls.core.product",
                      "-Dlog.protocol=true",
                      "-Dlog.level=ALL",
                      -- '-noverify',
                      "-Xms1g",
                      "--add-modules=ALL-SYSTEM",
                      "--add-opens",
                      "java.base/java.util=ALL-UNNAMED",
                      "--add-opens",
                      "java.base/java.lang=ALL-UNNAMED",
                      "-jar",
                      -- vim.fn.glob("/usr/share/java/jdtls/plugins/org.eclipse.equinox.launcher_*.jar"),
                      -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^                                       ^^^^^^^^^^^^^^
                      -- Must point to the                                                     Change this to
                      -- eclipse.jdt.ls installation                                           the actual version
    
                      "-configuration",
                      "/usr/share/java/jdtls/config_linux",
                      -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^        ^^^^^^
                      -- Must point to the                      Change to one of `linux`, `win` or `mac`
                      -- eclipse.jdt.ls installation            Depending on your system.
    
                      -- See `data directory configuration` section in the README
                      "-data",
                      -- workspace_dir,
                    },
    
                    -- This is the default if not provided, you can remove it. Or adjust as needed.
                    -- One dedicated LSP server & client will be started per unique root_dir
                    root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" }),
    
                    -- Here you can configure eclipse.jdt.ls specific settings
                    -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
                    -- for a list of options
                    settings = {
                      java = {},
                    },
                    handlers = {
                      ["language/status"] = function(_, result)
                        -- print(result)
                      end,
                      ["$/progress"] = function(_, result, ctx)
                        -- disable progress updates.
                      end,
                    },
                  }
                  require("jdtls").start_or_attach(config)
                end,
              })
              return true
            end,
          },
        },
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
