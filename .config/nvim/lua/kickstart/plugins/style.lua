return {
  {
    'uloco/bluloco.nvim',
    lazy = false,
    priority = 1000,
    dependencies = { 'rktjmp/lush.nvim' },
    config = function()
      require('bluloco').setup {
        style = 'dark', -- "auto" | "dark" | "light"
        transparent = false,
        italics = false,
        terminal = vim.fn.has 'gui_running' == 1, -- bluoco colors are enabled in gui terminals per default.
        guicursor = true,
      }
      vim.opt.termguicolors = true
      vim.cmd 'colorscheme bluloco'
      -- your optional config goes here, see below.
    end,
  },
  -- {
  --   'zootedb0t/citruszest.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.o.background = 'dark'
  --     vim.cmd 'colorscheme citruszest'
  --     vim.opt.termguicolors = true
  --   end,
  -- },
}
