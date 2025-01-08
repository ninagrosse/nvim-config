return {
  'romgrk/barbar.nvim',
  event = 'VimEnter',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  keys = {
    { '<C-n>', '<cmd>BufferNext<cr>', { silent = true, desc = 'next buffer/tab' } },
    { '<C-p>', '<cmd>BufferPrevious<cr>', { silent = true, desc = 'previous buffer/tab' } },
    { '<leader>bl', '<cmd>BufferNext<cr>', { silent = true, desc = 'next buffer/tab' } },
    { '<leader>bh', '<cmd>BufferPrevious<cr>', { silent = true, desc = 'previous buffer/tab' } },
    { '<leader>bc', '<cmd>BufferClose<cr>', { silent = true, desc = 'close buffer/tab' } },
    { '<leader>bs', '<cmd>BufferPick<cr>', { silent = true, desc = 'select buffer/tab' } },
  },
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    -- animation = true,
    -- insert_at_start = true,
    -- …etc.
  },
}
