-- Query replace allowing ANSI characters
vim.api.nvim_create_user_command('QueryReplace', function()
  local search = vim.fn.input 'Query replace (Default foo -> bar): '
  if search == '' then
    return
  end

  local replace = vim.fn.input('Query replace (' .. search .. ' -> ?): ')
  if replace == '' then
    return
  end

  replace = replace:gsub('\\n', '\r'):gsub('\\t', '\t'):gsub('\\r', '\r'):gsub('\\\\', '\\')

  vim.fn.setreg('/', search)
  vim.fn.setreg('+', replace)

  local mode = vim.fn.mode()
  local cmd

  if mode == 'v' or mode == 'V' or mode == '\x16' then
    local a = vim.fn.getpos "'<"
    local b = vim.fn.getpos "'>"
    local start_line = a[2]
    local end_line = b[2]
    cmd = string.format('%d,%ds/%s/%s/gc', start_line, end_line, vim.fn.escape(search, '/'), vim.fn.escape(replace, '/'))
  else
    cmd = string.format('%%s/%s/%s/gc', vim.fn.escape(search, '/'), vim.fn.escape(replace, '/'))
  end

  vim.cmd 'nohlsearch'
  vim.cmd(cmd)
end, { range = true })
