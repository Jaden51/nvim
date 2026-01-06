return {
    "olimorris/codecompanion.nvim",
    version = "v17.33.0",
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
                model = "gpt-4.1"
            },
        },
    }
}
