return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
  },

  {
    'folke/zen-mode.nvim',
    opts = {
      backdrop = 0.8,
      width = 0.85,
    },
  },

  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    ---@type Flash.Config
    opts = {},
    -- stylua: ignore
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end,       desc = "Flash" },
      { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o",               function() require("flash").remote() end,     desc = "Remote Flash" },
      {
        "R",
        mode = { "o", "x" },
        function() require("flash").treesitter_search() end,
        desc =
        "Treesitter Search"
      },
      {
        "<c-s>",
        mode = { "c" },
        function() require("flash").toggle() end,
        desc =
        "Toggle Flash Search"
      },
    },
  },

  {
    'Exafunction/codeium.vim',
    event = 'BufEnter',
    config = function()
      vim.g.codeium_disable_bindings = 1

      vim.keymap.set({ 'i', 'n' }, '<C-.>', function()
        return vim.fn['codeium#Accept']()
      end, { expr = true })
      vim.keymap.set({ 'i', 'n' }, '<c-;>', function()
        return vim.fn['codeium#CycleCompletions'](1)
      end, { expr = true })
      vim.keymap.set({ 'i', 'n' }, '<c-,>', function()
        return vim.fn['codeium#CycleCompletions'](-1)
      end, { expr = true })
      vim.keymap.set('i', '<c-x>', function()
        return vim.fn['codeium#Clear']()
      end, { expr = true })
    end,
  },

  {
    'kdheepak/lazygit.nvim',
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
  },

  { 'echasnovski/mini.files', version = false },

  {
    'mhartington/formatter.nvim',
  },
}
