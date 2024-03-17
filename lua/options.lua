local opt = vim.opt

opt.clipboard = "unnamedplus"
opt.completeopt = {
    "menu", "menuone", "noselect"
}

-- 启用鼠标
opt.mouse:append("a")

-- tab
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

-- 防止包裹
opt.wrap = false

-- ui config
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.splitbelow = true
opt.splitright = true
-- vim.opt.termguicolor = true
opt.showmode = false

-- searching
opt.incsearch = true
opt.hlsearch = false
opt.ignorecase = true
opt.smartcase = true

opt.spell = false

-- 左侧多一列, debug有用
opt.signcolumn = "yes"
