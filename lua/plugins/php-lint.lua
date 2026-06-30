return {
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      opts.linters_by_ft = opts.linters_by_ft or {}

      -- Disable phpcs style diagnostics for PHP
      opts.linters_by_ft.php = {}
    end,
  },
}

