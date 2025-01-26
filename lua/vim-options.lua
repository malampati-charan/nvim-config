vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"

vim.filetype.add({
  extension = {
    ejs = "html",  -- You can also set this to 'javascript' depending on your file structure
  },
})


