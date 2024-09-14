return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    local term = require("toggleterm")
    term.setup({
      size = 20,
      open_mapping = "<C-\\>"
    })
    function _G.set_terminal_keymaps()
      local opts = { buffer = 0 }

      vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
      vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
    end

    vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
  end
}
