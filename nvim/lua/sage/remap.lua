--Configure leader key
vim.g.mapleader = " "

-- Open Netrw
vim.keymap.set("n", "<leader>pv", ":Ex<CR>")

-- Move highlighted text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Take the line below and append to current line
vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor in the middle during half-page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Make search terms stayin the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without losing the current content of the paste-buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Yank into system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Leave insert mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Open new tmux session
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Toggle NvimTre
vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>")

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G")

-- Delete a word backwards
vim.keymap.set("n", "dw", "vb_d")

-- Write to file
vim.keymap.set("n", "<C-s>", ":w<CR>")

-- Quickfix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Replace the word under the cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Tmux Navigation
vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>")
vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>")
vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>")
