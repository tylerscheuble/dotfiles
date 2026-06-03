-- Minuet tab completion: https://github.com/milanglacier/minuet-ai.nvim/issues/113#issuecomment-3354230752
-- vim.keymap.set({ 'i' }, '<tab>', function()
--     local mv = require 'minuet.virtualtext'
--     if mv.action.is_visible() then
--         vim.defer_fn(require('minuet.virtualtext').action.accept, 30)
--         return
--         -- respect the default behavior of snippet jumping for tab
--     elseif vim.snippet.active { direction = 1 } then
--         return string.format('<Cmd>lua vim.snippet.jump(%d)<CR>', 1)
--     else
--         return '<tab>'
--     end
-- end, {
--     desc = 'Accept minuet completion if available, jump snippet if active, otherwise insert tab.',
--     expr = true,
--     silent = true,
-- })

if vim.g.neovide then
    vim.g.neovide_position_animation_length = 0
    vim.g.neovide_cursor_animation_length = 0.00
    vim.g.neovide_cursor_trail_size = 0
    vim.g.neovide_cursor_animate_in_insert_mode = false
    vim.g.neovide_cursor_animate_command_line = false
    vim.g.neovide_scroll_animation_far_lines = 0
    vim.g.neovide_scroll_animation_length = 0.00

    -- Allow clipboard copy paste in neovim
    vim.g.neovide_input_use_logo = 1
    vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true})
    vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true})
    vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true})
    vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true})
end
