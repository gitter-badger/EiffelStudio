indexing
	description: "Information about messages Wm_mousemove, %
		%Wm_lbuttondown, Wm_mbuttondown, Wm_rbuttondown, %
		%Wm_lbuttonup, Wm_mbuttonup, Wm_rbuttonup, %
		%Wm_lbuttondblclk, Wm_mbuttondblclk, Wm_rbuttondblclk. %
		%Theses message are sent when the user clicks on the mouse."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	WEL_MOUSE_MESSAGE

inherit
	WEL_MESSAGE_INFORMATION

	WEL_MK_CONSTANTS
		export
			{NONE} all
		end

	WEL_BIT_OPERATIONS
		export
			{NONE} all
		end
create
	make

feature -- Access

	keys: INTEGER is
			-- Keys flags.
			-- See class WEL_MK_CONSTANTS for different values.
		do
			Result := w_param.to_integer_32
		end

	x: INTEGER is
			-- Horizontal position of cursor
		do
			Result := x_position_from_lparam (l_param)
		end

	y: INTEGER is
			-- Vertical position of cursor
		do
			Result := y_position_from_lparam (l_param)
		end

feature -- Status report

	control_down: BOOLEAN is
			-- Is the CTRL key down?
		do
			Result := flag_set (keys, Mk_control)
		end

	shift_down: BOOLEAN is
			-- Is the SHIFT key down?
		do
			Result := flag_set (keys, Mk_shift)
		end

	left_button_down: BOOLEAN is
			-- Is the left mouse button down?
		do
			Result := flag_set (keys, Mk_lbutton)
		end

	right_button_down: BOOLEAN is
			-- Is the right mouse button down?
		do
			Result := flag_set (keys, Mk_rbutton)
		end

	middle_button_down: BOOLEAN is
			-- Is the middle mouse button down?
		do
			Result := flag_set (keys, Mk_mbutton)
		end

end -- class WEL_MOUSE_MESSAGE

--|----------------------------------------------------------------
--| Windows Eiffel Library: library of reusable components for ISE Eiffel.
--| Copyright (C) 1985-2004 Eiffel Software. All rights reserved.
--| Duplication and distribution prohibited.  May be used only with
--| ISE Eiffel, under terms of user license.
--| Contact Eiffel Software for any other use.
--|
--| Interactive Software Engineering Inc.
--| dba Eiffel Software
--| 356 Storke Road, Goleta, CA 93117 USA
--| Telephone 805-685-1006, Fax 805-685-6869
--| Contact us at: http://www.eiffel.com/general/email.html
--| Customer support: http://support.eiffel.com
--| For latest info on our award winning products, visit:
--|	http://www.eiffel.com
--|----------------------------------------------------------------

