return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      open_mapping = [[<c-\>]],
    },
    config = function()
      local Terminal = require('toggleterm.terminal').Terminal
      local lazygit = Terminal:new {
        cmd = 'lazygit',
        hidden = true,
        direction = 'float',
        float_opts = {
          border = 'double',
        },
      }

      function _lazygit_toggle()
        lazygit:toggle()
      end

      vim.api.nvim_set_keymap('n', '<leader>Gl', '<cmd>lua _lazygit_toggle()<CR>', { noremap = true, silent = true, desc = 'Toggleterm: [L]azygit' })
    end,
  },
}
