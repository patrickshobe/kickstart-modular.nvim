return {
  {
    'rcarriga/nvim-notify',
    config = function()
      require('notify').setup {
        background_colour = '#000000',
      }
      vim.notify = require 'notify'
    end,
  },
  {
    'mrded/nvim-lsp-notify',
    config = function()
      require('lsp-notify').setup {}
    end,
  },
}
