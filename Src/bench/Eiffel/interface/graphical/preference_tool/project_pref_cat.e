indexing

	description:
		"Preference tool resoources for the project window.";
	date: "$Date$";
	revision: "$Revision$"

class PROJECT_PREF_CAT

inherit
	EB_CONSTANTS
		rename
			Project_resources as associated_category
		export
			{NONE} all
		end;
	PREFERENCE_CATEGORY
		redefine
			init_colors
		end

create
	make

feature {NONE} -- Initialization

	update_resources is
			-- Update `resources'.
		do
			create tool_x.make (associated_category.tool_x);
			create tool_y.make (associated_category.tool_y);
			create tool_width.make (associated_category.tool_width);
			create tool_height.make (associated_category.tool_height);
			create debugger_feature_height.make (associated_category.debugger_feature_height);
			create debugger_object_height.make (associated_category.debugger_object_height);
			create interrupt_every_n_instructions.make 
					(associated_category.interrupt_every_n_instructions);
			create command_bar.make (associated_category.command_bar);
			create format_bar.make (associated_category.format_bar);
  			create feature_window.make (associated_category.feature_window);
  			create object_window.make (associated_category.object_window);
  			create selector_window.make (associated_category.selector_window);
			create raise_on_error.make (associated_category.raise_on_error);
			create debugger_show_all_callers.make (
				associated_category.debugger_show_all_callers);
			create debugger_do_flat_in_breakpoints.make (
				associated_category.debugger_do_flat_in_breakpoints);
			create graphical_output_disabled.make (
				associated_category.graphical_output_disabled);

			resources.extend (tool_x);
			resources.extend (tool_y);
			resources.extend (tool_width);
			resources.extend (tool_height);
			resources.extend (command_bar);
			resources.extend (format_bar);
			resources.extend (feature_window);
			resources.extend (object_window);
			resources.extend (selector_window);
			resources.extend (debugger_feature_height);
			resources.extend (debugger_object_height);
			resources.extend (debugger_show_all_callers);
			resources.extend (debugger_do_flat_in_breakpoints);
			resources.extend (interrupt_every_n_instructions);
			resources.extend (raise_on_error);
			resources.extend (graphical_output_disabled)
		end;

	init_colors is
			-- Initialize the colors of the page.
		local
			att: WINDOW_ATTRIBUTES
		do
			create att;
			att.set_composite_attributes (Current)
		end

feature {PREFERENCE_TOOL} -- Initialization

	init_visual_aspects (a_menu: MENU_PULL; a_button_parent, a_parent: COMPOSITE) is
			-- Initialize Currrent's visual aspects.
		local
			button: EB_PREFERENCE_BUTTON;
			menu_entry: PREFERENCE_TICKABLE_MENU_ENTRY
		do
			create button.make (Current, a_button_parent);
			create menu_entry.make (Current, a_menu);
			create holder.make (button, menu_entry);
			make_row_column (name, a_parent)
		end

feature -- Properties

	name: STRING is "Project tool preferences"
			-- Current's name

	symbol: PIXMAP is
		once
			Result := Pixmaps.bm_Preference_project
		end;

feature {NONE} -- Resources

	tool_x, tool_y, tool_width, tool_height,
	debugger_feature_height, debugger_object_height,
	interrupt_every_n_instructions: INTEGER_PREF_RES;
	command_bar, format_bar, selector_window,
	feature_window, object_window,
	raise_on_error: BOOLEAN_PREF_RES;
	debugger_show_all_callers: BOOLEAN_PREF_RES;
	debugger_do_flat_in_breakpoints: BOOLEAN_PREF_RES;
	graphical_output_disabled: BOOLEAN_PREF_RES;

end -- class PROJECT_PREF_CAT
