Night mode for Neovim.

Inspired by my annoyances with the werewolf plugin.

Usage with lazy:
```
return {
	"coreyb-git/night-mode.nvim",
	dependencies = {
		"rcarriga/nvim-notify", --optional: For displaying popup notification on theme change.

		"yorik1984/newpaper.nvim", --newpaper theme
		"echasnovski/mini.nvim", --minicyan theme
	},
	opts = {
		enabled = true,

		hour_sunrise = 5,
		hour_sunset = 17,

		light_colorscheme = "newpaper",
		light_bg = "light",
		dark_colorscheme = "minicyan",
		dark_bg = "light",
	},
}
```
