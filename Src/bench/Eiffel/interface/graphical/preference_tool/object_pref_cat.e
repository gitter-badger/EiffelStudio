indexing

	description:
		"Resource category for the object tool.";
	date: "$Date$";
	revision: "$Revision$"

class OBJECT_PREF_CAT

inherit
	EB_CONSTANTS
		rename
			Object_resources as associated_category
		export
			{NONE} all
		end

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
			create tool_width.make (associated_category.tool_width);
			create tool_height.make (associated_category.tool_height);
			create command_bar.make (associated_category.command_bar);

			resources.extend (tool_width);
			resources.extend (tool_height);
			resources.extend (command_bar);
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

	name: STRING is "Object tool preferences"
			-- Current's name

	symbol: PIXMAP is
		once
			Result := Pixmaps.bm_Object
		end;

feature {NONE} -- Resources

	tool_width, tool_height: INTEGER_PREF_RES;
	command_bar: BOOLEAN_PREF_RES;

end -- class OBJECT_PREF_CAT
