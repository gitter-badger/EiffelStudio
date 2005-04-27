indexing
	description: "Objects that represent an EV_TITLED_WINDOW.%
		%The original version of this class was generated by EiffelBuild."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	POSITION_TAB_IMP

inherit
	EV_VERTICAL_BOX
		redefine
			initialize, is_in_default_state
		end
			
	CONSTANTS
		undefine
			is_equal, default_create, copy
		end

-- This class is the implementation of an EV_TITLED_WINDOW generated by EiffelBuild.
-- You should not modify this code by hand, as it will be re-generated every time
-- modifications are made to the project.

feature {NONE}-- Initialization

	initialize is
			-- Initialize `Current'.
		do
			Precursor {EV_VERTICAL_BOX}
			initialize_constants
			
				-- Create all widgets.
			create l_ev_frame_1
			create drawable
			create l_ev_horizontal_box_1
			create l_ev_label_1
			create virtual_x_position
			create l_ev_label_2
			create virtual_y_position
			
				-- Build_widget_structure.
			extend (l_ev_frame_1)
			l_ev_frame_1.extend (drawable)
			extend (l_ev_horizontal_box_1)
			l_ev_horizontal_box_1.extend (l_ev_label_1)
			l_ev_horizontal_box_1.extend (virtual_x_position)
			l_ev_horizontal_box_1.extend (l_ev_label_2)
			l_ev_horizontal_box_1.extend (virtual_y_position)
			
			l_ev_horizontal_box_1.set_padding_width (box_padding)
			l_ev_horizontal_box_1.disable_item_expand (l_ev_label_1)
			l_ev_horizontal_box_1.disable_item_expand (l_ev_label_2)
			l_ev_label_1.set_text ("Virtual X : ")
			virtual_x_position.value_range.adapt (create {INTEGER_INTERVAL}.make (0, 100000))
			l_ev_label_2.set_text ("Virtual Y : ")
			virtual_y_position.value_range.adapt (create {INTEGER_INTERVAL}.make (0, 100000))
			set_padding_width (box_padding)
			set_border_width (box_padding)
			disable_item_expand (l_ev_horizontal_box_1)
			
				--Connect events.
			drawable.expose_actions.extend (agent drawable_exposed (?, ?, ?, ?))
			drawable.pointer_motion_actions.extend (agent pointed_moved_on_drawable (?, ?, ?, ?, ?, ?, ?))
			drawable.pointer_button_press_actions.extend (agent button_pressed_on_drawable (?, ?, ?, ?, ?, ?, ?, ?))
			drawable.pointer_button_release_actions.extend (agent button_released_on_drawable (?, ?, ?, ?, ?, ?, ?, ?))
			drawable.resize_actions.extend (agent drawable_resized (?, ?, ?, ?))
			virtual_x_position.change_actions.extend (agent virtual_x_position_changed (?))
			virtual_y_position.change_actions.extend (agent virtual_y_position_changed (?))
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.

				-- Call `user_initialization'.
			user_initialization
		end

feature -- Access

	virtual_x_position, virtual_y_position: EV_SPIN_BUTTON
	drawable: EV_DRAWING_AREA

feature {NONE} -- Implementation

	l_ev_horizontal_box_1: EV_HORIZONTAL_BOX
	l_ev_label_1, l_ev_label_2: EV_LABEL
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
	
	drawable_exposed (a_x, a_y, a_width, a_height: INTEGER) is
			-- Called by `expose_actions' of `drawable'.
		deferred
		end
	
	pointed_moved_on_drawable (a_x, a_y: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER) is
			-- Called by `pointer_motion_actions' of `drawable'.
		deferred
		end
	
	button_pressed_on_drawable (a_x, a_y, a_button: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER) is
			-- Called by `pointer_button_press_actions' of `drawable'.
		deferred
		end
	
	button_released_on_drawable (a_x, a_y, a_button: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER) is
			-- Called by `pointer_button_release_actions' of `drawable'.
		deferred
		end
	
	drawable_resized (a_x, a_y, a_width, a_height: INTEGER) is
			-- Called by `resize_actions' of `drawable'.
		deferred
		end
	
	virtual_x_position_changed (a_value: INTEGER) is
			-- Called by `change_actions' of `virtual_x_position'.
		deferred
		end
	
	virtual_y_position_changed (a_value: INTEGER) is
			-- Called by `change_actions' of `virtual_y_position'.
		deferred
		end
	

end -- class POSITION_TAB_IMP
