return {
  {
    {
      "williamboman/mason.nvim",
      opts = function(_, opts)
        vim.list_extend(opts.ensure_installed, {
          "stylua",
          "selene",
          "luacheck",
          "shellcheck",
          "shfmt",
          "tailwindcss-language-server",
          "typescript-language-server",
          "css-lsp",
        })
      end,
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        html = {},
        emmet_language_server = {},
        -- pyright = {
        --   settings = {
        --     python = {
        --       analysis = {
        --         typeCheckingMode = "off", -- or "strict" if you prefer
        --         autoSearchPaths = true,
        --         useLibraryCodeForTypes = true,
        --       },
        --     },
        --   },
        -- },
        ruff_lsp = {
          settings = {
            format = {
              enabled = false, -- Disable Ruff formatting
            },
          },
        },
        vtsls = {
          root_dir = function()
            return not vim.fs.root(0, { "deno.json", "deno.jsonc" })
              and vim.fs.root(0, {
                "tsconfig.json",
                "jsconfig.json",
                "package.json",
                ".git",
              })
          end,
          settings = {
            complete_function_calls = true,
            vtsls = {
              enableMoveToFileCodeAction = true,
              autoUseWorkspaceTsdk = true,
              experimental = {
                completion = {
                  enableServerSideFuzzyMatch = true,
                },
              },
            },
            typescript = {
              updateImportsOnFileMove = { enabled = "always" },
              suggest = {
                completeFunctionCalls = true,
              },
              inlayHints = {
                enumMemberValues = { enabled = false },
                functionLikeReturnTypes = { enabled = false },
                parameterNames = { enabled = false },
                parameterTypes = { enabled = false },
                propertyDeclarationTypes = { enabled = false },
                variableTypes = { enabled = false },
              },
            },
          },
        },
      },
    },
  },
}
