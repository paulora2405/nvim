-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Window navigation with Ctrl+h/l (no tmux conflicts)
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window" })

-- Scrolling with Ctrl+j/k (half-page)
vim.keymap.set("n", "<C-j>", "<C-d>", { desc = "Scroll Half Page Down" })
vim.keymap.set("n", "<C-k>", "<C-u>", { desc = "Scroll Half Page Up" })

-- File finder
vim.keymap.set("n", "<leader><leader>", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })

-- Search (live grep)
vim.keymap.set("n", "<leader>s", "<cmd>Telescope live_grep<cr>", { desc = "Search (Live Grep)" })

-- LSP actions (mapped to match Zed)
vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, { desc = "Code Action" })
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename" })

-- Symbol search (using telescope + LSP)
vim.keymap.set("n", "ss", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Document Symbols" })
vim.keymap.set("n", "sS", "<cmd>Telescope lsp_workspace_symbols<cr>", { desc = "Workspace Symbols" })

-- Format file
vim.keymap.set({ "n", "i" }, "<C-f>", function()
  vim.lsp.buf.format()
end, { desc = "Format File" })
