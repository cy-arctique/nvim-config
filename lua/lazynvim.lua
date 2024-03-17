-- 准备lazy.nvim模块
-- mac/linux: ~/.local/share/nvim
-- windows: ~/AppData/Local/nvim-data
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

-- 将lazypath设置为运行时路径
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")
