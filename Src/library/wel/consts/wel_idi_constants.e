indexing
	description: "Icon (IDI) constants."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"
	note: "Constants changed from INTEGER to POINTER"
	
class
	WEL_IDI_CONSTANTS

feature -- Access

	Idi_application: POINTER is
		external
			"C [macro %"wel.h%"] : EIF_POINTER"
		alias
			"IDI_APPLICATION"
		end

	Idi_hand, Idi_error: POINTER is
		external
			"C [macro %"wel.h%"] : EIF_POINTER"
		alias
			"IDI_HAND"
		end

	Idi_question: POINTER is
		external
			"C [macro %"wel.h%"] : EIF_POINTER"
		alias
			"IDI_QUESTION"
		end

	Idi_exclamation, Idi_warning: POINTER is
		external
			"C [macro %"wel.h%"] : EIF_POINTER"
		alias
			"IDI_EXCLAMATION"
		end

	Idi_asterisk, Idi_information: POINTER is
		external
			"C [macro %"wel.h%"] : EIF_POINTER"
		alias
			"IDI_ASTERISK"
		end

end -- class WEL_IDI_CONSTANTS


--|----------------------------------------------------------------
--| Windows Eiffel Library: library of reusable components for ISE Eiffel.
--| Copyright (C) 1986-2001 Interactive Software Engineering Inc.
--| All rights reserved. Duplication and distribution prohibited.
--| May be used only with ISE Eiffel, under terms of user license. 
--| Contact ISE for any other use.
--|
--| Interactive Software Engineering Inc.
--| ISE Building
--| 360 Storke Road, Goleta, CA 93117 USA
--| Telephone 805-685-1006, Fax 805-685-6869
--| Electronic mail <info@eiffel.com>
--| Customer support: http://support.eiffel.com>
--| For latest info see award-winning pages: http://www.eiffel.com
--|----------------------------------------------------------------

