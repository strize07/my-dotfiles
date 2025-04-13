return {
  "voltycodes/areyoulockedin.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "VeryLazy",
  config = function()
    require("areyoulockedin").setup({
      session_key = "d6561141-c390-4019-94f4-92142a035157",
    })
  end,
}
