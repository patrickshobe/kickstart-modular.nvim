-- NOTE: Plugins can also be configured to run lua code when they are loaded.
--
-- This is often very useful to both group configuration, as well as handle
-- lazy loading plugins that don't need to be loaded immediately at startup.
--
-- For example, in the following configuration, we use:
--  event = 'VeryLazy'
--
-- which loads which-key after all the UI elements are loaded. Events can be
-- normal autocommands events (:help autocomd-events).
--
-- Then, because we use the `config` key, the configuration only runs
-- after the plugin has been loaded:
--  config = function() ... end

return {
  { -- Useful plugin to show you pending keybinds.
    'folke/which-key.nvim',
    event = 'VeryLazy', -- Sets the loading event to 'VeryLazy'
    config = function() -- This is the function that runs, AFTER loading
      require('which-key').setup()

      -- Document existing key chains
      require('which-key').register({
        f = { "<cmd>lua require('ranger-nvim').open(true)<CR>", 'File' },
        F = { "<cmd>lua require('ranger-nvim').open(false)<CR>", 'File Root' },
        N = { '<cmd>Notifications<CR>', 'Notifications' },
        cp = { '<cmd>Copilot panel<CR>', 'Copilot' },
        n = {
          name = 'Notes',
          t = { '<cmd>ObsidianToday<CR>', 'Today' },
          s = { '<cmd>ObsidianSearch<CR>', 'Search' },
          y = { '<cmd>ObsidianYesterday<CR>', 'Search' },
        },
        g = {
          name = 'Git',
          b = { '<cmd>GBrowse<CR>', 'Browse' },
          g = { '<cmd>Lazygit<CR>', 'Lazy' },
          l = { '<cmd>LazygitFilter<CR>', 'Log' },
        },
        b = {
          name = 'Buffers',
          d = { '<cmd>BufferDelete<CR>', 'Delete' },
          D = { '<cmd>BufferPickDelete<CR>', 'Pick Delete' },
          j = { '<cmd>BufferPrevious<CR>', 'Previous' },
          k = { '<cmd>BufferNext<CR>', 'Next' },
          p = { '<cmd>BufferPick<CR>', 'Pick' },
          q = { '<cmd>BufferCloseAllButPinned<CR>', 'Clear' },
        },
        s = {
          name = 'Search',
          F = { "<cmd>lua require('telescope.builtin').git_files()<CR>", 'Find File' },
          f = { "<cmd>lua require('telescope.builtin').find_files()<CR>", 'Find Git Files' },
          g = { "<cmd>lua require('telescope.builtin').git_status()<CR>", 'Git Status' },
          sh = { "<cmd>lua require('telescope.builtin').search_history()<CR>", 'History' },
          ib = { "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>", 'Current Buffer Fuzzy Find' },
          h = { "<cmd>lua require('telescope.builtin').history()<CR>", 'History' },
          o = { "<cmd>lua require('telescope.builtin').oldfiles()<CR>", 'Old files' },
          t = { "<cmd>lua require('telescope.builtin').tags()<CR>", 'Tags' },
        },
      }, { prefix = '<leader>' })
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
