indexing
	description: "Objects that represent an EV_DIALOG.%
		%The original version of this class was generated by EiffelBuild."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	DOCUMENT_PROPERTIES_DIALOG_IMP

inherit
	EV_DIALOG
		redefine
			initialize, is_in_default_state
		end
			
	CONSTANTS
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
			create l_ev_notebook_1
			create l_ev_vertical_box_2
			create l_ev_horizontal_box_1
			create l_ev_label_1
			create name_text
			create l_ev_horizontal_box_2
			create l_ev_label_2
			create location_label
			create l_ev_vertical_box_3
			create l_ev_horizontal_box_3
			create l_ev_label_3
			create l_ev_horizontal_separator_1
			create l_ev_horizontal_box_4
			create l_ev_label_4
			create toc_title_text
			create l_ev_horizontal_box_5
			create l_ev_vertical_box_4
			create l_ev_frame_1
			create l_ev_vertical_box_5
			create l_ev_horizontal_box_6
			create override_12_check
			create toc_12_title_box
			create l_ev_label_5
			create toc_12_title_text
			create toc_12_location_box
			create l_ev_label_6
			create toc_12_location_text
			create toc_12_pseudo_box
			create l_ev_label_7
			create toc_12_pseudo_text
			create l_ev_frame_2
			create l_ev_vertical_box_6
			create l_ev_horizontal_box_7
			create override_20_check
			create toc_20_title_box
			create l_ev_label_8
			create toc_20_title_text
			create toc_20_location_box
			create l_ev_label_9
			create toc_20_location_text
			create toc_20_pseudo_box
			create l_ev_label_10
			create toc_20_pseudo_text
			create l_ev_vertical_box_7
			create l_ev_horizontal_box_8
			create l_ev_label_11
			create l_ev_horizontal_separator_2
			create l_ev_horizontal_box_9
			create l_ev_label_12
			create output_combo
			create l_ev_cell_1
			create l_ev_horizontal_box_10
			create l_ev_cell_2
			create apply_button
			create okay_button
			create cancel_button
			
				-- Build_widget_structure.
			extend (l_ev_vertical_box_1)
			l_ev_vertical_box_1.extend (l_ev_notebook_1)
			l_ev_notebook_1.extend (l_ev_vertical_box_2)
			l_ev_vertical_box_2.extend (l_ev_horizontal_box_1)
			l_ev_horizontal_box_1.extend (l_ev_label_1)
			l_ev_horizontal_box_1.extend (name_text)
			l_ev_vertical_box_2.extend (l_ev_horizontal_box_2)
			l_ev_horizontal_box_2.extend (l_ev_label_2)
			l_ev_horizontal_box_2.extend (location_label)
			l_ev_notebook_1.extend (l_ev_vertical_box_3)
			l_ev_vertical_box_3.extend (l_ev_horizontal_box_3)
			l_ev_horizontal_box_3.extend (l_ev_label_3)
			l_ev_horizontal_box_3.extend (l_ev_horizontal_separator_1)
			l_ev_vertical_box_3.extend (l_ev_horizontal_box_4)
			l_ev_horizontal_box_4.extend (l_ev_label_4)
			l_ev_horizontal_box_4.extend (toc_title_text)
			l_ev_vertical_box_3.extend (l_ev_horizontal_box_5)
			l_ev_horizontal_box_5.extend (l_ev_vertical_box_4)
			l_ev_vertical_box_4.extend (l_ev_frame_1)
			l_ev_frame_1.extend (l_ev_vertical_box_5)
			l_ev_vertical_box_5.extend (l_ev_horizontal_box_6)
			l_ev_horizontal_box_6.extend (override_12_check)
			l_ev_vertical_box_5.extend (toc_12_title_box)
			toc_12_title_box.extend (l_ev_label_5)
			toc_12_title_box.extend (toc_12_title_text)
			l_ev_vertical_box_5.extend (toc_12_location_box)
			toc_12_location_box.extend (l_ev_label_6)
			toc_12_location_box.extend (toc_12_location_text)
			l_ev_vertical_box_5.extend (toc_12_pseudo_box)
			toc_12_pseudo_box.extend (l_ev_label_7)
			toc_12_pseudo_box.extend (toc_12_pseudo_text)
			l_ev_vertical_box_4.extend (l_ev_frame_2)
			l_ev_frame_2.extend (l_ev_vertical_box_6)
			l_ev_vertical_box_6.extend (l_ev_horizontal_box_7)
			l_ev_horizontal_box_7.extend (override_20_check)
			l_ev_vertical_box_6.extend (toc_20_title_box)
			toc_20_title_box.extend (l_ev_label_8)
			toc_20_title_box.extend (toc_20_title_text)
			l_ev_vertical_box_6.extend (toc_20_location_box)
			toc_20_location_box.extend (l_ev_label_9)
			toc_20_location_box.extend (toc_20_location_text)
			l_ev_vertical_box_6.extend (toc_20_pseudo_box)
			toc_20_pseudo_box.extend (l_ev_label_10)
			toc_20_pseudo_box.extend (toc_20_pseudo_text)
			l_ev_notebook_1.extend (l_ev_vertical_box_7)
			l_ev_vertical_box_7.extend (l_ev_horizontal_box_8)
			l_ev_horizontal_box_8.extend (l_ev_label_11)
			l_ev_horizontal_box_8.extend (l_ev_horizontal_separator_2)
			l_ev_vertical_box_7.extend (l_ev_horizontal_box_9)
			l_ev_horizontal_box_9.extend (l_ev_label_12)
			l_ev_horizontal_box_9.extend (output_combo)
			l_ev_vertical_box_1.extend (l_ev_cell_1)
			l_ev_vertical_box_1.extend (l_ev_horizontal_box_10)
			l_ev_horizontal_box_10.extend (l_ev_cell_2)
			l_ev_horizontal_box_10.extend (apply_button)
			l_ev_horizontal_box_10.extend (okay_button)
			l_ev_horizontal_box_10.extend (cancel_button)
			
			set_minimum_width (dialog_width)
			set_minimum_height (dialog_tall_height)
			set_title ("Document Settings")
			l_ev_vertical_box_1.set_padding_width (padding_width)
			l_ev_vertical_box_1.set_border_width (border_width)
			l_ev_vertical_box_1.disable_item_expand (l_ev_cell_1)
			l_ev_vertical_box_1.disable_item_expand (l_ev_horizontal_box_10)
			l_ev_notebook_1.set_item_text (l_ev_vertical_box_2, "General")
			l_ev_notebook_1.set_item_text (l_ev_vertical_box_3, "Help Systems")
			l_ev_notebook_1.set_item_text (l_ev_vertical_box_7, "Filtering")
			l_ev_vertical_box_2.set_padding_width (5)
			l_ev_vertical_box_2.set_border_width (2)
			l_ev_vertical_box_2.disable_item_expand (l_ev_horizontal_box_1)
			l_ev_vertical_box_2.disable_item_expand (l_ev_horizontal_box_2)
			l_ev_horizontal_box_1.set_padding_width (5)
			l_ev_horizontal_box_1.set_border_width (5)
			l_ev_horizontal_box_1.disable_item_expand (l_ev_label_1)
			l_ev_label_1.set_text ("Name: ")
			l_ev_horizontal_box_2.set_padding_width (5)
			l_ev_horizontal_box_2.set_border_width (5)
			l_ev_horizontal_box_2.disable_item_expand (l_ev_label_2)
			l_ev_label_2.set_text ("Location: ")
			location_label.align_text_left
			l_ev_vertical_box_3.hide
			l_ev_vertical_box_3.disable_item_expand (l_ev_horizontal_box_3)
			l_ev_vertical_box_3.disable_item_expand (l_ev_horizontal_box_4)
			l_ev_vertical_box_3.disable_item_expand (l_ev_horizontal_box_5)
			l_ev_horizontal_box_3.set_padding_width (5)
			l_ev_horizontal_box_3.set_border_width (2)
			l_ev_horizontal_box_3.disable_item_expand (l_ev_label_3)
			l_ev_label_3.set_text ("Table of Contents")
			l_ev_label_3.align_text_left
			l_ev_horizontal_box_4.set_padding_width (5)
			l_ev_horizontal_box_4.set_border_width (5)
			l_ev_horizontal_box_4.disable_item_expand (l_ev_label_4)
			l_ev_label_4.set_text ("Table of Contents Title")
			l_ev_horizontal_box_5.set_padding_width (5)
			l_ev_horizontal_box_5.set_border_width (2)
			l_ev_vertical_box_4.set_padding_width (5)
			l_ev_vertical_box_4.set_border_width (5)
			l_ev_frame_1.set_text ("Windows Help")
			l_ev_vertical_box_5.set_padding_width (padding_width)
			l_ev_vertical_box_5.set_border_width (border_width)
			l_ev_vertical_box_5.disable_item_expand (toc_12_title_box)
			l_ev_vertical_box_5.disable_item_expand (toc_12_location_box)
			l_ev_vertical_box_5.disable_item_expand (toc_12_pseudo_box)
			l_ev_horizontal_box_6.set_padding_width (padding_width)
			l_ev_horizontal_box_6.set_border_width (border_width)
			override_12_check.set_text ("Override settings for Microsoft Windows Help")
			toc_12_title_box.set_padding_width (5)
			toc_12_title_box.set_border_width (2)
			toc_12_title_box.disable_item_expand (l_ev_label_5)
			l_ev_label_5.set_text ("Title")
			toc_12_location_box.set_padding_width (5)
			toc_12_location_box.set_border_width (2)
			toc_12_location_box.disable_item_expand (l_ev_label_6)
			l_ev_label_6.set_text ("Location")
			toc_12_pseudo_box.set_padding_width (5)
			toc_12_pseudo_box.set_border_width (2)
			toc_12_pseudo_box.disable_item_expand (l_ev_label_7)
			l_ev_label_7.set_text ("Pseudo Name")
			l_ev_frame_2.set_text ("VSIP Help")
			l_ev_vertical_box_6.set_padding_width (padding_width)
			l_ev_vertical_box_6.set_border_width (border_width)
			l_ev_vertical_box_6.disable_item_expand (toc_20_title_box)
			l_ev_vertical_box_6.disable_item_expand (toc_20_location_box)
			l_ev_vertical_box_6.disable_item_expand (toc_20_pseudo_box)
			l_ev_horizontal_box_7.set_padding_width (padding_width)
			l_ev_horizontal_box_7.set_border_width (border_width)
			override_20_check.set_text ("Override settings for Microsoft Help 2.0 (Visual Studio Integration)")
			toc_20_title_box.set_padding_width (5)
			toc_20_title_box.set_border_width (2)
			toc_20_title_box.disable_item_expand (l_ev_label_8)
			l_ev_label_8.set_text ("Title")
			toc_20_location_box.set_padding_width (5)
			toc_20_location_box.set_border_width (2)
			toc_20_location_box.disable_item_expand (l_ev_label_9)
			l_ev_label_9.set_text ("Location")
			toc_20_pseudo_box.set_padding_width (5)
			toc_20_pseudo_box.set_border_width (2)
			toc_20_pseudo_box.disable_item_expand (l_ev_label_10)
			l_ev_label_10.set_text ("Pseudo Name")
			l_ev_vertical_box_7.hide
			l_ev_vertical_box_7.disable_item_expand (l_ev_horizontal_box_8)
			l_ev_vertical_box_7.disable_item_expand (l_ev_horizontal_box_9)
			l_ev_horizontal_box_8.set_padding_width (5)
			l_ev_horizontal_box_8.set_border_width (2)
			l_ev_horizontal_box_8.disable_item_expand (l_ev_label_11)
			l_ev_label_11.set_text ("Transformation")
			l_ev_label_11.align_text_left
			l_ev_horizontal_box_9.set_padding_width (5)
			l_ev_horizontal_box_9.set_border_width (5)
			l_ev_horizontal_box_9.disable_item_expand (l_ev_label_12)
			l_ev_label_12.set_text ("Output Type ")
			l_ev_horizontal_box_10.set_padding_width (padding_width)
			l_ev_horizontal_box_10.set_border_width (border_width)
			l_ev_horizontal_box_10.disable_item_expand (apply_button)
			l_ev_horizontal_box_10.disable_item_expand (okay_button)
			l_ev_horizontal_box_10.disable_item_expand (cancel_button)
			apply_button.set_text ("Apply")
			apply_button.set_minimum_width (80)
			okay_button.set_text ("OK")
			okay_button.set_minimum_width (80)
			cancel_button.set_text ("Cancel")
			cancel_button.set_minimum_width (80)
			
				--Connect events.
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.

				-- Call `user_initialization'.
			user_initialization
		end

feature -- Access

	l_ev_vertical_box_1, l_ev_vertical_box_2, l_ev_vertical_box_3, l_ev_vertical_box_4, 
	l_ev_vertical_box_5, l_ev_vertical_box_6, l_ev_vertical_box_7: EV_VERTICAL_BOX
	l_ev_notebook_1: EV_NOTEBOOK
	l_ev_horizontal_box_1, l_ev_horizontal_box_2, l_ev_horizontal_box_3, l_ev_horizontal_box_4, 
	l_ev_horizontal_box_5, l_ev_horizontal_box_6, toc_12_title_box, toc_12_location_box, 
	toc_12_pseudo_box, l_ev_horizontal_box_7, toc_20_title_box, toc_20_location_box, 
	toc_20_pseudo_box, l_ev_horizontal_box_8, l_ev_horizontal_box_9, l_ev_horizontal_box_10: EV_HORIZONTAL_BOX
	l_ev_label_1, l_ev_label_2, location_label, l_ev_label_3, l_ev_label_4, l_ev_label_5, 
	l_ev_label_6, l_ev_label_7, l_ev_label_8, l_ev_label_9, l_ev_label_10, l_ev_label_11, 
	l_ev_label_12: EV_LABEL
	name_text, toc_title_text, toc_12_title_text, toc_12_location_text, toc_12_pseudo_text, 
	toc_20_title_text, toc_20_location_text, toc_20_pseudo_text: EV_TEXT_FIELD
	l_ev_horizontal_separator_1, l_ev_horizontal_separator_2: EV_HORIZONTAL_SEPARATOR
	l_ev_frame_1, l_ev_frame_2: EV_FRAME
	override_12_check, override_20_check: EV_CHECK_BUTTON
	output_combo: EV_COMBO_BOX
	l_ev_cell_1, l_ev_cell_2: EV_CELL
	apply_button, okay_button, cancel_button: EV_BUTTON

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
	
end -- class DOCUMENT_PROPERTIES_DIALOG_IMP
