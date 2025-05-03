local M = {}

function M.check()
	local c = require("nub.sun").getCurrentConfig()
	if c.enabled then
		vim.health.ok("Enabled")
	else
		vim.health.error("Disabled")
	end

	vim.health.info("Light scheme: " .. c.light_colorscheme)
	vim.health.info("Dark scheme: " .. c.dark_colorscheme)

	vim.health.info("Sunrise: " .. c.hour_sunrise)
	vim.health.info("Sunset: " .. c.hour_sunset)
end

return M
