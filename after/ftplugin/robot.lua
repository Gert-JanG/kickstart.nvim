vim.keymap.set('i', '  ', '    ', { noremap = true, buffer = true })
-- map tab to 4 spaces in insert mode for Robot Framework files
vim.keymap.set('i', '<Tab>', '    ', { noremap = true, buffer = true })
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣', multispace = '⌞⎽⎽⌟' }
vim.bo.commentstring = [[# %s]]

-- Link Robot Framework LSP tokens to standard highlight groups
local hl = vim.api.nvim_set_hl
hl(0, '@lsp.type.control.robot', { link = 'Keyword' })
hl(0, '@lsp.type.string.robot', { link = 'String' })
hl(0, '@lsp.type.variable.robot', { link = 'Identifier' })
hl(0, '@lsp.type.function.robot', { link = 'Function' })
hl(0, '@lsp.type.comment.robot', { link = 'Comment' })
hl(0, '@lsp.type.documentation.robot', { link = 'Comment' })
hl(0, '@lsp.type.setting.robot', { fg = '#5f99c6' })
hl(0, '@lsp.type.keywordNameCall.robot', { fg = '#4f49c6' })
hl(0, '@lsp.type.keywordNameDefinition.robot', { fg = '#cf79c6' })
hl(0, '@lsp.type.header.robot', { link = 'Title' }) -- For [Test Cases]
hl(0, '@lsp.type.argumentValue.robot', { fg = '#32d9c6', italic = true })
