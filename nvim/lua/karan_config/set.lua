local setkey = vim.opt

setkey.nu = true
setkey.relativenumber = true

setkey.tabstop = 4
setkey.softtabstop = 4
setkey.shiftwidth = 4
setkey.expandtab = true

setkey.swapfile = false
setkey.backup = false
setkey.undodir = os.getenv("HOME") .. "/.vim/undodir"
setkey.undofile = true

setkey.hlsearch = false
setkey.incsearch = true

setkey.termguicolors = true

setkey.scrolloff = 8 
setkey.signcolumn = "yes" 
setkey.isfname:append("@-@")

setkey.updatetime = 50

setkey.ignorecase = true
setkey.smartcase = true

setkey.background = "dark"

setkey.backspace = "indent,eol,start"
setkey.cursorline = true
