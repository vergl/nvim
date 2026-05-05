return {
  'christoomey/vim-tmux-navigator',
  lazy = false,

  cmd = {
    'TmuxNavigateLeft',
    'TmuxNavigateDown',
    'TmuxNavigateUp',
    'TmuxNavigateRight',
    'TmuxNavigatePrevious',
    'TmuxNavigatorProcessList',
  },
  keys = {
    { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
    { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
    { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
    { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
    { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },

    -- Terminal mode (добавляем <C-\><C-n> для выхода в Normal перед навигацией)
    { '<C-h>', '<C-\\><C-n><cmd>TmuxNavigateLeft<CR>', mode = 't', silent = true },
    { '<C-j>', '<C-\\><C-n><cmd>TmuxNavigateDown<CR>', mode = 't', silent = true },
    { '<C-k>', '<C-\\><C-n><cmd>TmuxNavigateUp<CR>', mode = 't', silent = true },
    { '<C-l>', '<C-\\><C-n><cmd>TmuxNavigateRight<CR>', mode = 't', silent = true },
    { '<C-\\>', '<C-\\><C-n><cmd>TmuxNavigatePrevious<CR>', mode = 't', silent = true },
  },
}
