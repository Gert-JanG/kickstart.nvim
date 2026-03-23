return {
  'CopilotC-Nvim/CopilotChat.nvim',
  -- dependencies = { 'github/copilot.vim' },
  opts = {
    window = {
      layout = 'float',
      width = 80, -- Fixed width in columns
      height = 35, -- Fixed height in rows
      border = 'rounded', -- 'single', 'double', 'rounded', 'solid'
      title = '🤖 AI Assistant',
      zindex = 100, -- Ensure window stays on top
    },
    headers = {
      user = '👤 You',
      assistant = '🤖 Copilot',
      tool = '🔧 Tool',
    },
    separator = '━━',
    auto_fold = true, -- Automatically folds non-assistant messages
  },

  -- Copilot chat keymaps
  vim.keymap.set('n', '<leader>cc', ':CopilotChatToggle<CR>', { desc = 'Toggle Copilot Chat' }),
  vim.keymap.set('n', '<leader>cR', ':CopilotChatReset<CR>', { desc = 'Reset Copilot Chat' }),
  vim.keymap.set({ 'n', 'v' }, '<leader>ce', ':CopilotChatExplain<CR>', { desc = 'Explain code with Copilot Chat' }),
  vim.keymap.set({ 'n', 'v' }, '<leader>ch', ':help CopilotChat<CR>', { desc = 'Open Copilot Chat help' }),
  vim.keymap.set({ 'n', 'v' }, '<leader>cf', ':CopilotChatFix<CR>', { desc = 'Fix code with Copilot Chat' }),
  vim.keymap.set({ 'n', 'v' }, '<leader>cr', ':CopilotChatReview<CR>', { desc = 'Review code with Copilot Chat' }),
  vim.keymap.set({ 'n', 'v' }, '<leader>cs', ':CopilotChatStop<CR>', { desc = 'Stop Copilot Chat' }),
  vim.keymap.set({ 'n', 'v' }, '<leader>cv', ":'<,'>CopilotChat ", { desc = 'Start Copilot Chat with selected text' }),
}
