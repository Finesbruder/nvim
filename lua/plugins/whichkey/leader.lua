return {
    mode = { "n", "v" },
    f = {
        name = "Find",
        b = {":Telescope buffers<cr>", "Buffers" }, 
        c = {":Telescope current_buffer_fuzzy_find<CR>", "Current Buffer Fuzzy find" }, 
        e = {":TroubleToggle document_diagnostics<CR>", "File Errors"},
        E = {":TroubleToggle workspace_diagnostics<CR>", "Project Errors"},
        f = {":Telescope find_files<cr>", "Find File" },
        g = {":Telescope live_grep<cr>", "Live Grep" }, 
        R = {function() require("trouble").toggle("lsp_references") end, "References" }, 
        s = {":Telescope lsp_document_symbols<cr>", "Symbols" }, 
        h = { "<cmd>Telescope help_tags<cr>", "Find Help" },
        H = { "<cmd>Telescope highlights<cr>", "Find highlight groups" },
        M = { "<cmd>Telescope man_pages<cr>", "Man Pages" },
        o = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        R = { "<cmd>Telescope registers<cr>", "Registers" },
        C = { "<cmd>Telescope commands<cr>", "Commands" },
        l = { "<cmd>Telescope resume<cr>", "Resume last search" },
    },
    l = {
        name = "LSP",
        a = { vim.lsp.buf.code_action, "Code Action"},
        A = { vim.lsp.buf.range_code_action, "Range Code Actions" },
        d = { vim.lsp.buf.hover, "Documentation" }, 
        e = { ":lua vim.diagnostic.open_float()<CR>", "Error"},
        f = { vim.lsp.buf.format, "Format file"},
        i = { require("telescope.builtin").lsp_implementations, "Implementation" },
        n = { vim.lsp.buf.rename, "Name"},
        s = { vim.lsp.buf.signature_help, "Signature" },
        w = { require("telescope.builtin").diagnostics, "Diagnostics" },
    },
    n = {
        name = "Next",
        e = {":lua vim.diagnostic.goto_next()<CR>", "Error"},
    },
    p = {
        name = "Prev",
        e = {":lua vim.diagnostic.goto_prev()<CR>", "Error"},
    },
    s = {
        name = "Show",
        e = { function() require("lsp_lines").toggle() end, "Errors"},
        q = {":TroubleToggle quickfix<CR>", "Quickfix items"},
        t = {":tabs<CR>", "Open Tabs"},
    },
    t = {
        name = "Tab",
        d = {":tab vim.lsp.buf.definition<cr>", "Definition in neuem Tab" },
        n = {":tabnew<CR>", "New Tab"},
        o = {":tabo<CR>", "Close all other tabs"},
        q = {":tabc<CR>", "Close current Tab"},
    }
  }