class
	PRECOMP_MAIN_WINDOW

inherit
	WEL_MDI_FRAME_WINDOW
		redefine
			on_menu_command
		end

	APPLICATION_IDS
		export
			{NONE} all
		end

creation
	make

feature {NONE} -- Initialization

	make is
		do
			make_top (Title, main_menu.popup_menu (1), 1000)
			set_menu (main_menu)
		end

feature {NONE} -- Implementation

	on_menu_command (menu_id: INTEGER) is
		local
			child: WEL_MDI_CHILD_WINDOW
			s: STRING
		do
			inspect
				menu_id
			when Cmd_file_new then
				child_no := child_no + 1
				s := "Child window "
				s.append_integer (child_no)
				create child.make (Current, s)
			when Cmd_file_close then
				if has_active_window then
					active_window.destroy
				end
			when Cmd_file_exit then
				if closeable then
					destroy
				end
			when Cmd_window_tile_vertical then
				tile_children_vertical
			when Cmd_window_tile_horizontal then
				tile_children_horizontal
			when Cmd_window_cascade then
				cascade_children
			when Cmd_window_arrange then
				arrange_icons
			else
			end
		end

	child_no: INTEGER

	main_menu: WEL_MENU is
		local
			file_popupmenu: WEL_MENU
			window_popupmenu: WEL_MENU
		once
			create file_popupmenu.make
			file_popupmenu.append_string("&New", Cmd_file_new)
			file_popupmenu.append_string("&Close", Cmd_file_close)
			file_popupmenu.append_separator
			file_popupmenu.append_string("E&xit", Cmd_file_exit)

			create window_popupmenu.make
			window_popupmenu.append_string("Tile &vertical", Cmd_window_tile_vertical)
			window_popupmenu.append_string("Tile &horizontal", Cmd_window_tile_horizontal)
			window_popupmenu.append_string("&Cascade", Cmd_window_cascade)
			window_popupmenu.append_string("&Arrange icons", Cmd_window_arrange)

			create Result.make
			Result.append_popup(file_popupmenu, "&File")
			Result.append_popup(window_popupmenu, "&Window")
		ensure
			result_not_void: Result /= Void
		end

	Title: STRING is "WEL Multiple Document Interface"
			-- Window's title

end -- class PRECOMP_MAIN_WINDOW

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
