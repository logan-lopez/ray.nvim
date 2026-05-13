

```markdown
# nvim-ray

Neovim client for Spatie’s Ray debugger. Wraps the CLI with a Lua API via `vim.system`.

## Requirements
-  Neovim 0.9+
-  [Ray CLI](https://github.com/spatie/ray) installed and in `$PATH`

## Installation
```lua
-- lazy.nvim example
{ "logan/nvim-ray", opts = {} }
```

## Usage
The plugin assigns itself to `_G.ray`. Call it directly:

```lua
local payload = { user_id = 123, status = "active" }
ray.send(payload)
ray.json({ page = "dashboard", metrics = true })
ray.color("warning", "#f59e0b")
ray.notify("Build complete")
```

## API
Methods map directly to `ray <command>` CLI calls:
-  `ray.send(...)` – Dump variables, strings, or tables
-  `ray.json(data|json_string)` – Send formatted JSON
-  `ray.clear()` / `ray.clear_all()` – Clear current/all panels
-  `ray.color(uuid, hex)` – Color a specific panel
-  `ray.notify(message)` – Browser/system notification
-  `ray.pause()` / `ray.remove(uuid)` / `ray.size(uuid, size)` – Control flow & layout
-  `ray.file()`, `ray.html()`, `ray.image()`, `ray.text()`, `xml()` – Type-specific payloads
-  `ray.confetti()` – Celebration
-  `ray.hide_app()` / `ray.show_app()` – Toggle Ray window

## Notes
-  Uses `vim.system` under the hood. Calls are non-blocking by default in Neovim 0.10+.
-  Ray must be listening on its default socket for payloads to appear.
-  No configuration needed. Drop it in and start calling `_G.ray`.
```

```lua
-- nvim-ray: spawns a shell process for every ray.send() like it's 2014
```
