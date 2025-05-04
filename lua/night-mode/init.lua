M = {}

local state = 0
local STATE_DAY = 1
local STATE_NIGHT = 2
local config = require("night-mode.config")

function M.init() end

function M.getCurrentConfig()
	return config
end

local function timer_update()
	local SunUp = true
	local h = tonumber(vim.fn.strftime("%H"))
	if (h < config.hour_sunrise) or (h >= config.hour_sunset) then
		SunUp = false
	end

	local change = false
	local col = "NOT SET"
	local bg = "not set"
	if SunUp then
		if state ~= STATE_DAY then
			change = true
			col = config.light_colorscheme
			bg = config.light_bg
			state = STATE_DAY
		end
	else
		if state ~= STATE_NIGHT then
			change = true
			col = config.dark_colorscheme
			bg = config.dark_bg
			state = STATE_NIGHT
		end
	end

	if change then
		vim.print("Night-Mode: Changing colorscheme to " .. col .. " (bg=" .. bg .. ")")
		vim.cmd("colorscheme " .. col)
		vim.cmd("set bg=" .. bg)
	end

	vim.defer_fn(timer_update, 60000)
end

function M.setup(opts)
	for i, v in pairs(opts) do
		config[i] = v
	end

	if config.enabled then
		if (config.light_colorscheme == "") or (config.dark_colorscheme == "") then
			config.enabled = false
			require("notify")("Missing colorscheme for Night-Mode plugin")
		else
			timer_update()
		end
	end
end

return M
