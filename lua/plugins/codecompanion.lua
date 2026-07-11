local hostname=vim.fn.hostname()
--print(hostname)

local ollama_model="qwen2.5-coder:3b"
if hostname=="DESKTOP-JDJNPJU" then
  ollama_model=""
end

return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      strategies = {
        chat = {
          adapter = "ollama",
        },
        inline = {
          adapter = "ollama",
        },
      },
      adapters = {
        http = {
          ollama = function()
            return require("codecompanion.adapters").extend("ollama", {
              schema = {
                model = {
                  default = ollama_model,
                },
              },
            })
          end,
        },
      },
    },
    keys = {
      { "<leader>aa", "<cmd>CodeCompanionChat<cr>", desc = "AI Chat" },
      { "<leader>ai", "<cmd>CodeCompanion<cr>", mode = { "n", "v" }, desc = "AI Inline" },
      { "<leader>at", "<cmd>CodeCompanionActions<cr>", mode = { "n", "v" }, desc = "AI Actions" },
    },
  },
}
