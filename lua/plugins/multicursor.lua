return {
  {
    "jake-stewart/multicursor.nvim",
    branch = "1.0",
    config = function()
      local mc = require("multicursor-nvim")
      mc.setup()

      -- Zed-style g commands for multicursor
      -- Add cursor to next match
      vim.keymap.set({ "n", "v" }, "gl", function()
        mc.matchAddCursor(1)
      end, { desc = "Add cursor to next match" })

      -- Skip current, add cursor to next match
      vim.keymap.set({ "n", "v" }, "gL", function()
        mc.matchSkipCursor(1)
      end, { desc = "Skip and add cursor to next match" })

      -- Select all matches
      vim.keymap.set({ "n", "v" }, "ga", function()
        mc.matchAllAddCursors()
      end, { desc = "Add cursors to all matches" })

      -- Exit multicursor mode
      vim.keymap.set("n", "<esc>", function()
        if not mc.cursorsEnabled() then
          mc.enableCursors()
        elseif mc.hasCursors() then
          mc.clearCursors()
        else
          vim.cmd("noh")
        end
      end)
    end,
  },
}
