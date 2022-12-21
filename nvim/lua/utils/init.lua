local find_package_json_ancestor = require("lspconfig.util").find_package_json_ancestor
local path_join = require("lspconfig.util").path.join

local M = {}

local function get_package_json_path()
  local current_buffer = vim.api.nvim_get_current_buf();
  local buffer_path = vim.api.nvim_buf_get_name(current_buffer);
  local package_json_dir = find_package_json_ancestor(buffer_path);
  local package_json_path = path_join(package_json_dir, "package.json")
  return package_json_path;
end

local function get_package_name(package_json_path)
  local ok, package_name = pcall(function()
      local package_json_blob = table.concat(vim.fn.readfile(path_join(package_json_path)))
      local package_json = vim.json.decode(package_json_blob);
      return package_json["name"]
    end)
    if ok then
      return package_name;
    else
      return nil;
    end
end

M.get_monorepo_package_name = function()
  local package_name = get_package_name(get_package_json_path());
  local file_name = vim.fn.expand('%:t');
  if package_name then
    return package_name;
  end
  return file_name
end

return M;
