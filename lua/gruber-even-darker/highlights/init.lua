local M = {}

---@class HighlightsProvider
---@field highlights table<string, Highlight>
---@field setup fun() Set highlights

---@type HighlightsProvider[]
local providers = {
	require("gruber-even-darker.highlights.colorscheme"),
	require("gruber-even-darker.highlights.lsp"),
	require("gruber-even-darker.highlights.vim"),
	require("gruber-even-darker.highlights.terminal"),
	require("gruber-even-darker.highlights.treesitter"),
	require("gruber-even-darker.highlights.cmp"),
	require("gruber-even-darker.highlights.telescope"),
}

---Set highlights for configured providers
function M.setup()
	for _, provider in ipairs(providers) do
		provider:setup()
	end
	vim.opt.guicursor:append("a:Cursor/lCursor")
end

return M
