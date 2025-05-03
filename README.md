Night mode for Neovim.

Inspired by my annoyances with the werewolf plugin.

Usage with lazy:
```
return {
	"coreyb-git/sunset.nvim",
	dependencies = {
		"rcarriga/nvim-notify",
		"yorik1984/newpaper.nvim",
		"echasnovski/mini.nvim", --minicyan
	},
	opts = {
		--enabled = false,
		light_colorscheme = "newpaper",
		light_bg = "light",
		dark_colorscheme = "minicyan",
		dark_bg = "light",
	},
	lazy = false,
}
```
