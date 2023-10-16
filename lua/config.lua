local M = {}

local defaults = {
	display_mappings = false,
	mappings = {}, -- Key mappings bound inside the telescope window
	preview_title = "Preview",
	prompt_title = " Pick Term",
	results_format = {
		"indicator",
		"space",
		"term_icon",
		"term_name",
	},
	results_title = "Results",
	search_field = "term_name",
	separator = " ",
	term_icon = "",
}
M.options = {}
function M.setup(opts)
	opts = opts or {}
	M.options = vim.tbl_deep_extend("force", defaults, opts)
end
M.setup()
return M
