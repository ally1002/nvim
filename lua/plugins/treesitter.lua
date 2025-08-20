return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = {
    auto_install = true,
    ensure_installed = {
      'bash',
      'diff',
      'ruby',
      'html',
      'lua',
      'luadoc',
      'markdown',
      'markdown_inline',
      'javascript',
      'typescript',
    },
    highlight = { enable = true, additional_vim_regex_highlighting = { 'ruby' } },
    indent = { enable = true },
  },
}
