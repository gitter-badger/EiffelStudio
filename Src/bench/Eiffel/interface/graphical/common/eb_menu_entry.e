indexing

	description:
		"Menu entry for Bench.";
	date: "$Date$";
	revision: "$Revision$"

class EB_MENU_ENTRY

inherit
	ISE_MENU_ENTRY
		redefine
			associated_command
		end;
	PUSH_B
		rename
			make as button_make
		end

creation
	make, make_button_only

feature {NONE} -- Initialization

	initialize_button (a_cmd: like associated_command; a_parent: MENU) is
			-- Initialize the button part.
			-- Add activate action with argument to be
			-- `associated_command.text_window'.
		do
			button_make (a_cmd.name, a_parent);
			add_activate_action (a_cmd, a_cmd.tool)
		end;

	make_button_only (a_cmd: like associated_command; a_parent: MENU) is
			-- Initialize the button part.
			-- Do not add any action.
		require
			non_void_cmd: a_cmd /= Void;
			non_void_parent: a_parent /= Void
		do
			button_make (a_cmd.name, a_parent);
			set_text (a_cmd.name)
		end

feature -- Properties

	associated_command: TOOL_COMMAND is
			-- Command type that menu entry expects
		do
		end;

end -- class EB_MENU_ENTRY
