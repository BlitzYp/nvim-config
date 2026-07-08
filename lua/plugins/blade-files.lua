return {
    {
        'neovim/nvim-lspconfig',
        opts = {
            servers = {
                html={
                    filetypes = {"html","blade"},
                },
                emmet_language_server={
                    filetypes = {"html","css","blade"},
                    init_options = {
                        includeLanguages = {
                            blade = "html",
                        }
                    }
                },
            }
        }

    }
}
