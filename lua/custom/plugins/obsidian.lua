return {
  'epwalsh/obsidian.nvim',
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',
  },
  opts = {
    workspaces = {
      {
        name = 'notes',
        path = '~/Documents/notes',
      },
    },
    daily_notes = {
      folder = 'dailies',
    },
  },
}
