indexing

	description: "OpenLook base implementation";
	status: "See notice at end of class";
	date: "$Date$";
	revision: "$Revision$"

class BASE_O 

inherit

	BASE_I
		export
			{NONE} all
		end;

	WM_SHELL_O;

	BASE_R_O
		export
			{NONE} all
		end;

	TOP_O

creation

	make
	
feature 

	make (a_base: BASE; application_class: STRING) is
		local
			name1, name2: ANY
		do
			name1 := to_c_if_not_void (a_base.identifier);
			name2 := to_c_if_not_void (application_class);
			screen_object := xt_create_app_shell (a_base.screen.implementation.screen_object, 
													$name1, $name2);
			a_base.set_wm_imp (Current)
		end;


feature {NONE} -- External features

	xt_create_app_shell (parent: POINTER; name1, name2: POINTER): POINTER is

		external
			"C"
		end; 

end 


--|----------------------------------------------------------------
--| EiffelVision: library of reusable components for ISE Eiffel 3.
--| Copyright (C) 1989, 1991, 1993, 1994, Interactive Software
--|   Engineering Inc.
--| All rights reserved. Duplication and distribution prohibited.
--|
--| 270 Storke Road, Suite 7, Goleta, CA 93117 USA
--| Telephone 805-685-1006
--| Fax 805-685-6869
--| Electronic mail <info@eiffel.com>
--| Customer support e-mail <eiffel@eiffel.com>
--|----------------------------------------------------------------
