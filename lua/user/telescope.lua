-- telescope

local status_ok, telescope = pcall(require, "telescope")
if status_ok then
  telescope.setup {}
end