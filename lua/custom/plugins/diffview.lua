return {
  'sindrets/diffview.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    vim.keymap.set('n', '<leader>Gdo', ':DiffviewOpen<CR>', { desc = '[G]it: [D]iffview [O]pen' })
    vim.keymap.set('n', '<leader>Gdc', ':DiffviewClose<CR>', { desc = '[G]it: [D]iffview [C]lose' })
    vim.keymap.set('n', '<leader>Gdh', ':DiffviewFileHistory<CR>', { desc = '[G]it: [D]iffview File [H]istory' })
    vim.keymap.set('n', '<leader>Gdo', ':DiffviewFileHistory --follow %<CR>', { desc = '[G]it: [D]iffview File History (F[O]llow)' })
    vim.keymap.set('n', '<leader>Gdl', ':.DiffviewFileHistory --follow<CR>', { desc = '[G]it: [D]iffview File History ([L]ine)' })
    vim.keymap.set('n', '<leader>Gdf', ':DiffviewToggleFiles<CR>', { desc = '[G]it: [D]iffview Toggle [F]iles' })
    vim.keymap.set('v', ',Gdo', "<Esc><Cmd>'<,'>DiffviewFileHistory --follow<CR>", { desc = '[G]it: [D]iffview File History F[O]llow (visual)' })
    require('diffview').setup {
      use_icons = true, -- Включает иконки (если поддерживается)
      enhanced_diff_hl = true, -- Улучшенная подсветка diff
      view = {
        merge_tool = {
          layout = 'diff3_mixed', -- Три окна (как в IntelliJ)
          disable_diagnostics = true, -- Отключает диагностику во время merge
        },
      },
      keymaps = {
        view = {
          ['<leader>e'] = '<Cmd>DiffviewToggleFiles<CR>', -- Открыть/закрыть список файлов
          ['q'] = '<Cmd>DiffviewClose<CR>', -- Закрыть окно diff
        },
        file_panel = {
          ['j'] = 'j', -- Вниз
          ['k'] = 'k', -- Вверх
          ['<CR>'] = '<Cmd>DiffviewOpen<CR>', -- Открыть файл
          ['R'] = '<Cmd>DiffviewRefresh<CR>', -- Обновить список файлов
          ['q'] = '<Cmd>DiffviewClose<CR>', -- Закрыть панель
        },
        file_history_panel = {
          ['j'] = 'j',
          ['k'] = 'k',
          ['<CR>'] = '<Cmd>DiffviewOpen<CR>',
          ['q'] = '<Cmd>DiffviewClose<CR>',
        },
      },
    }
  end,
}
