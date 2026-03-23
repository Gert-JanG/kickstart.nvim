return {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  event = 'InsertEnter',
  config = function()
    require('copilot').setup {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {},
      },
    }
    local suggestion = require 'copilot.suggestion'
    -- Copilot keymaps
    -- Map <C-y> in insert mode to accept suggestion if visible, otherwise pass through.
    vim.keymap.set('i', '<C-y>', function()
      if suggestion.is_visible() then
        suggestion.accept()
      else
        return '<C-y>'
      end
    end, { expr = true, silent = true })
    -- Map <C-n> in insert mode to next suggestion if visible, otherwise pass through.
    vim.keymap.set('i', '<C-n>', function()
      if suggestion.is_visible() then
        suggestion.next()
      else
        return '<C-n>'
      end
    end, { expr = true, silent = true })
    -- Map <C-p> in insert mode to previous suggestion if visible, otherwise pass through
    vim.keymap.set('i', '<C-p>', function()
      if suggestion.is_visible() then
        suggestion.prev()
      else
        return '<C-p>'
      end
    end, { expr = true, silent = true })
  end,
}
