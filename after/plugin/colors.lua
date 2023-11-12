
require('kanagawa').setup({
    disable_background = true,
    transparent = true,
      colors = {                   -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors) -- add/modify highlights
        return {
        }
    end,
    theme = 'wave',
      background = {               -- map the value of 'background' option to a theme
        dark = "dragon",           -- try "dragon" !
        light = "lotus"
    },
})
    


function DarkTheme(color) 
	color = color or "kanagawa"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Visual", { bg = "#2dd2ba", fg= "#000000" })

    vim.cmd(':hi MsgArea guifg=#03ff13')
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#51B3EC', bold=true })
    vim.api.nvim_set_hl(0, 'LineNr', { fg='white', bold=true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#FB508F', bold=true })
end

function LightTheme()
    vim.cmd("colorscheme kanagawa-lotus")
	vim.api.nvim_set_hl(0, "Visual", { bg = "#ffffff" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#4d699b', bold=true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#cc6d00', bold=true })
end

function CheckTheme()
   local theme = os.execute('gsettings get org.gnome.desktop.interface color-scheme | grep -i prefer-dark && echo prefer-dark')
    if theme == true then
        DarkTheme()
    else
        LightTheme()
    end
end
    CheckTheme();
