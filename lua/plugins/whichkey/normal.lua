return {
    mode = { "n", "v" },
    g = {
        name = "goto",
        d = { vim.lsp.buf.definition, "Definition" },
        D = { vim.lsp.buf.declaration, "Declaration" },
    }
}