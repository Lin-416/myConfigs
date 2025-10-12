local opt = vim.opt
opt.number = true
opt.relativenumber = false
opt.termguicolors = true
opt.foldmethod = "indent"
opt.foldlevel = 99
opt.foldenable = false

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.opt.tabstop         = 4
vim.opt.shiftwidth      = 4

vim.g.barbar_auto_setup = false

vim.opt.guicursor       = {
	--配置nvim的光标样式
	"i:ver25",
	"a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor",
}

require("key-maps")
require("plugin-setting")
require("lsps")

vim.cmd('colorscheme catppuccin')
