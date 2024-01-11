local M = {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  event = "BufReadPre",
}

M.opts = {
  scope = {
    enabled = true,
  },
  indent = {
    highlight =
      { "Whitespace",
        "NonText",
        "SignColumn",
        "Question",
        "FoldColumn",
        "Question",
        "FoldColumn",
      }
  },
}

return M
