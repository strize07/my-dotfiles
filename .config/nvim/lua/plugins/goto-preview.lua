return {
  {
    "rmagatti/goto-preview",
    dependencies = { "rmagatti/logger.nvim" },
    event = "BufEnter",
    config = true,
    default_mappings = true -- necessary as per https://github.com/rmagatti/goto-preview/issues/88
  }
}
