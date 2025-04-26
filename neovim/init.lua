-- no wrapping lines
vim.opt.wrap = false
-- global clipboard
vim.opt.clipboard = "unnamedplus"
-- highlight search
vim.opt.hlsearch = true
vim.g.mapleader = " "
-- fix indenting
vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.expandtab = true
vim.opt.shiftwidth = 3
vim.opt.relativenumber = true
-- indenting while in visual
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })
-- commenting out stuff in visual
vim.keymap.set("v", "<leader>c", "<C-v>^I// <Esc>gvV", { noremap = true, silent = true })

local nnoremap = vim.api.nvim_set_keymap
-- navigate buffers
nnoremap("n", "<leader>h", "<C-w>h", { noremap = true, silent = true })
nnoremap("n", "<leader>j", "<C-w>j", { noremap = true, silent = true })
nnoremap("n", "<leader>k", "<C-w>k", { noremap = true, silent = true })
nnoremap("n", "<leader>l", "<C-w>l", { noremap = true, silent = true })
nnoremap("n", "[d", ":lua vim.diagnostic.goto_prev()<CR>", { noremap = true, silent = true })
nnoremap("n", "]d", ":lua vim.diagnostic.goto_next()<CR>", { noremap = true, silent = true })
nnoremap("n", "gh", ":lua vim.lsp.buf.hover()<CR>", { noremap = true, silent = true })
nnoremap("n", "<C-o>", "o<Esc>", { noremap = true, silent = true })
-- no highlight
nnoremap("n", "<C-n>", ":noh<CR>", { noremap = true, silent = true })
-- shift tab
nnoremap("i", "<S-Tab>", "<C-d>", { noremap = true, silent = true })

-- moving lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- exiting
nnoremap("n", "<leader>w", ":w!<CR>", { noremap = true, silent = true })
nnoremap("n", "<leader>q", ":q!<CR>", { noremap = true, silent = true })
nnoremap("n", "<leader>x", ":x!<CR>", { noremap = true, silent = true })
