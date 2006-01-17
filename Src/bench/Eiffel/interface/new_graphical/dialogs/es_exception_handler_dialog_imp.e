indexing
	description: "Objects that represent an EV_DIALOG.%
		%The original version of this class was generated by EiffelBuild."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	ES_EXCEPTION_HANDLER_DIALOG_IMP

inherit
	EV_DIALOG
		redefine
			initialize, is_in_default_state
		end
			
	EB_DIALOG_CONSTANTS
		undefine
			is_equal, default_create, copy
		end

-- This class is the implementation of an EV_DIALOG generated by EiffelBuild.
-- You should not modify this code by hand, as it will be re-generated every time
-- modifications are made to the project.

feature {NONE}-- Initialization

	initialize is
			-- Initialize `Current'.
		do
			Precursor {EV_DIALOG}
			initialize_constants
			
				-- Create all widgets.
			create l_ev_vertical_box_1
			create l_ev_frame_1
			create l_ev_vertical_box_2
			create l_ev_horizontal_box_1
			create handling_external_checking
			create l_ev_horizontal_box_2
			create handling_checkbox
			create main_frame
			create l_ev_vertical_box_3
			create grid
			create l_ev_horizontal_box_3
			create l_ev_label_1
			create tf_pattern
			create button_add
			create button_del
			create l_ev_horizontal_box_4
			create l_ev_cell_1
			create cancel_button
			create apply_button
			create ok_button
			
				-- Build_widget_structure.
			extend (l_ev_vertical_box_1)
			l_ev_vertical_box_1.extend (l_ev_frame_1)
			l_ev_frame_1.extend (l_ev_vertical_box_2)
			l_ev_vertical_box_2.extend (l_ev_horizontal_box_1)
			l_ev_horizontal_box_1.extend (handling_external_checking)
			l_ev_vertical_box_2.extend (l_ev_horizontal_box_2)
			l_ev_horizontal_box_2.extend (handling_checkbox)
			l_ev_vertical_box_1.extend (main_frame)
			main_frame.extend (l_ev_vertical_box_3)
			l_ev_vertical_box_3.extend (grid)
			l_ev_vertical_box_3.extend (l_ev_horizontal_box_3)
			l_ev_horizontal_box_3.extend (l_ev_label_1)
			l_ev_horizontal_box_3.extend (tf_pattern)
			l_ev_horizontal_box_3.extend (button_add)
			l_ev_horizontal_box_3.extend (button_del)
			l_ev_vertical_box_1.extend (l_ev_horizontal_box_4)
			l_ev_horizontal_box_4.extend (l_ev_cell_1)
			l_ev_horizontal_box_4.extend (cancel_button)
			l_ev_horizontal_box_4.extend (apply_button)
			l_ev_horizontal_box_4.extend (ok_button)
			
			l_ev_vertical_box_1.set_padding_width (small_padding)
			l_ev_vertical_box_1.set_border_width (small_padding)
			l_ev_vertical_box_1.disable_item_expand (l_ev_frame_1)
			l_ev_vertical_box_1.disable_item_expand (l_ev_horizontal_box_4)
			l_ev_horizontal_box_1.set_padding_width (tiny_padding)
			l_ev_horizontal_box_1.set_border_width (tiny_padding)
			handling_external_checking.set_text ("Ignore external exception")
			l_ev_horizontal_box_2.set_padding_width (tiny_padding)
			l_ev_horizontal_box_2.set_border_width (tiny_padding)
			l_ev_vertical_box_3.set_padding_width (tiny_padding)
			l_ev_vertical_box_3.set_border_width (small_padding)
			l_ev_vertical_box_3.disable_item_expand (l_ev_horizontal_box_3)
			l_ev_horizontal_box_3.set_padding_width (small_padding)
			l_ev_horizontal_box_3.set_border_width (tiny_padding)
			l_ev_horizontal_box_3.disable_item_expand (l_ev_label_1)
			l_ev_horizontal_box_3.disable_item_expand (button_add)
			l_ev_horizontal_box_3.disable_item_expand (button_del)
			l_ev_label_1.set_text ("Pattern")
			button_add.set_text ("Add")
			button_del.set_text ("Del")
			l_ev_horizontal_box_4.set_padding_width (tiny_padding)
			l_ev_horizontal_box_4.set_border_width (tiny_padding)
			l_ev_horizontal_box_4.disable_item_expand (cancel_button)
			l_ev_horizontal_box_4.disable_item_expand (apply_button)
			l_ev_horizontal_box_4.disable_item_expand (ok_button)
			cancel_button.set_text ("Cancel")
			cancel_button.set_minimum_width (default_button_width)
			apply_button.set_text ("Apply")
			apply_button.set_minimum_width (default_button_width)
			ok_button.set_text ("Ok")
			ok_button.set_minimum_width (default_button_width)
			set_title ("Exceptions handler")
			
				--Connect events.
			button_add.select_actions.extend (agent on_add)
			button_del.select_actions.extend (agent on_del)
			cancel_button.select_actions.extend (agent on_cancel)
			apply_button.select_actions.extend (agent on_apply)
			ok_button.select_actions.extend (agent on_ok)
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.

				-- Call `user_initialization'.
			user_initialization
		end

feature -- Access

	grid: EV_GRID
	button_add, button_del, cancel_button, apply_button, ok_button: EV_BUTTON
	handling_external_checking,
	handling_checkbox: EV_CHECK_BUTTON
	tf_pattern: EV_TEXT_FIELD
	main_frame: EV_FRAME

feature {NONE} -- Implementation

	l_ev_cell_1: EV_CELL
	l_ev_horizontal_box_1, l_ev_horizontal_box_2, l_ev_horizontal_box_3,
	l_ev_horizontal_box_4: EV_HORIZONTAL_BOX
	l_ev_vertical_box_1, l_ev_vertical_box_2, l_ev_vertical_box_3: EV_VERTICAL_BOX
	l_ev_label_1: EV_LABEL
	l_ev_frame_1: EV_FRAME

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
	
	on_add is
			-- Called by `select_actions' of `button_add'.
		deferred
		end
	
	on_del is
			-- Called by `select_actions' of `button_del'.
		deferred
		end
	
	on_cancel is
			-- Called by `select_actions' of `cancel_button'.
		deferred
		end
	
	on_apply is
			-- Called by `select_actions' of `apply_button'.
		deferred
		end
	
	on_ok is
			-- Called by `select_actions' of `ok_button'.
		deferred
		end
	

indexing
	copyright:	"Copyright (c) 1984-2006, Eiffel Software"
	license:	"GPL version 2 see http://www.eiffel.com/licensing/gpl.txt)"
	licensing_options:	"http://www.eiffel.com/licensing"
	copying: "[
			This file is part of Eiffel Software's Eiffel Development Environment.
			
			Eiffel Software's Eiffel Development Environment is free
			software; you can redistribute it and/or modify it under
			the terms of the GNU General Public License as published
			by the Free Software Foundation, version 2 of the License
			(available at the URL listed under "license" above).
			
			Eiffel Software's Eiffel Development Environment is
			distributed in the hope that it will be useful,	but
			WITHOUT ANY WARRANTY; without even the implied warranty
			of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
			See the	GNU General Public License for more details.
			
			You should have received a copy of the GNU General Public
			License along with Eiffel Software's Eiffel Development
			Environment; if not, write to the Free Software Foundation,
			Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301  USA
		]"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"

end -- class ES_EXCEPTION_HANDLER_DIALOG_IMP
