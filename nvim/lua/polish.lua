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
    vim.g.neovide_input_use_logo = 1

    -- Allow clipboard copy paste in neovim
    local function save() vim.cmd.write() end
    local function copy() vim.cmd([[normal! "+y]]) end
    local function paste() vim.api.nvim_paste(vim.fn.getreg("+"), true, -1) end

    vim.keymap.set({ "n", "i", "v" }, "<D-s>", save, { desc = "Save" })
    vim.keymap.set("v", "<D-c>", copy, { silent = true, desc = "Copy" })
    vim.keymap.set({ "n", "i", "v", "c", "t" }, "<D-v>", paste, { silent = true, desc = "Paste" })
end
