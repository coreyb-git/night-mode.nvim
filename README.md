Night mode for Neovim.

Inspired by my annoyances with the werewolf plugin.

Install with lazy:
```
return {
	"coreyb-git/sunset.nvim",
	dependencies = {
		"rcarriga/nvim-notify",

		"yorik1984/newpaper.nvim", --newpaper theme
		"echasnovski/mini.nvim", --minicyan theme
	},
	opts = {
		enabled = true,

		light_colorscheme = "newpaper",
		light_bg = "light",

		dark_colorscheme = "minicyan",
		dark_bg = "light",
	},
	lazy = false,
}
```
