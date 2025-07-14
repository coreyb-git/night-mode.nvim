local M = {}

function M.check()
	local c = require("night-mode.init").getCurrentConfig()
	if c.enabled then
		vim.health.ok("Enabled")
	else
		vim.health.error("Disabled")
	end

	vim.health.info("Sunrise hour: " .. c.hour_sunrise)
	vim.health.info("Sunset hour: " .. c.hour_sunset)

	vim.health.info("Day scheme: " .. c.day_colourscheme)
	vim.health.info("Day light/dark: " .. c.day_bg)
	vim.health.info("Night scheme: " .. c.night_colourscheme)
	vim.health.info("Night light/dark: " .. c.night_bg)
end

return M
