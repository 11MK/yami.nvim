local M = {}
local config = require('yami.config')
local c = require 'yami.colors'

function M.setup()
    if not config.term_colors then return end
    vim.g.terminal_color_0 = c.black
    vim.g.terminal_color_8 = c.bg2

    vim.g.terminal_color_7 = c.fg
    vim.g.terminal_color_15 = c.fg

    vim.g.terminal_color_1 = c.red
    vim.g.terminal_color_9 = c.red

    vim.g.terminal_color_2 = c.green
    vim.g.terminal_color_10 = c.green

    vim.g.terminal_color_3 = c.yellow
    vim.g.terminal_color_11 = c.yellow

    vim.g.terminal_color_4 = c.blue
    vim.g.terminal_color_12 = c.blue

    vim.g.terminal_color_5 = c.purple
    vim.g.terminal_color_13 = c.purple

    vim.g.terminal_color_6 = c.cyan
    vim.g.terminal_color_14 = c.cyan
end

return M