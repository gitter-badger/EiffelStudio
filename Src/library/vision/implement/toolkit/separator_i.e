indexing

	description: "General separator implementation";
	status: "See notice at end of class";
	date: "$Date$";
	revision: "$Revision$"

deferred class SEPARATOR_I 

inherit

	PRIMITIVE_I
	
feature 

	is_horizontal: BOOLEAN is
			-- Is separator oriented horizontal?
		deferred
		end; -- is_horizontal

	set_double_dashed_line is
			-- Set separator display to be double dashed line.
		deferred
		end; -- set_double_dashed_line

	set_double_line is
			-- Set separator display to be double line.
		deferred
		end; -- set_double_line

	set_horizontal (flag: BOOLEAN) is
			-- Set orientation of the scale to horizontal if `flag',
			-- to vertical otherwise.
		deferred
		ensure
			value_correctly_set: is_horizontal = flag
		end; -- set_horizontal

	set_no_line is
			-- Make current separator invisible.
		deferred
		end; -- set_no_line

	set_single_dashed_line is
			-- Set separator display to be single dashed line.
		deferred
		end; -- set_single_dashed_line

	set_single_line is
			-- Set separator display to be single line.
		deferred
		end -- set_single_line

end -- class SEPARATOR_I


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
