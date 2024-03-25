return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>Gb', ':G blame<CR>', { desc = 'Vim-fugitive: [G]it [B]lame' })
  end,
}
