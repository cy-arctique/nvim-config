local keymap = vim.keymap

-- 设置leader主键
vim.g.mapleader = " "

-- define common options
local opts = {
    noremap = true,
    silent = true,
}

---------------
-- normal mode
---------------

-- 调整窗口流大小
keymap.set("n", "<A-left>", ":vertical resize +2<CR>")
keymap.set("n", "<A-right>", ":vertical resize -2<CR>")
keymap.set("n", "<A-up>", ":resize -2<CR>")
keymap.set("n", "<A-down>", ":resize +2<CR>")

-- 窗口之间的移动
keymap.set("n", "<C-up>", "<C-w>k")
keymap.set("n", "<C-down>", "<C-w>j")
keymap.set("n", "<C-left>", "<C-w>h")
keymap.set("n", "<C-right>", "<C-w>l")

-- 水平新增窗口
keymap.set("n", "<leader><C-v>", "<C-w>v")
-- 垂直新增窗口
keymap.set("n", "<leader><C-h>", "<C-w>s")

-- 取消搜索高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")


---------------
-- visual mode
---------------

-- 缩进退格
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- 选中代码上下移动
keymap.set("v", "j", ":m'>+1<CR>gv=gv")
keymap.set("v", "k", ":m'<-2<CR>gv=gv")


----------------
-- plugin keymap
----------------

-- 打开nvim-tree面板
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
-- 切换buffer
keymap.set("n", "<C-right>", ":bnext<CR>")
keymap.set("n", "<C-left>", ":bprev<CR>")
