return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        -- C/C++
        "clangd",
        "clang-format",

        -- Python
        "pyright",
        "ruff",

        -- Web
        "typescript-language-server",
        "eslint-lsp",
        "prettier",
        "html-lsp",
        "css-lsp",
        "json-lsp",
        "emmet-language-server",
        --"tailwindcss-language-server",

        -- PHP / Laravel
        "intelephense",
        -- "php-cs-fixer",
        "blade-formatter",
        "pint",
        "phpstan",

        -- C# / Godot
        "roslyn-language-server",
        "csharpier",
      },
    },
  },
}
