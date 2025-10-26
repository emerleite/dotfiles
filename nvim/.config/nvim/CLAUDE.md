# Neovim Configuration Guidelines

## Commands
- Format Lua: `stylua lua/`
- Lint: Use Mason-installed linters (`shellcheck`, `flake8`, etc)
- No test commands (Neovim config)

## Code Style
- Use StyLua formatting (2 space indentation, 120 char width)
- Follow LazyVim plugin structure
- Plugin definition: Tables with dependencies and config function
- Use LuaLS annotations for types (---@type, ---@param)
- Imports: Use `require("module")` pattern
- Keymaps: Define in `lua/config/keymaps.lua`
- Options: Configure in `lua/config/options.lua`
- Error handling: Check with conditionals before operations
- Naming: snake_case for variables, descriptive names
- Custom plugins go in `lua/plugins/` with one plugin per file

## LazyVim Convention
Maintain consistent style with the rest of the LazyVim ecosystem.