-- vim.cmd [[setlocal include='\v<((do|load)file|require)[^''"]*[''"]\zs[^''"]+']]

--local finder = {}
--
--function finder.find_require(...)
--  local to_search
--
--  local args = {...}
--  if #args > 0 then
--    to_search = args[1]
--  else
--    local line = vim.fn.getline('.')
--
--    local result = string.match(line, [[require%('(.*)'%)]])
