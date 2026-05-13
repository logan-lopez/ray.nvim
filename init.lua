local M = {}

function M.ray_command(args, opts) local command = "ray" end

function M.send(...)
  local args = { ... }
  for _, arg in ipairs(args) do
    vim.system { "ray", "send", type(arg) == "string" and arg or vim.inspect(arg) }
  end
end

function M.json(json)
  local to_send = ""

  if type(json) == "table" then
    to_send = vim.fn.json_encode(json)
  else
    to_send = json
  end

  vim.system { "ray", "json", to_send }
end

function M.clear() vim.system { "ray", "clear" } end

function M.clear_all() vim.system { "ray", "clear-all" } end

function M.color(uuid, color) vim.system { "ray", "color", uuid, color } end

function M.confetti() vim.system { "ray", "confetti" } end

function M.file(filename) vim.system { "ray", "file", filename } end

function M.hide_app() vim.system { "ray", "hide-app" } end

function M.html(content) vim.system { "ray", "html", content } end

function M.image(location) vim.system { "ray", "image", location } end

function M.notify(message) vim.system { "ray", "notify", message } end

function M.pause() vim.system { "ray", "pause" } end

function M.remove(uuid) vim.system { "ray", "remove", uuid } end

function M.show_app() vim.system { "ray", "show-app" } end

function M.size(uuid, size) vim.system { "ray", "size", uuid, size } end

function M.text(data) vim.system { "ray", "text", data } end

function M.xml(data) vim.system { "ray", "xml", data } end

_G.ray = M

return M
