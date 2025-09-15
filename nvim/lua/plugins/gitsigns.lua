
return {
  {
    "sindrets/diffview.nvim",                 -- Plugin repository
    dependencies = { "nvim-tree/nvim-web-devicons" },  -- Optional icons
    keys = {                                  -- Key mapping for lazy loading
      {
        "dv",                                 -- Trigger key
        function()
          if next(require("diffview.lib").views) == nil then
            vim.cmd("DiffviewOpen")          -- Open Diffview if no view exists
          else
            vim.cmd("DiffviewClose")         -- Otherwise, close it
          end
        end,
        desc = "Toggle Diffview window",      -- Description for which-key / help
      },
    },
  },
}
