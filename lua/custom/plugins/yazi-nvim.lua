return {
  {
    'mikavilpas/yazi.nvim',
    event = 'VeryLazy',
    keys = {
      {
        '<leader>e',
        '<cmd>Yazi<cr>',
        desc = 'Open Yazi',
      },
      {
        '<leader>yw',
        '<cmd>Yazi cwd<cr>',
        desc = "Open Yazi in nvim's working directory",
      },
      {
        '<leader>yt',
        '<cmd>Yazi toggle<cr>',
        desc = 'Resume the last Yazi session',
      },
    },
    opts = {
      -- If you want to open Yazi instead of netrw. neo-tree hijacking must be disabled!
      open_for_directories = true,
    },
  },
}
