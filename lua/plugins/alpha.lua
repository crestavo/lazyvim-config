return {
  "goolord/alpha-nvim",
  config = function()
    -- File: ~/.config/nvim/lua/lazyvim/plugins/alpha.lua

    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Header
    dashboard.section.header.val = {
      -- "   █████████             █████    █████     ",
      --"  ███░░░░░███           ░░███    ░░███      ",
      --" ███     ░░░   ██████   ███████   ░███████  ",
      --"░███          ░░░░░███ ░░░███░    ░███░░███ ",
      --"░███           ███████   ░███     ░███ ░███ ",
      --"░░███     ███ ███░░███   ░███ ███ ░███ ░███ ",
      --" ░░█████████ ░░████████  ░░█████  ████ █████",
      --"  ░░░░░░░░░   ░░░░░░░░    ░░░░░  ░░░░ ░░░░░ ",
      --#region
      "┈╭━━━━━━━━━━━╮┈",
      "┈┃╭━━━╮┊╭━━━╮┃┈",
      "╭┫┃┈▇┈┃┊┃┈▇┈┃┣╮",
      "┃┃╰━━━╯┊╰━━━╯┃┃",
      "╰┫╭━╮╰━━━╯╭━╮┣╯",
      "┈┃┃┣┳┳┳┳┳┳┳┫┃┃┈",
      "┈┃┃╰┻┻┻┻┻┻┻╯┃┃┈",
      "┈╰━━━━━━━━━━━╯┈",
    }

    -- Footer
    dashboard.section.footer.val = {
      "",
      "Type :q to exit, :e to edit a file",
      "Happy coding with LazyVim!",
    }

    -- Buttons
    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
      dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
      dashboard.button("s", "勒 Restore session", function()
        require("persistence").load({ last = true })
      end), -- Tombol untuk Restore Session
      dashboard.button("l", " Lazy", ":Lazy<CR>"), -- Tombol untuk membuka Lazy
      dashboard.button("q", "  Quit", ":qa<CR>"),
    }

    -- Pengaturan tambahan
    dashboard.opts.opts.noautocmd = true

    -- Memuat konfigurasi
    alpha.setup(dashboard.opts)
  end,
}
