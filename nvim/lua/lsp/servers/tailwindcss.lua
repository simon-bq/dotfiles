local M = {}

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local filetypes = { "aspnetcorerazor", "astro", "astro-markdown", "blade", "django-html", "edge", "eelixir", "ejs", "erb", "eruby", "gohtml", "haml", "handlebars", "hbs", "html", "html-eex", "jade", "leaf", "liquid", "markdown", "mdx", "mustache", "njk", "nunjucks", "php", "razor", "slim", "twig", "css", "less", "postcss", "sass", "scss", "stylus", "sugarss", "javascript", "javascriptreact", "reason", "rescript", "typescript", "typescriptreact", "vue", "svelte" }

local init_options = {
  userLanguages = {
    eelixir = "html-eex",
    eruby = "erb"
  }
}

local settings = {
  tailwindCSS = {
    classAttributes = { "class", "className", "classList", "ngClass" },
    lint = {
      cssConflict = "warning",
      invalidApply = "error",
      invalidConfigPath = "error",
      invalidScreen = "error",
      invalidTailwindDirective = "error",
      invalidVariant = "error",
      recommendedVariantOrder = "warning"
    },
    validate = true
  }
}

M.filetypes = filetypes;
M.capabilities = capabilities;
M.settings = settings;
M.init_options = init_options;

return M;
