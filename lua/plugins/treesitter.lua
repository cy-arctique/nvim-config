return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = {
                "c", "lua"
            },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            -- 启用基于treesitter的代码格式化(=)
            indent = {
                enable = true
            },
            incremental_selection = {
                enable = true,
                -- v模式下增量选择
                keymaps = {
                    init_selection = "<CR>",
                    node_incremental = "<CR>",
                    node_decremental = "<BS>",
                    scope_incremental = "<TAB>",
                }
            },
        })
        -- 开启代码折叠功能, 快捷键:zc zo
        vim.wo.foldmethod = "expr"
        vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
        -- 默认不折叠
        vim.wo.foldlevel = 99
    end
}
