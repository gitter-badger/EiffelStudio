indexing
	description: "Objects that allow insertion of a Vision2 control%
		%within a WEL system."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	WEL_EV_CONTAINER

inherit

	EV_CELL
		redefine
			implementation,
			create_implementation
		end

create
	make_with_parent

feature {NONE} -- Initialization

	make_with_parent (a_parent: WEL_WINDOW; x_pos, y_pos, a_width, a_height: INTEGER) is
			-- Create `Current' with parent `a_parent', x_position `x_pos', y_position `y_pos',
			-- a width of `a_width' and a height of `a_height'.
			-- If an instance of EV_APPLICATION does not exist in the system, then an EV_APPLICATION
			-- will be created during the execution of this feature. To find if an instance of
			-- EV_APPLICATION exists, (create {EV_ENVIRONMENT}).application.
			-- Note that internally, we need to initialize a new EV_WINDOW which will be included
			-- in `windows' from EV_APPLICATION.
		do
			create {WEL_EV_CONTAINER_IMP} implementation.make (Current)
			implementation.set_state_flag ({EV_ANY_I}.interface_default_create_called_flag, True)
			implementation.initialize
			implementation.set_real_parent (a_parent, x_position, y_position, a_width, a_height)
			initialize
		end

feature -- Access

	implementation_window: WEL_WINDOW is
			-- Window containing `item'.
		do
			Result := implementation.implementation_window
		end

feature {EV_ANY, EV_ANY_I} -- Implementation

	implementation: WEL_EV_CONTAINER_I
			-- Responsible for interaction with native graphics toolkit.

feature {NONE} -- Implementation

	create_implementation is
			-- See `{EV_ANY}.create_implementation'.
		do
			-- For a normal Vision2 widget, this would be executed to build
			-- the implementation. For this widget, this is never called,
			-- as `Current' must be built using `make_with_parent'.
		end

indexing
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"




end -- class WEL_EV_CONTAINER

