indexing
	description	: "Toolbar toggle button for a toolbarable command"
	date		: "$Date$"
	revision	: "$Revision$"

class
	GB_COMMAND_TOGGLE_TOOL_BAR_BUTTON 

inherit
	GB_COMMAND_TOOL_BAR_BUTTON
		undefine
			is_in_default_state
		redefine
			implementation,
			create_implementation
		end

	EV_TOOL_BAR_TOGGLE_BUTTON
		redefine
			implementation,
			create_implementation
		end

creation
	make

feature {NONE} -- Implementation

	create_implementation is
			-- See `{EV_ANY}.create_implementation'.
		do
			create {EV_TOOL_BAR_TOGGLE_BUTTON_IMP} implementation.make (Current)
		end

feature {EV_ANY_I} -- Implementation

	implementation: EV_TOOL_BAR_TOGGLE_BUTTON_I
			-- Responsible for interaction with the native graphics toolkit.

end -- class GB_COMMAND_TOGGLE_TOOL_BAR_BUTTON