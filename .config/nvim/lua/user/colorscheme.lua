-- vim.g.tokyonight_style = "storm"
-- vim.o.background = "dark"

vim.cmd [[
try
  colorscheme vscode
  set background=dark
  " highlight Normal bg=000000

catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  " set background=dark
endtry
]]

-- vim.notify("highlight Normal bg=000000")
-- vim.notify("highlight NonText bg=none")

-- vim.cmd "colorscheme darkplus"
-- local colorscheme = "darkplus"
-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
--   vim.notify("colorscheme " .. colorscheme .. " not found!")
--   return
-- end

require'colorizer'.setup()
-- require('vscode').change_style("light")
