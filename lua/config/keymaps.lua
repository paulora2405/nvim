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
vim.keymap.set("n", "<leader><Space>", function() Snacks.picker.files() end, { desc = "Find Files" })

-- Search (live grep)
vim.keymap.set("n", "<leader>s", function() Snacks.picker.grep() end, { desc = "Search (Live Grep)" })

-- LSP actions (mapped to match Zed)
vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action, { desc = "Code Action" })
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Rename" })

-- Symbol search (using snacks picker + LSP)
vim.keymap.set("n", "ss", function() Snacks.picker.lsp_symbols() end, { desc = "Document Symbols" })
vim.keymap.set("n", "sS", function() Snacks.picker.lsp_workspace_symbols() end, { desc = "Workspace Symbols" })

-- Format file
vim.keymap.set({ "n", "i" }, "<C-f>", function()
  vim.lsp.buf.format()
end, { desc = "Format File" })

-- g-commands (LSP navigation)
vim.keymap.set("n", "gr", vim.lsp.buf.references, { desc = "Find References" })
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, { desc = "Go to Declaration" })
vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, { desc = "Go to Type Definition" })
vim.keymap.set("n", "gI", vim.lsp.buf.implementation, { desc = "Go to Implementation" })
vim.keymap.set("n", "gh", vim.lsp.buf.hover, { desc = "Hover Documentation" })

-- Search navigation (for consistency with Zed)
vim.keymap.set("n", "gn", "n", { desc = "Next Search Match" })
vim.keymap.set("n", "gN", "N", { desc = "Previous Search Match" })
