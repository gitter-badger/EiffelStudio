note
	description: "[
					Generated by EiffelRibbon tool
					Don't edit this file, since it will be replaced by EiffelRibbon tool
					generated files everytime
						]"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	GROUP_TOGGLE_BUTTON_IMP

inherit
	EV_RIBBON_GROUP

feature {NONE} -- Initialization

	create_interface_objects
			-- Create objects
		do
			create toggle_button_check_state.make_with_command_list (<<{COMMAND_NAME_CONSTANTS}.toggle_button_check_state>>)
			create toggle_button_change_small_image.make_with_command_list (<<{COMMAND_NAME_CONSTANTS}.toggle_button_change_small_image>>)

			create buttons.make (1)
			buttons.extend (toggle_button_check_state)
			buttons.extend (toggle_button_change_small_image)

		end

feature -- Query

	toggle_button_check_state: TOGGLE_BUTTON_CHECK_STATE
	toggle_button_change_small_image: TOGGLE_BUTTON_CHANGE_SMALL_IMAGE


end

