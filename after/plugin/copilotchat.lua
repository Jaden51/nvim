local chat = require("CopilotChat")

chat.setup({
    model = 'gpt-4.1',
    window = {
        layout = "vertical",
        relative = "editor",
        width = 0.3,
        border = "single",
    },
    chat_autocomplete = true
})
