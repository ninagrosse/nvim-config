return {
  'nosduco/remote-sshfs.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  opts = {
    connections = {
      sshfs_args = {
        '-o follow_symlinks',
      },
    },
    -- Refer to the configuration section below
    -- or leave empty for defaults
  },
  init = function()
    local api = require 'remote-sshfs.api'
    vim.keymap.set('n', '<leader>rc', api.connect, { silent = true, desc = '[R]emote [c]onnect' })
    vim.keymap.set('n', '<leader>rd', api.disconnect, { silent = true, desc = '[R]emote [d]isconnect' })
    vim.keymap.set('n', '<leader>re', api.edit, { silent = true, desc = '[R]emote [e]dit connection' })
  end,
}
