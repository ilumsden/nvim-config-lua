return {
    {
        "EdenEast/nightfox.nvim",
        opts = {
            options = {
                styles = {
                    comments = "italic",
                    keywords = "bold",
                },
            },
            modules = {
                cmp = true,
                native_lsp = true,
                treesitter = true,
            },
        },
    },
}
