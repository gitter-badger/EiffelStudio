note
	description: "Objects that represent an EV_TITLED_WINDOW.%
		%The original version of this class was generated by EiffelBuild."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	ECDM_MAIN_WINDOW_IMP

inherit
	EV_TITLED_WINDOW
		redefine
			initialize, is_in_default_state
		end
			
	ECDM_CONSTANTS
		undefine
			is_equal, default_create, copy
		end

-- This class is the implementation of an EV_TITLED_WINDOW generated by EiffelBuild.
-- You should not modify this code by hand, as it will be re-generated every time
-- modifications are made to the project.

feature {NONE}-- Initialization

	initialize
			-- Initialize `Current'.
		local
			internal_font: EV_FONT
		do
			Precursor {EV_TITLED_WINDOW}
			initialize_constants
			
				-- Create all widgets.
			create menu
			create file_menu
			create new_menu_item
			create save_menu_item
			create revert_menu_item
			create l_ev_menu_separator_1
			create properties_menu_item
			create l_ev_menu_separator_2
			create exit_menu_item
			create edit_menu
			create delete_menu_item
			create options_menu
			create show_text_menu_item
			create show_tooltips_menu_item
			create help_menu
			create help_content_menu_item
			create l_ev_menu_separator_3
			create about_menu_item
			create window_box
			create tool_bars_box
			create main_tool_bar
			create new_button
			create save_button
			create revert_button
			create properties_button
			create delete_button
			create tool_bars_padding_cell
			create help_tool_bar
			create help_button
			create l_ev_horizontal_separator_1
			create main_box
			create configurations_box
			create configurations_list
			create edit_box
			create general_frame
			create general_box
			create general_entries_box
			create general_titles_box
			create fail_on_error_label
			create log_server_label
			create log_level_label
			create general_values_box
			create fail_on_error_check_button
			create log_server_combo_box
			create log_level_combo
			create warning_box
			create warning_title_label
			create warning_content_label
			create compiler_frame
			create compiler_box
			create compiler_titles_box
			create default_root_clas_label
			create precompile_ace_file_label
			create metadata_cache_label
			create compiler_metadata_cache_label
			create precompile_cache_label
			create compiler_values_box
			create root_class_combo_box
			create precompile_ace_file_box
			create precompile_ace_file_combo_box
			create precompile_padding_cell
			create browse_button
			create metadata_cache_box
			create metadata_cache_combo_box
			create metadata_cache_cell
			create metadata_cache_browse_button
			create compiler_metadata_cache_box
			create compiler_metadata_cache_combo_box
			create compiler_metadata_cache_cell
			create compiler_metadata_cache_browse_button
			create precompile_cache_box
			create precompile_cache_combo_box
			create precompile_cache_cell
			create precompile_cache_browse_button
			create prefixes_frame
			create prefixes_box
			create prefixes_list
			create prefix_components_box
			create prefix_text_field
			create assembly_file_name_text_field
			create assembly_file_name_browse_button
			create assembly_file_name_buttons_box
			create l_ev_cell_1
			create assembly_file_name_add_button
			create assembly_file_name_remove_button
			create l_ev_cell_2
			create applications_frame
			create applications_box
			create applications_list
			create buttons_box
			create left_buttons_padding_cell
			create add_button
			create remove_button
			create right_buttons_padding_cell
			
				-- Build_widget_structure.
			set_menu_bar (menu)
			menu.extend (file_menu)
			file_menu.extend (new_menu_item)
			file_menu.extend (save_menu_item)
			file_menu.extend (revert_menu_item)
			file_menu.extend (l_ev_menu_separator_1)
			file_menu.extend (properties_menu_item)
			file_menu.extend (l_ev_menu_separator_2)
			file_menu.extend (exit_menu_item)
			menu.extend (edit_menu)
			edit_menu.extend (delete_menu_item)
			menu.extend (options_menu)
			options_menu.extend (show_text_menu_item)
			options_menu.extend (show_tooltips_menu_item)
			menu.extend (help_menu)
			help_menu.extend (help_content_menu_item)
			help_menu.extend (l_ev_menu_separator_3)
			help_menu.extend (about_menu_item)
			extend (window_box)
			window_box.extend (tool_bars_box)
			tool_bars_box.extend (main_tool_bar)
			main_tool_bar.extend (new_button)
			main_tool_bar.extend (save_button)
			main_tool_bar.extend (revert_button)
			main_tool_bar.extend (properties_button)
			main_tool_bar.extend (delete_button)
			tool_bars_box.extend (tool_bars_padding_cell)
			tool_bars_box.extend (help_tool_bar)
			help_tool_bar.extend (help_button)
			window_box.extend (l_ev_horizontal_separator_1)
			window_box.extend (main_box)
			main_box.extend (configurations_box)
			configurations_box.extend (configurations_list)
			main_box.extend (edit_box)
			edit_box.extend (general_frame)
			general_frame.extend (general_box)
			general_box.extend (general_entries_box)
			general_entries_box.extend (general_titles_box)
			general_titles_box.extend (fail_on_error_label)
			general_titles_box.extend (log_server_label)
			general_titles_box.extend (log_level_label)
			general_entries_box.extend (general_values_box)
			general_values_box.extend (fail_on_error_check_button)
			general_values_box.extend (log_server_combo_box)
			general_values_box.extend (log_level_combo)
			general_box.extend (warning_box)
			warning_box.extend (warning_title_label)
			warning_box.extend (warning_content_label)
			edit_box.extend (compiler_frame)
			compiler_frame.extend (compiler_box)
			compiler_box.extend (compiler_titles_box)
			compiler_titles_box.extend (default_root_clas_label)
			compiler_titles_box.extend (precompile_ace_file_label)
			compiler_titles_box.extend (metadata_cache_label)
			compiler_titles_box.extend (compiler_metadata_cache_label)
			compiler_titles_box.extend (precompile_cache_label)
			compiler_box.extend (compiler_values_box)
			compiler_values_box.extend (root_class_combo_box)
			compiler_values_box.extend (precompile_ace_file_box)
			precompile_ace_file_box.extend (precompile_ace_file_combo_box)
			precompile_ace_file_box.extend (precompile_padding_cell)
			precompile_ace_file_box.extend (browse_button)
			compiler_values_box.extend (metadata_cache_box)
			metadata_cache_box.extend (metadata_cache_combo_box)
			metadata_cache_box.extend (metadata_cache_cell)
			metadata_cache_box.extend (metadata_cache_browse_button)
			compiler_values_box.extend (compiler_metadata_cache_box)
			compiler_metadata_cache_box.extend (compiler_metadata_cache_combo_box)
			compiler_metadata_cache_box.extend (compiler_metadata_cache_cell)
			compiler_metadata_cache_box.extend (compiler_metadata_cache_browse_button)
			compiler_values_box.extend (precompile_cache_box)
			precompile_cache_box.extend (precompile_cache_combo_box)
			precompile_cache_box.extend (precompile_cache_cell)
			precompile_cache_box.extend (precompile_cache_browse_button)
			edit_box.extend (prefixes_frame)
			prefixes_frame.extend (prefixes_box)
			prefixes_box.extend (prefixes_list)
			prefixes_box.extend (prefix_components_box)
			prefix_components_box.extend (prefix_text_field)
			prefix_components_box.extend (assembly_file_name_text_field)
			prefix_components_box.extend (assembly_file_name_browse_button)
			prefixes_box.extend (assembly_file_name_buttons_box)
			assembly_file_name_buttons_box.extend (l_ev_cell_1)
			assembly_file_name_buttons_box.extend (assembly_file_name_add_button)
			assembly_file_name_buttons_box.extend (assembly_file_name_remove_button)
			assembly_file_name_buttons_box.extend (l_ev_cell_2)
			edit_box.extend (applications_frame)
			applications_frame.extend (applications_box)
			applications_box.extend (applications_list)
			applications_box.extend (buttons_box)
			buttons_box.extend (left_buttons_padding_cell)
			buttons_box.extend (add_button)
			buttons_box.extend (remove_button)
			buttons_box.extend (right_buttons_padding_cell)
			
			file_menu.set_text ("File")
			new_menu_item.set_text (new_button_text)
			new_menu_item.set_pixmap (new_png)
			save_menu_item.set_text (save_button_text)
			save_menu_item.set_pixmap (save_png)
			revert_menu_item.set_text (revert_button_text)
			revert_menu_item.set_pixmap (revert_png)
			properties_menu_item.set_text (properties_button_text)
			properties_menu_item.set_pixmap (info_png)
			exit_menu_item.set_text ("Exit")
			edit_menu.set_text ("Edit")
			delete_menu_item.set_text ("Delete")
			delete_menu_item.set_pixmap (delete_png)
			options_menu.set_text ("Options")
			show_text_menu_item.enable_select
			show_text_menu_item.set_text ("Show text")
			show_tooltips_menu_item.enable_select
			show_tooltips_menu_item.set_text ("Show tooltips")
			help_menu.set_text ("Help")
			help_content_menu_item.set_text ("Help content")
			help_content_menu_item.set_pixmap (help_png)
			about_menu_item.set_text ("About")
			window_box.disable_item_expand (tool_bars_box)
			window_box.disable_item_expand (l_ev_horizontal_separator_1)
			tool_bars_box.disable_item_expand (main_tool_bar)
			tool_bars_box.disable_item_expand (help_tool_bar)
			new_button.set_text (new_button_text)
			new_button.set_tooltip (new_button_tooltip)
			new_button.set_pixmap (new_png)
			save_button.disable_sensitive
			save_button.set_text (save_button_text)
			save_button.set_tooltip (save_button_tooltip)
			save_button.set_pixmap (save_png)
			revert_button.disable_sensitive
			revert_button.set_text (revert_button_text)
			revert_button.set_tooltip (revert_button_tooltip)
			revert_button.set_pixmap (revert_png)
			properties_button.set_text (properties_button_text)
			properties_button.set_tooltip (properties_button_tooltip)
			properties_button.set_pixmap (info_png)
			delete_button.disable_sensitive
			delete_button.set_text (delete_button_text)
			delete_button.set_tooltip (delete_button_tooltip)
			delete_button.set_pixmap (delete_png)
			help_button.set_text (help_button_text)
			help_button.set_tooltip (help_button_tooltip)
			help_button.set_pixmap (help_png)
			main_box.set_padding_width (5)
			main_box.set_border_width (5)
			main_box.disable_item_expand (configurations_box)
			configurations_box.set_padding_width (10)
			configurations_list.set_minimum_width (150)
			edit_box.set_padding_width (10)
			edit_box.disable_item_expand (general_frame)
			edit_box.disable_item_expand (compiler_frame)
			general_frame.set_text ("General Settings")
			general_entries_box.set_border_width (5)
			general_entries_box.disable_item_expand (general_titles_box)
			general_titles_box.set_minimum_width (120)
			general_titles_box.set_padding_width (5)
			general_titles_box.set_border_width (5)
			fail_on_error_label.set_text ("Fail on error")
			fail_on_error_label.align_text_left
			log_server_label.set_text ("Log Server")
			log_server_label.align_text_left
			log_level_label.set_text ("Log level")
			log_level_label.align_text_left
			general_values_box.set_padding_width (5)
			general_values_box.set_border_width (5)
			log_level_combo.set_minimum_width (80)
			log_level_combo.disable_edit
			warning_box.set_padding_width (5)
			warning_box.set_border_width (5)
			create internal_font
			internal_font.set_family ({EV_FONT_CONSTANTS}.Family_sans)
			internal_font.set_weight ({EV_FONT_CONSTANTS}.Weight_bold)
			internal_font.set_shape ({EV_FONT_CONSTANTS}.Shape_regular)
			internal_font.set_height_in_points (8)
			internal_font.preferred_families.extend ("Microsoft Sans Serif")
			warning_title_label.set_font (internal_font)
			warning_title_label.set_text ("Warning: Logging requires registry access rights.")
			warning_title_label.align_text_left
			warning_content_label.set_text ("The default configuration for applications such as ASP.NET might%Nnot authorize access to the required registry entries. If your system%Nrequires logging, configure the application accordingly by granting %Nthe proper security access rights.")
			warning_content_label.align_text_left
			compiler_frame.set_text ("Compiler Settings")
			compiler_box.set_border_width (5)
			compiler_box.disable_item_expand (compiler_titles_box)
			compiler_titles_box.set_minimum_width (135)
			compiler_titles_box.set_padding_width (5)
			compiler_titles_box.set_border_width (5)
			default_root_clas_label.set_text ("Default root class")
			default_root_clas_label.align_text_left
			precompile_ace_file_label.set_text ("Precompile ace file")
			precompile_ace_file_label.align_text_left
			metadata_cache_label.set_text ("Metadata cache")
			metadata_cache_label.align_text_left
			compiler_metadata_cache_label.set_text ("Compiler metadata cache")
			compiler_metadata_cache_label.align_text_left
			precompile_cache_label.set_text ("Precompile cache")
			precompile_cache_label.align_text_left
			compiler_values_box.set_padding_width (5)
			compiler_values_box.set_border_width (5)
			precompile_ace_file_box.disable_item_expand (precompile_padding_cell)
			precompile_ace_file_box.disable_item_expand (browse_button)
			precompile_padding_cell.set_minimum_width (5)
			browse_button.set_text ("...")
			browse_button.set_minimum_width (40)
			metadata_cache_box.disable_item_expand (metadata_cache_cell)
			metadata_cache_box.disable_item_expand (metadata_cache_browse_button)
			metadata_cache_cell.set_minimum_width (5)
			metadata_cache_browse_button.set_text ("...")
			metadata_cache_browse_button.set_minimum_width (40)
			compiler_metadata_cache_box.disable_item_expand (compiler_metadata_cache_cell)
			compiler_metadata_cache_box.disable_item_expand (compiler_metadata_cache_browse_button)
			compiler_metadata_cache_cell.set_minimum_width (5)
			compiler_metadata_cache_browse_button.set_text ("...")
			compiler_metadata_cache_browse_button.set_minimum_width (40)
			precompile_cache_box.disable_item_expand (precompile_cache_cell)
			precompile_cache_box.disable_item_expand (precompile_cache_browse_button)
			precompile_cache_cell.set_minimum_width (5)
			precompile_cache_browse_button.set_text ("...")
			precompile_cache_browse_button.set_minimum_width (40)
			prefixes_frame.set_text ("Assembly Prefixes")
			prefixes_box.set_padding_width (5)
			prefixes_box.set_border_width (5)
			prefixes_box.disable_item_expand (prefix_components_box)
			prefixes_box.disable_item_expand (assembly_file_name_buttons_box)
			prefix_components_box.set_padding_width (5)
			prefix_components_box.disable_item_expand (prefix_text_field)
			prefix_components_box.disable_item_expand (assembly_file_name_browse_button)
			prefix_text_field.set_minimum_width (100)
			assembly_file_name_browse_button.set_text ("...")
			assembly_file_name_browse_button.set_minimum_width (40)
			assembly_file_name_buttons_box.set_padding_width (5)
			assembly_file_name_buttons_box.disable_item_expand (assembly_file_name_add_button)
			assembly_file_name_buttons_box.disable_item_expand (assembly_file_name_remove_button)
			assembly_file_name_add_button.disable_sensitive
			assembly_file_name_add_button.set_text ("Add")
			assembly_file_name_add_button.set_minimum_width (100)
			assembly_file_name_remove_button.disable_sensitive
			assembly_file_name_remove_button.set_text ("Remove")
			assembly_file_name_remove_button.set_minimum_width (100)
			applications_frame.set_text ("Configuration used by")
			applications_frame.hide
			applications_box.set_padding_width (5)
			applications_box.set_border_width (5)
			applications_box.disable_item_expand (buttons_box)
			buttons_box.set_padding_width (5)
			buttons_box.disable_item_expand (add_button)
			buttons_box.disable_item_expand (remove_button)
			add_button.set_text ("Add")
			add_button.set_minimum_width (100)
			remove_button.set_text ("Remove")
			remove_button.set_minimum_width (100)
			set_minimum_width (550)
			set_minimum_height (580)
			set_title (product_title)
			set_background_pixmap (new_png)
			
				--Connect events.
			new_menu_item.select_actions.extend (agent on_config_new)
			save_menu_item.select_actions.extend (agent on_config_save)
			revert_menu_item.select_actions.extend (agent on_revert)
			properties_menu_item.select_actions.extend (agent on_config_info)
			exit_menu_item.select_actions.extend (agent on_close)
			delete_menu_item.select_actions.extend (agent on_config_delete)
			show_text_menu_item.select_actions.extend (agent on_show_text)
			show_tooltips_menu_item.select_actions.extend (agent on_show_tooltips)
			help_content_menu_item.select_actions.extend (agent on_help_select)
			about_menu_item.select_actions.extend (agent on_about)
			new_button.select_actions.extend (agent on_config_new)
			save_button.select_actions.extend (agent on_config_save)
			revert_button.select_actions.extend (agent on_revert)
			properties_button.select_actions.extend (agent on_config_info)
			delete_button.select_actions.extend (agent on_config_delete)
			help_button.select_actions.extend (agent on_help_select)
			configurations_list.select_actions.extend (agent on_configuration_select)
			configurations_list.pointer_double_press_actions.extend (agent on_configuration_double_click (?, ?, ?, ?, ?, ?, ?, ?))
			fail_on_error_check_button.select_actions.extend (agent on_fail_on_error_select)
			log_server_combo_box.change_actions.extend (agent on_log_server_change)
			log_level_combo.select_actions.extend (agent on_log_level_select)
			log_level_combo.change_actions.extend (agent on_log_level_select)
			root_class_combo_box.change_actions.extend (agent on_root_class_change)
			precompile_ace_file_combo_box.change_actions.extend (agent on_precompile_ace_file_change)
			browse_button.select_actions.extend (agent on_precompile_ace_file_browse)
			metadata_cache_combo_box.change_actions.extend (agent on_metadata_cache_change)
			metadata_cache_browse_button.select_actions.extend (agent on_metadata_cache_browse)
			compiler_metadata_cache_combo_box.change_actions.extend (agent on_compiler_metadata_cache_change)
			compiler_metadata_cache_browse_button.select_actions.extend (agent on_compiler_metadata_cache_browse)
			precompile_cache_combo_box.change_actions.extend (agent on_precompile_cache_change)
			precompile_cache_browse_button.select_actions.extend (agent on_precompile_cache_browse)
			prefixes_list.select_actions.extend (agent on_assembly_file_name_select (?))
			prefixes_list.deselect_actions.extend (agent on_assembly_file_name_deselect (?))
			prefixes_list.column_resized_actions.extend (agent on_column_resize (?))
			prefix_text_field.change_actions.extend (agent on_prefix_change)
			assembly_file_name_text_field.change_actions.extend (agent on_assembly_file_name_change)
			assembly_file_name_browse_button.select_actions.extend (agent on_assembly_file_name_browse)
			assembly_file_name_add_button.select_actions.extend (agent on_add_assembly_file_name)
			assembly_file_name_remove_button.select_actions.extend (agent on_remove_assembly_file_name)
			applications_list.select_actions.extend (agent on_application_select)
			applications_list.deselect_actions.extend (agent on_application_deselect)
			add_button.select_actions.extend (agent on_add_application)
			remove_button.select_actions.extend (agent on_remove_application)
			resize_actions.extend (agent on_resize (?, ?, ?, ?))
				-- Close the application when an interface close
				-- request is received on `Current'. i.e. the cross is clicked.

				-- Call `user_initialization'.
			user_initialization
		end

feature -- Access

	show_text_menu_item, show_tooltips_menu_item: EV_CHECK_MENU_ITEM
	prefix_text_field, assembly_file_name_text_field: EV_TEXT_FIELD
	prefixes_list: EV_MULTI_COLUMN_LIST
	file_menu,
	edit_menu, options_menu, help_menu: EV_MENU
	tool_bars_padding_cell, precompile_padding_cell,
	metadata_cache_cell, compiler_metadata_cache_cell, precompile_cache_cell, left_buttons_padding_cell,
	right_buttons_padding_cell: EV_CELL
	browse_button, metadata_cache_browse_button, compiler_metadata_cache_browse_button,
	precompile_cache_browse_button, assembly_file_name_browse_button, assembly_file_name_add_button,
	assembly_file_name_remove_button, add_button, remove_button: EV_BUTTON
	main_tool_bar, help_tool_bar: EV_TOOL_BAR
	configurations_list,
	applications_list: EV_LIST
	log_server_combo_box, log_level_combo, root_class_combo_box, precompile_ace_file_combo_box,
	metadata_cache_combo_box, compiler_metadata_cache_combo_box, precompile_cache_combo_box: EV_COMBO_BOX
	new_button,
	save_button, revert_button, properties_button, delete_button, help_button: EV_TOOL_BAR_BUTTON
	tool_bars_box,
	main_box, general_entries_box, compiler_box, precompile_ace_file_box, metadata_cache_box,
	compiler_metadata_cache_box, precompile_cache_box, prefix_components_box, assembly_file_name_buttons_box,
	buttons_box: EV_HORIZONTAL_BOX
	window_box, configurations_box, edit_box, general_box, general_titles_box,
	general_values_box, warning_box, compiler_titles_box, compiler_values_box, prefixes_box,
	applications_box: EV_VERTICAL_BOX
	fail_on_error_check_button: EV_CHECK_BUTTON
	fail_on_error_label, log_server_label,
	log_level_label, warning_title_label, warning_content_label, default_root_clas_label,
	precompile_ace_file_label, metadata_cache_label, compiler_metadata_cache_label, precompile_cache_label: EV_LABEL
	new_menu_item,
	save_menu_item, revert_menu_item, properties_menu_item, exit_menu_item, delete_menu_item,
	help_content_menu_item, about_menu_item: EV_MENU_ITEM
	menu: EV_MENU_BAR
	general_frame, compiler_frame, prefixes_frame,
	applications_frame: EV_FRAME

feature {NONE} -- Implementation

	l_ev_menu_separator_1, l_ev_menu_separator_2, l_ev_menu_separator_3: EV_MENU_SEPARATOR
	l_ev_horizontal_separator_1: EV_HORIZONTAL_SEPARATOR
	l_ev_cell_1,
	l_ev_cell_2: EV_CELL

feature {NONE} -- Implementation

	is_in_default_state: BOOLEAN
			-- Is `Current' in its default state?
		do
			-- Re-implement if you wish to enable checking
			-- for `Current'.
			Result := True
		end
	
	user_initialization
			-- Feature for custom initialization, called at end of `initialize'.
		deferred
		end
	
	on_config_new
			-- Called by `select_actions' of `new_menu_item'.
		deferred
		end
	
	on_config_save
			-- Called by `select_actions' of `save_menu_item'.
		deferred
		end
	
	on_revert
			-- Called by `select_actions' of `revert_menu_item'.
		deferred
		end
	
	on_config_info
			-- Called by `select_actions' of `properties_menu_item'.
		deferred
		end
	
	on_close
			-- Called by `select_actions' of `exit_menu_item'.
		deferred
		end
	
	on_config_delete
			-- Called by `select_actions' of `delete_menu_item'.
		deferred
		end
	
	on_show_text
			-- Called by `select_actions' of `show_text_menu_item'.
		deferred
		end
	
	on_show_tooltips
			-- Called by `select_actions' of `show_tooltips_menu_item'.
		deferred
		end
	
	on_help_select
			-- Called by `select_actions' of `help_content_menu_item'.
		deferred
		end
	
	on_about
			-- Called by `select_actions' of `about_menu_item'.
		deferred
		end
	
	on_configuration_select
			-- Called by `select_actions' of `configurations_list'.
		deferred
		end
	
	on_configuration_double_click (a_x, a_y, a_button: INTEGER; a_x_tilt, a_y_tilt, a_pressure: DOUBLE; a_screen_x, a_screen_y: INTEGER)
			-- Called by `pointer_double_press_actions' of `configurations_list'.
		deferred
		end
	
	on_fail_on_error_select
			-- Called by `select_actions' of `fail_on_error_check_button'.
		deferred
		end
	
	on_log_server_change
			-- Called by `change_actions' of `log_server_combo_box'.
		deferred
		end
	
	on_log_level_select
			-- Called by `select_actions' of `log_level_combo'.
		deferred
		end
	
	on_root_class_change
			-- Called by `change_actions' of `root_class_combo_box'.
		deferred
		end
	
	on_precompile_ace_file_change
			-- Called by `change_actions' of `precompile_ace_file_combo_box'.
		deferred
		end
	
	on_precompile_ace_file_browse
			-- Called by `select_actions' of `browse_button'.
		deferred
		end
	
	on_metadata_cache_change
			-- Called by `change_actions' of `metadata_cache_combo_box'.
		deferred
		end
	
	on_metadata_cache_browse
			-- Called by `select_actions' of `metadata_cache_browse_button'.
		deferred
		end
	
	on_compiler_metadata_cache_change
			-- Called by `change_actions' of `compiler_metadata_cache_combo_box'.
		deferred
		end
	
	on_compiler_metadata_cache_browse
			-- Called by `select_actions' of `compiler_metadata_cache_browse_button'.
		deferred
		end
	
	on_precompile_cache_change
			-- Called by `change_actions' of `precompile_cache_combo_box'.
		deferred
		end
	
	on_precompile_cache_browse
			-- Called by `select_actions' of `precompile_cache_browse_button'.
		deferred
		end
	
	on_assembly_file_name_select (an_item: EV_MULTI_COLUMN_LIST_ROW)
			-- Called by `select_actions' of `prefixes_list'.
		deferred
		end
	
	on_assembly_file_name_deselect (an_item: EV_MULTI_COLUMN_LIST_ROW)
			-- Called by `deselect_actions' of `prefixes_list'.
		deferred
		end
	
	on_column_resize (a_column: INTEGER)
			-- Called by `column_resized_actions' of `prefixes_list'.
		deferred
		end
	
	on_prefix_change
			-- Called by `change_actions' of `prefix_text_field'.
		deferred
		end
	
	on_assembly_file_name_change
			-- Called by `change_actions' of `assembly_file_name_text_field'.
		deferred
		end
	
	on_assembly_file_name_browse
			-- Called by `select_actions' of `assembly_file_name_browse_button'.
		deferred
		end
	
	on_add_assembly_file_name
			-- Called by `select_actions' of `assembly_file_name_add_button'.
		deferred
		end
	
	on_remove_assembly_file_name
			-- Called by `select_actions' of `assembly_file_name_remove_button'.
		deferred
		end
	
	on_application_select
			-- Called by `select_actions' of `applications_list'.
		deferred
		end
	
	on_application_deselect
			-- Called by `deselect_actions' of `applications_list'.
		deferred
		end
	
	on_add_application
			-- Called by `select_actions' of `add_button'.
		deferred
		end
	
	on_remove_application
			-- Called by `select_actions' of `remove_button'.
		deferred
		end
	
	on_resize (a_x, a_y, a_width, a_height: INTEGER)
			-- Called by `resize_actions' of `Current'.
		deferred
		end
	

note
	copyright:	"Copyright (c) 1984-2006, Eiffel Software"
	license:	"GPL version 2 (see http://www.eiffel.com/licensing/gpl.txt)"
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
end -- class ECDM_MAIN_WINDOW_IMP
