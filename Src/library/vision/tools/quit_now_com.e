indexing

	description: "Command to quit the application immediately";
	status: "See notice at end of class";
	date: "$Date$";
	revision: "$Revision$"

class

	QUIT_NOW_COM 

inherit

	COMMAND;

	GRAPHICS
		export
			{NONE} all
		end

feature -- Basic operations

	execute (argument: ANY) is
			-- Quit the application.
		do
			exit
		end

end -- class QUIT_NOW_COM


--|----------------------------------------------------------------
--| EiffelVision: library of reusable components for ISE Eiffel.
--| Copyright (C) 1986-1998 Interactive Software Engineering Inc.
--| All rights reserved. Duplication and distribution prohibited.
--| May be used only with ISE Eiffel, under terms of user license. 
--| Contact ISE for any other use.
--|
--| Interactive Software Engineering Inc.
--| ISE Building, 2nd floor
--| 270 Storke Road, Goleta, CA 93117 USA
--| Telephone 805-685-1006, Fax 805-685-6869
--| Electronic mail <info@eiffel.com>
--| Customer support e-mail <support@eiffel.com>
--| For latest info see award-winning pages: http://www.eiffel.com
--|----------------------------------------------------------------

