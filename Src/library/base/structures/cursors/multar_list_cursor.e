indexing

	description:
		"Cursors for multi-array trees";

	copyright: "See notice at end of class";
	names: cursor;
	date: "$Date$";
	revision: "$Revision$"

class MULTAR_LIST_CURSOR [G] inherit

	CURSOR

creation

	make

feature {MULTI_ARRAY_LIST} -- Initialization

	make (active_element: like active; current_index: INTEGER) is
			-- Create a cursor and set it up on `active_element'.
		do
			active := active_element;
			index := current_index
		end;

feature {MULTI_ARRAY_LIST} -- Implementation

	active: BI_LINKABLE [ARRAYED_LIST [G]];
		-- Current element in array_sequence list

	index: INTEGER;
		-- Index relative to `active.item'

end -- class MULTAR_LIST_CURSOR


--|----------------------------------------------------------------
--| EiffelBase: library of reusable components for ISE Eiffel 3.
--| Copyright (C) 1986, 1990, 1993, Interactive Software
--|   Engineering Inc.
--| All rights reserved. Duplication and distribution prohibited.
--|
--| 270 Storke Road, Suite 7, Goleta, CA 93117 USA
--| Telephone 805-685-1006
--| Fax 805-685-6869
--| Electronic mail <info@eiffel.com>
--| Customer support e-mail <eiffel@eiffel.com>
--|----------------------------------------------------------------
