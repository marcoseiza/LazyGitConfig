return {
  "goolord/alpha-nvim",
  opts = function(_, dashboard)
    local logo = [[
	  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
	  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
	  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
	  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
	  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
	  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝

	                   [ @marcoseiza ]
    ]]
    dashboard.section.header.val = vim.split(logo, "\n", { trimempty = true })

    local find_file_button = dashboard.button("f", " " .. " Find file", ":Telescope find_files <CR>")
    find_file_button.opts.hl = "AlphaButtons"
    find_file_button.opts.hl_shortcut = "AlphaShortcut"
    dashboard.section.buttons.val[1] = find_file_button
  end,
}
