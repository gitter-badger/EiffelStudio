indexing
	description: "Objects that represent an EV_TITLED_WINDOW.%
		%The original version of this class was generated by EiffelBuild."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	MAIN_WINDOW_IMP

inherit
	EV_TITLED_WINDOW
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
		local 
			l_ev_menu_bar_1: EV_MENU_BAR
			l_ev_menu_2: EV_MENU
			l_ev_horizontal_box_1, l_ev_horizontal_box_2: EV_HORIZONTAL_BOX
			l_ev_tool_bar_separator_1, l_ev_tool_bar_separator_2: EV_TOOL_BAR_SEPARATOR
			l_ev_horizontal_separator_1: EV_HORIZONTAL_SEPARATOR
			l_ev_cell_1: EV_CELL
			l_ev_frame_1, l_ev_frame_2: EV_FRAME
		do
			Precursor {EV_TITLED_WINDOW}
			initialize_constants
			
				-- Create all widgets.
			create l_ev_menu_bar_1
			create l_ev_menu_2
			create exit_menu_item
			create options_menu
			create word_wrapping_menu_item
			create show_tab_control_menu_item
			create main_vertical_box
			create l_ev_horizontal_box_1
			create font_selection
			create size_selection
			create color_toolbar
			create color_button
			create format_toolbar
			create l_ev_tool_bar_separator_1
			create bold_button
			create italic_button
			create underlined_button
			create striked_through_button
			create paragraph_toolbar
			create l_ev_tool_bar_separator_2
			create left_alignment_button
			create center_alignment_button
			create right_alignment_button
			create justified_button
			create tab_control_holder
			create l_ev_horizontal_separator_1
			create rich_text
			create l_ev_cell_1
			create l_ev_horizontal_box_2
			create l_ev_frame_1
			create general_label
			create l_ev_frame_2
			create caret_position_label
			
				-- Build_widget_structure.
			set_menu_bar (l_ev_menu_bar_1)
			l_ev_menu_bar_1.extend (l_ev_menu_2)
			l_ev_menu_2.extend (exit_menu_item)
			l_ev_menu_bar_1.extend (options_menu)
			options_menu.extend (word_wrapping_menu_item)
			options_menu.extend (show_tab_control_menu_item)
			extend (main_vertical_box)
			main_vertical_box.extend (l_ev_horizontal_box_1)
			l_ev_horizontal_box_1.extend (font_selection)
			l_ev_horizontal_box_1.extend (size_selection)
			l_ev_horizontal_box_1.extend (color_toolbar)
			color_toolbar.extend (color_button)
			l_ev_horizontal_box_1.extend (format_toolbar)
			format_toolbar.extend (l_ev_tool_bar_separator_1)
			format_toolbar.extend (bold_button)
			format_toolbar.extend (italic_button)
			format_toolbar.extend (underlined_button)
			format_toolbar.extend (striked_through_button)
			l_ev_horizontal_box_1.extend (paragraph_toolbar)
			paragraph_toolbar.extend (l_ev_tool_bar_separator_2)
			paragraph_toolbar.extend (left_alignment_button)
			paragraph_toolbar.extend (center_alignment_button)
			paragraph_toolbar.extend (right_alignment_button)
			paragraph_toolbar.extend (justified_button)
			main_vertical_box.extend (tab_control_holder)
			tab_control_holder.extend (l_ev_horizontal_separator_1)
			main_vertical_box.extend (rich_text)
			main_vertical_box.extend (l_ev_cell_1)
			main_vertical_box.extend (l_ev_horizontal_box_2)
			l_ev_horizontal_box_2.extend (l_ev_frame_1)
			l_ev_frame_1.extend (general_label)
			l_ev_horizontal_box_2.extend (l_ev_frame_2)
			l_ev_frame_2.extend (caret_position_label)
			
			set_minimum_width (window_width)
			set_minimum_height (window_height)
			set_title ("Rich Text Example")
			l_ev_menu_2.set_text ("File")
			exit_menu_item.set_text ("Exit")
			options_menu.set_text ("Options")
			word_wrapping_menu_item.enable_select
			word_wrapping_menu_item.set_text ("Word Wrapping")
			show_tab_control_menu_item.set_text ("Tab Control Bar")
			main_vertical_box.set_padding_width (tiny_padding)
			main_vertical_box.disable_item_expand (l_ev_horizontal_box_1)
			main_vertical_box.disable_item_expand (tab_control_holder)
			main_vertical_box.disable_item_expand (l_ev_cell_1)
			main_vertical_box.disable_item_expand (l_ev_horizontal_box_2)
			l_ev_horizontal_box_1.disable_item_expand (font_selection)
			l_ev_horizontal_box_1.disable_item_expand (size_selection)
			l_ev_horizontal_box_1.disable_item_expand (color_toolbar)
			l_ev_horizontal_box_1.disable_item_expand (format_toolbar)
			font_selection.set_tooltip ("Font Family Selection")
			font_selection.set_minimum_width (font_selection_combo_box_width)
			size_selection.set_tooltip ("Font Size Selection in Pixels")
			size_selection.set_minimum_width (font_size_combo_box_width)
			color_button.set_tooltip ("Font Color Selection")
			bold_button.enable_select
			bold_button.set_tooltip ("Bold")
			bold_button.set_pixmap (bold_png)
			italic_button.set_tooltip ("Italic")
			italic_button.set_pixmap (italic_png)
			underlined_button.set_tooltip ("Underlined")
			underlined_button.set_pixmap (underline_png)
			striked_through_button.set_tooltip ("Striken Through")
			striked_through_button.set_pixmap (strike_png)
			left_alignment_button.set_tooltip ("Align Text Left")
			left_alignment_button.set_pixmap (left_alignment_png)
			center_alignment_button.set_tooltip ("Center Text")
			center_alignment_button.set_pixmap (center_alignment_png)
			right_alignment_button.set_tooltip ("Align Text Right")
			right_alignment_button.set_pixmap (right_alignment_png)
			justified_button.set_tooltip ("Justify Text")
			justified_button.set_pixmap (justified_png)
			rich_text.set_text ("Welcome to the EiffelVision2 rich text example%N%NSome sample text:%N%NLine 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1 Line 1%NLine  2 Line  2 Line  2 Line  2 Line  2 Line  2 Line  2 Line  2 Line  2 Line  2 Line  2 Line  2 Line  2 Line  2 Line  2 Line  2 Line  2 Line  2 Line  2 Line  2%NLine 3 Line 3 Line 3 Line 3 Line 3 Line 3 Line 3 Line 3 Line 3 Line 3 Line 3 Line 3 Line 3 Line 3 Line 3 Line 3 Line 3 Line 3 Line 3 %NLine 4   Line 4   Line 4   Line 4   Line 4   Line 4   Line 4   Line 4   Line 4   Line 4   Line 4   Line 4   Line 4   Line 4   Line 4   Line 4   Line 4   %N%N%NTab samples:%N%N1st tab		3rd tab		5th tab		7th tab%N%NData		Data		Data		Data%N%NSome more text. %N%NAnd a little more.%N%NFinally all available fonts:%N")
			l_ev_cell_1.set_minimum_height (tiny_padding)
			l_ev_horizontal_box_2.set_padding_width (tiny_padding)
			l_ev_horizontal_box_2.disable_item_expand (l_ev_frame_2)
			l_ev_frame_1.set_style (1)
			l_ev_frame_2.set_minimum_width (caret_position_status_bar_width)
			l_ev_frame_2.set_style (1)
			
				--Connect events.
			exit_menu_item.select_actions.extend (agent exit)
			word_wrapping_menu_item.select_actions.extend (agent word_wrapping_toggled)
			show_tab_control_menu_item.select_actions.extend (agent show_tab_control_toggled)
			font_selection.select_actions.extend (agent font_selected)
			size_selection.select_actions.extend (agent font_size_selected)
			size_selection.return_actions.extend (agent font_size_selected)
			color_button.select_actions.extend (agent color_selected)
			bold_button.select_actions.extend (agent bold_selected)
			italic_button.select_actions.extend (agent italic_selected)
			underlined_button.select_actions.extend (agent underline_selected)
			striked_through_button.select_actions.extend (agent strike_through_selected)
			left_alignment_button.select_actions.extend (agent left_alignment_selected)
			center_alignment_button.select_actions.extend (agent center_alignment_selected)
			right_alignment_button.select_actions.extend (agent right_alignment_selected)
			justified_button.select_actions.extend (agent justified_selected)
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.

				-- Call `user_initialization'.
			user_initialization
		end

feature -- Access

	exit_menu_item: EV_MENU_ITEM
	options_menu: EV_MENU
	word_wrapping_menu_item, show_tab_control_menu_item: EV_CHECK_MENU_ITEM
	main_vertical_box, tab_control_holder: EV_VERTICAL_BOX
	font_selection, size_selection: EV_COMBO_BOX
	color_toolbar, format_toolbar, paragraph_toolbar: EV_TOOL_BAR
	color_button: EV_TOOL_BAR_BUTTON
	bold_button, italic_button, underlined_button, striked_through_button, left_alignment_button, 
	center_alignment_button, right_alignment_button, justified_button: EV_TOOL_BAR_TOGGLE_BUTTON
	rich_text: EV_RICH_TEXT
	general_label, caret_position_label: EV_LABEL

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
	
	exit is
			-- Called by `select_actions' of `exit_menu_item'.
		deferred
		end
	
	word_wrapping_toggled is
			-- Called by `select_actions' of `word_wrapping_menu_item'.
		deferred
		end
	
	show_tab_control_toggled is
			-- Called by `select_actions' of `show_tab_control_menu_item'.
		deferred
		end
	
	font_selected is
			-- Called by `select_actions' of `font_selection'.
		deferred
		end
	
	font_size_selected is
			-- Called by `select_actions' of `size_selection'.
		deferred
		end
	
	color_selected is
			-- Called by `select_actions' of `color_button'.
		deferred
		end
	
	bold_selected is
			-- Called by `select_actions' of `bold_button'.
		deferred
		end
	
	italic_selected is
			-- Called by `select_actions' of `italic_button'.
		deferred
		end
	
	underline_selected is
			-- Called by `select_actions' of `underlined_button'.
		deferred
		end
	
	strike_through_selected is
			-- Called by `select_actions' of `striked_through_button'.
		deferred
		end
	
	left_alignment_selected is
			-- Called by `select_actions' of `left_alignment_button'.
		deferred
		end
	
	center_alignment_selected is
			-- Called by `select_actions' of `center_alignment_button'.
		deferred
		end
	
	right_alignment_selected is
			-- Called by `select_actions' of `right_alignment_button'.
		deferred
		end
	
	justified_selected is
			-- Called by `select_actions' of `justified_button'.
		deferred
		end
	

end -- class MAIN_WINDOW_IMP
