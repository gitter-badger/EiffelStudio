
-- Button with a border shadow.

indexing

	date: "$Date$";
	revision: "$Revision$"

class PUSH_B 

inherit

	BUTTON
		redefine
			implementation, real_x, real_y
		end;

creation

	make

feature -- Creation

	make (a_name: STRING; a_parent: COMPOSITE) is
			-- Create a push button with `a_name' as identifier,
			-- `a_parent' as parent and call `set_default'.
		require
			Valid_name: a_name /= Void;
			Valid_parent: a_parent /= Void;
			Parent_not_menu_bar: is_valid (a_parent)
		do
			depth := a_parent.depth+1;
			widget_manager.new (Current, a_parent);
			identifier:= clone (a_name);
			implementation:= toolkit.push_b (Current);
			set_default
		ensure
			Parent_set: parent = a_parent;
			Identifier_set: identifier.is_equal (a_name)
		end;

	real_x: INTEGER is
		do
			Result := parent.real_x + x;
		end;

	real_y: INTEGER is
		do
			Result := parent.real_y + y;
		end;


	
feature {G_ANY, G_ANY_I, WIDGET_I, TOOLKIT}

	implementation: PUSH_B_I;
			-- Implementation of push button

	
feature 

	is_valid (other: COMPOSITE): BOOLEAN is
			-- Is `other' a valid parent?
		local
			a_bar: BAR
		do
			a_bar ?= other;
			Result := (a_bar = Void)
		end;

feature {NONE}
	
	set_default is
			-- Set default values to current push button.
		do
		end

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
