return {
    "catppuccin/nvim",
    config = function()
        require("catppuccin").setup({
            flavour = "mocha", -- latte, frappe, macchiato, mocha
            background = {     -- :h background
                light = "latte",
                dark = "mocha",
            },
            integration = {
                nvimtree = {
                    enabled = true,
                    show_root = true,
                }
            },
        })
    end
}
