-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
function RightPopUp()
  Snacks.terminal.toggle(nil, {
    cwd = LazyVim.root(),
    win = {
      position = "right",
      width = 0.35,
    },
  })
end

-- Open terminal splits
vim.keymap.set("n", "<leader>tr", RightPopUp, { desc = "Terminal right-side" })
vim.keymap.set("n", "<leader>th", "<cmd>split | terminal<cr>", { desc = "Terminal Horizontal" })
vim.keymap.set("n", "<leader>tv", "<cmd>vsplit | terminal<cr>", { desc = "Terminal Vertical" })
vim.keymap.set("n", "<leader>tt", "<cmd>tabnew | terminal<cr>", { desc = "Terminal Tab" })

-- Easier escape from terminal mode
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit Terminal Mode" })
