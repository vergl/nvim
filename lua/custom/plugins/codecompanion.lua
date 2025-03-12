return {
  'olimorris/codecompanion.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    {
      'MeanderingProgrammer/render-markdown.nvim',
      ft = { 'markdown', 'codecompanion' },
    },
  },

  config = function()
    vim.keymap.set('n', '<leader>cca', ':CodeCompanionAction<CR>', { desc = '[C]ode[C]ompanion: [A]ction' })
    require('codecompanion').setup {
      strategies = {
        chat = {
          adapter = 'gemini',
        },
        inline = {
          adapter = 'gemini',
        },
      },
      provider = 'gemini',
      adapters = {
        gemini = function()
          return require('codecompanion.adapters').extend('gemini', {
            env = {
              api_key = 'api-key',
            },
          })
        end,
      },
    }
  end,
}
