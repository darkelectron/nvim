return {
  "lervag/vimtex",
  ft = "tex",
  init = function()
    vim.g.vimtex_view_method = 'zathura'
    vim.g.Tex_DefaultTargetFormat = 'pdf'
    vim.g.vimtex_view_enabled = 1
    vim.g.vimtex_view_automatic=1
    vim.g.vimtex_view_general_viewer = 'zathura'
    vim.g.vimtex_quickfix_open_on_warning=0
  end
}
