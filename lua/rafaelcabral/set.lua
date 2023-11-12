--vim.opt.guicursor = ""
vim.opt.nu = true

vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.g.netrw_banner = 0
vim.g.netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
vim.g.netrw_altv = 1
vim.g.netrw_winsize = 50
vim.g.neoformat_try_node_exe = 1
vim.opt.smartindent = true
vim.opt.wrap = true 
vim.opt.autoindent = true
vim.opt.textwidth = 80
vim.opt.breakindent = true
vim.opt.swapfile = false
vim.opt.backup = true
vim.opt.backupdir = os.getenv("HOME") .. "/.vim/backup"
vim.opt.backupcopy = "yes"
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true 
vim.opt.incsearch = true
vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "0"


