class
	MAIN_WINDOW

inherit
	WEL_FRAME_WINDOW
		redefine
			class_icon,
			on_menu_command,
			on_paint
		end

	APPLICATION_IDS
		export
			{NONE} all
		end

	WEL_CAPABILITIES_CONSTANTS
		export
			{NONE} all
		end

creation
	make

feature {NONE} -- Initialization

	make is
		do
			make_top (Title)
			set_menu (main_menu)
			resize (500, 300)
		end

feature {NONE} -- Implementation

	on_menu_command (menu_id: INTEGER) is
		local
			rect: WEL_RECT
		do
			inspect
				menu_id
			when Cmd_exit then
				destroy
			when Cmd_print then
				printer_dc.start_document ("WEL Print Test")
				!! rect.make (0, 0, x_resolution, y_resolution)
				draw (printer_dc, rect)
				printer_dc.new_frame
				printer_dc.end_document
			end
		end

	on_paint (paint_dc: WEL_PAINT_DC; invalid_rect: WEL_RECT) is
		do
			draw (paint_dc, client_rect)
		end

	draw (a_dc: WEL_DC; a_rect: WEL_RECT) is
			-- Draw the figures on the dc
		do
			a_dc.rectangle (0, 0, a_rect.width, a_rect.height)
			a_dc.ellipse (0, 0, a_rect.width, a_rect.height)
			a_dc.move_to (0, 0)
			a_dc.line_to (a_rect.width, a_rect.height)
			a_dc.move_to (a_rect.width, 0)
			a_dc.line_to (0, a_rect.height)
			a_dc.draw_centered_text ("Hello, Printer!", a_rect)
		end

	printer_dc: WEL_DEFAULT_PRINTER_DC is 
			-- DC used to print
		once
			!! Result.make
		ensure
			Result_not_void: Result /= Void
		end

	x_resolution: INTEGER is
			-- Horizontal printer resolution 
		once
			Result := printer_dc.device_caps (Horizontal_resolution)
		end

	y_resolution: INTEGER is
			-- Vertical printer resolution 
		once
			Result := printer_dc.device_caps (Vertical_resolution)
		end

	class_icon: WEL_ICON is
			-- Window's icon
		once
			!! Result.make_by_id (Id_ico_application)
		end

	main_menu: WEL_MENU is
			-- Window's menu
		once
			!! Result.make_by_id (Id_main_menu)
		ensure
			result_not_void: Result /= Void
		end

	Title: STRING is "WEL Print"
			-- Window's title

end -- class MAIN_WINDOW

--|-------------------------------------------------------------------------
--| Windows Eiffel Library: library of reusable components for ISE Eiffel 3.
--| Copyright (C) 1995, Interactive Software Engineering, Inc.
--| All rights reserved. Duplication and distribution prohibited.
--|
--| 270 Storke Road, Suite 7, Goleta, CA 93117 USA
--| Telephone 805-685-1006
--| Fax 805-685-6869
--| Information e-mail <info@eiffel.com>
--| Customer support e-mail <support@eiffel.com>
--|-------------------------------------------------------------------------
