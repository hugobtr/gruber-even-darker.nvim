local Highlight = require("gruber-even-darker.highlight")
local c = require("gruber-even-darker.palette")
local opts = require("gruber-even-darker.config").get_opts()

---@type HighlightsProvider
local M = {
	highlights = {},
}

---Set GruberEvenDarker-specific highlights
function M.setup()
	for _, value in pairs(M.highlights) do
		value:setup()
	end
end

-- Highlights inspired by
-- https://github.com/ellisonleao/gruvbox.nvim/blob/main/lua/gruvbox/groups.lua#L43

-- Colors

M.highlights.fg0 = Highlight.new("GruberEvenDarkerFg0", { fg = c.fg })
M.highlights.fg1 = Highlight.new("GruberEvenDarkerFg1", { fg = c["fg+1"] })
M.highlights.fg2 = Highlight.new("GruberEvenDarkerFg2", { fg = c["fg+2"] })

M.highlights.bg_1 = Highlight.new("GruberEvenDarkerBg_1", { fg = c["bg-1"] })
M.highlights.bg0 = Highlight.new("GruberEvenDarkerBg0", { fg = c.bg })
M.highlights.bg1 = Highlight.new("GruberEvenDarkerBg1", { fg = c["bg+1"] })
M.highlights.bg2 = Highlight.new("GruberEvenDarkerBg2", { fg = c["bg+2"] })
M.highlights.bg3 = Highlight.new("GruberEvenDarkerBg3", { fg = c["bg+3"] })
M.highlights.bg4 = Highlight.new("GruberEvenDarkerBg4", { fg = c["bg+4"] })

M.highlights.dark_red = Highlight.new("GruberEvenDarkerDarkRed", { fg = c["red-1"] })
M.highlights.dark_red_bold = Highlight.new("GruberEvenDarkerDarkRedBold", { fg = c["red-1"], bold = opts.bold })
M.highlights.red = Highlight.new("GruberEvenDarkerRed", { fg = c.red })
M.highlights.red_bold = Highlight.new("GruberEvenDarkerRedBold", { fg = c.red, bold = opts.bold })
M.highlights.light_red = Highlight.new("GruberEvenDarkerLightRed", { fg = c["red+1"] })
M.highlights.light_red_bold = Highlight.new("GruberEvenDarkerLightRedBold", { fg = c["red+1"], bold = opts.bold })

M.highlights.green = Highlight.new("GruberEvenDarkerGreen", { fg = c.green })
M.highlights.green_bold = Highlight.new("GruberEvenDarkerGreenBold", { fg = c.green, bold = opts.bold })

M.highlights.yellow = Highlight.new("GruberEvenDarkerYellow", { fg = c.yellow })
M.highlights.yellow_bold = Highlight.new("GruberEvenDarkerYellowBold", { fg = c.yellow, bold = opts.bold })

M.highlights.brown = Highlight.new("GruberEvenDarkerBrown", { fg = c.brown })
M.highlights.brown_bold = Highlight.new("GruberEvenDarkerBrownBold", { fg = c.brown, bold = opts.bold })

M.highlights.quartz = Highlight.new("GruberEvenDarkerQuartz", { fg = c.quartz })
M.highlights.quartz_bold = Highlight.new("GruberEvenDarkerQuartzBold", { fg = c.quartz, bold = opts.bold })

M.highlights.darker_niagara = Highlight.new("GruberEvenDarkerDarkestNiagara", { fg = c["niagara-2"] })
M.highlights.darker_niagara_bold =
	Highlight.new("GruberEvenDarkerDarkestNiagaraBold", { fg = c["niagara-2"], bold = opts.bold })
M.highlights.dark_niagara = Highlight.new("GruberEvenDarkerDarkNiagara", { fg = c["niagara-1"] })
M.highlights.dark_niagara_bold = Highlight.new("GruberEvenDarkerDarkNiagaraBold", { fg = c["niagara-1"], bold = opts.bold })
M.highlights.niagara = Highlight.new("GruberEvenDarkerNiagara", { fg = c.niagara })
M.highlights.niagara_bold = Highlight.new("GruberEvenDarkerNiagaraBold", { fg = c.niagara, bold = opts.bold })

M.highlights.wisteria = Highlight.new("GruberEvenDarkerWisteria", { fg = c.wisteria })
M.highlights.wisteria_bold = Highlight.new("GruberEvenDarkerWisteriaBold", { fg = c.wisteria, bold = opts.bold })

-- Signs

M.highlights.red_sign = Highlight.new("GruberEvenDarkerRedSign", { fg = c.red, reverse = opts.invert.signs })
M.highlights.yellow_sign = Highlight.new("GruberEvenDarkerYellowSign", { fg = c.yellow, reverse = opts.invert.signs })
M.highlights.green_sign = Highlight.new("GruberEvenDarkerGreenSign", { fg = c.green, reverse = opts.invert.signs })
M.highlights.quartz_sign = Highlight.new("GruberEvenDarkerQuartzSign", { fg = c.quartz, reverse = opts.invert.signs })
M.highlights.niagara_sign = Highlight.new("GruberEvenDarkerNiagaraSign", { fg = c.niagara, reverse = opts.invert.signs })
M.highlights.wisteria_sign = Highlight.new("GruberEvenDarkerWisteriaSign", { fg = c.wisteria, reverse = opts.invert.signs })

-- Underlines

M.highlights.red_underline = Highlight.new("GruberEvenDarkerRedUnderline", { sp = c.red, undercurl = opts.undercurl })
M.highlights.yellow_underline =
	Highlight.new("GruberEvenDarkerYellowUnderline", { sp = c.yellow, undercurl = opts.undercurl })
M.highlights.green_underline = Highlight.new("GruberEvenDarkerGreenUnderline", { sp = c.green, undercurl = opts.undercurl })
M.highlights.quartz_underline =
	Highlight.new("GruberEvenDarkerQuartzUnderline", { sp = c.quartz, undercurl = opts.undercurl })
M.highlights.niagara_underline =
	Highlight.new("GruberEvenDarkerNiagaraUnderline", { sp = c.niagara, undercurl = opts.undercurl })
M.highlights.wisteria_underline =
	Highlight.new("GruberEvenDarkerWisteriaUnderline", { sp = c.wisteria, undercurl = opts.undercurl })

return M
