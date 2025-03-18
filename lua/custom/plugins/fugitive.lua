return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>Gb', ':G blame<CR>', { desc = 'Vim-fugitive: [G]it [B]lame' })
    vim.keymap.set('n', '<leader>Gds', ':Gvdiffsplit<CR>', { desc = 'Vim-fugitive: [G]it [D]iff [S]plit' })
  end,
}
