return {
    "olimorris/codecompanion.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "MeanderingProgrammer/render-markdown.nvim",
            ft = { "markdown", "codecompanion" }
        },
    },
    opts = {
        strategies = {
            chat = {
                name = "copilot",
                model = "gpt-4.1",
            },
        },
    }
}
