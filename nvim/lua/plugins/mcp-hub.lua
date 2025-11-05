return {
  "ravitemer/mcphub.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  build = "npm install -g mcp-hub@latest", -- Installs `mcp-hub` node binary globally
  -- Tes
  config = function()
    require("mcphub").setup({
      workspace = {
        enabled = true,
        look_for = { ".mcphub/server.json", ".vscode/mcp.json" },
        reload_on_dir_change = true,
      },
    })
  end,
}
