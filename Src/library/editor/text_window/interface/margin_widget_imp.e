indexing
	description: "Objects that represent an EV_TITLED_WINDOW.%
		%The original version of this class was generated by EiffelBuild."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	MARGIN_WIDGET_IMP

inherit
	CONSTANTS

feature -- Access

	widget: EV_VERTICAL_BOX
		-- `Result' is widget with which `Current' is implemented

-- This class is the implementation of an EV_TITLED_WINDOW generated by EiffelBuild.
-- You should not modify this code by hand, as it will be re-generated every time
-- modifications are made to the project.

feature {NONE}-- Initialization

	initialize is
			-- Initialize `Current'.
		do
			initialize_constants
			
				-- Create all widgets.
			create l_ev_vertical_box_1
			create margin_viewport
			create margin_area
			
				-- Build_widget_structure.
			widget.extend (l_ev_vertical_box_1)
			l_ev_vertical_box_1.extend (margin_viewport)
			margin_viewport.extend (margin_area)
			
			margin_viewport.set_item_width (279)
			margin_viewport.set_item_height (83)
			margin_area.set_minimum_width (1)
			margin_area.set_minimum_height (1)
			
				--Connect events.
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.

				-- Call `user_initialization'.
			user_initialization
		end

feature -- Basic operation

	show is
			-- Show `Current'.
		do
			widget.show
		end

feature -- Access

	l_ev_vertical_box_1: EV_VERTICAL_BOX
	margin_viewport: EV_VIEWPORT
	margin_area: EV_DRAWING_AREA

feature {NONE} -- Implementation

	is_in_default_state: BOOLEAN is
			-- Is `Current' in its default state?
		do
			-- Re-implement if you wish to enable checking
			-- for `Current'.
			Result := True
		end
	
	user_initialization is
			-- Feature for custom initialization, called at end of `initialize'.
		deferred
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




end -- class MARGIN_WIDGET_IMP
