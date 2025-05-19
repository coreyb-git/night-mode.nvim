Night mode for Neovim.

Inspired by my annoyances with the werewolf plugin.

Install with lazy:
```
return {
	"coreyb-git/night-mode.nvim",
	dependencies = {
		"rcarriga/nvim-notify",

		"yorik1984/newpaper.nvim", --newpaper theme
		"echasnovski/mini.nvim", --minicyan theme
	},
	opts = {
		enabled = true,

		hour_sunrise = 5,
		hour_sunset = 17,

		day_colorscheme = "newpaper",
		day_bg = "light",

		night_colorscheme = "minicyan",
		night_bg = "light",
	},
}
```
