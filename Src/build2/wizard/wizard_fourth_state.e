indexing
	description	: "Wizard Step."
	author		: "Generated by the Wizard wizard"
	revision	: "1.0.0"

class
	WIZARD_FOURTH_STATE

inherit
	WIZARD_INTERMEDIARY_STATE_WINDOW
		redefine
			update_state_information,
			proceed_with_current_info,
			build,
			build_frame,
			is_final_state
		end

	GB_SHARED_TOOLS
		export
			{NONE} all
		end
	
	GB_WIDGET_UTILITIES
		export
			{NONE} all
		end
	
	GB_SHARED_COMMAND_HANDLER
		export
			{NONE} all
		end
	
	GB_SHARED_XML_HANDLER
		export
			{NONE} all
		end
	
	GB_SHARED_SYSTEM_STATUS
		export
			{NONE} all
		end
	
	GB_SHARED_XML_HANDLER
		export
			{NONE} all
		end
	
	GB_SHARED_OBJECT_HANDLER
		export
			{NONE} all
		end
	
	GB_SHARED_PREFERENCES
		export
			{NONE} all
		end

create
	make

feature -- Basic Operation

	build is 
			-- Build entries.
		do
				-- If we are modifying the interface, then we are
				-- the last page of the wizard, and must display a finish
				-- button.
			if is_modify_wizard then
				first_window.set_final_state ("Finish")
			end
				-- Set a suitably large minimum size, as this state
				-- is the Build interface state, so needs to be larger.
			first_window.set_minimum_size (680, 560)
				-- We only want to generate the interface once.
			if choice_box.is_empty then
				(create {GB_MAIN_WINDOW}).generate_interface (choice_box)
			else
				Main_window.show_external_tools (First_window)
			end
			
				-- If we are modifying an existing Envision .bpr, then
				-- we must load the project now.
			if is_modify_wizard then
					-- If there are four arguments, then it has been launched through a double click
					-- in the VisualStudio file browser. Otherwise, a double click
					-- from the file system.
				if argument_array.count = 4 then
					open_with_name (argument_array @ 3)
				else
					open_with_name (argument_array @ 1)	
				end
			elseif not already_displayed then
				Object_handler.add_initial_window
			end
			
			set_updatable_entries(<<>>)
			first_window.enable_user_resize
			first_window.enable_maximize
			already_displayed := True
		end
		
	open_with_name (f: STRING) is
			-- Use the open project command to open
			-- file `f'.
		do
			command_handler.Open_project_command.execute_with_name (f)
		end

	proceed_with_current_info is
			-- User has clicked next, go to next step.
		local
				code_generator: GB_CODE_GENERATOR
				progress: EV_HORIZONTAL_PROGRESS_BAR
		do
				-- If we are the modify wizard, then we must end
				-- the wizard.
			if is_modify_wizard then
				create code_generator
				code_generator.set_progress_bar (progress)
				code_generator.generate
				system_status.current_project_settings.save
				Preferences.save_resources
				xml_handler.save
				first_window.destroy
				entries_changed := False
			else
					-- Force the window back to the smallest size it can be.
					-- As we do not know the minimum_size, just make it as small
					-- as possible, and its size will be constrained to
					-- the widgets inside.
				first_window.set_minimum_size (100, 100)
				first_window.set_size (dialog_unit_to_pixels(503), dialog_unit_to_pixels(385))
				Precursor
				proceed_with_new_state(create {WIZARD_FINAL_STATE}.make(wizard_information))
				main_window.hide_all_floating_tools
			end
		end
		
	update_state_information is
			-- Check User Entries
		do
			Precursor
		end

feature -- Access
		
	is_final_state: BOOLEAN is
			-- Are we the final state of the wizard?
			-- As this page may be launched as the only page of the
			-- modification wizard, we return `True' if this is the case.
		do
			if is_modify_wizard then
				Result := True
			end
		end
		
	already_displayed: BOOLEAN
		-- Has `Current' already been displayed, as determined
		-- by `build' having been previously called?

feature {NONE} -- Implementation

	display_state_text is
			-- Set the messages for this state.
		do
			if is_modify_wizard then
				title.set_text ("Interface Modification.")
				subtitle.set_text ("Perform desired interface modifications and click 'Finish' to exit.")
			else
				title.set_text ("Interface Design.")
				subtitle.set_text ("Design your GUI.")
			end
		end

	build_frame is
			-- Build widgets.
			-- This has been redefined, as we need to place the EiffelBuild
			-- interface in the window, and hence need to build the contents
			-- of the frame differently.
		require else
			main_box_empty: main_box.count = 0
		local
			title_white_box: EV_HORIZONTAL_BOX	-- Box where is displayed the state title and an icon (white bkgroud).
			horizontal_separator: EV_HORIZONTAL_SEPARATOR
			empty_space: EV_CELL
			cell: EV_CELL
			icon_pixmap: EV_PIXMAP
			vb: EV_VERTICAL_BOX
			hb: EV_HORIZONTAL_BOX
			tuple: TUPLE
		do
				-----------------------------------------------------------
				-- Create the box that will receive the title and the icon.
				-----------------------------------------------------------
			create title_white_box
			title_white_box.set_border_width (dialog_unit_to_pixels(5))
			title_white_box.set_background_color (white_color)
			title_white_box.set_minimum_height (dialog_unit_to_pixels(58))

				-- Empty space on the left of the title
			create cell
			cell.set_background_color (white_color)
			cell.set_minimum_width (Title_border_width)
			title_white_box.extend (cell)
			title_white_box.disable_item_expand (cell)

				-- Title
			create title
			title.set_background_color (white_color)
			title.align_text_left
			title.set_font (interior_title_font)
			create hb
			create cell
			cell.set_minimum_width(Subtitle_border_width)
			cell.set_background_color (white_color)
			hb.extend (cell)
			hb.disable_item_expand (cell)
			create subtitle
			subtitle.align_text_left
			subtitle.set_background_color (white_color)
			subtitle.set_font (interior_font)
			hb.extend (subtitle)

			create vb
			vb.set_background_color (white_color)
			vb.set_padding (dialog_unit_to_pixels(3))
			vb.extend (title)
			vb.disable_item_expand (title)
			vb.extend (hb)
			vb.disable_item_expand (hb)
			create cell
			cell.set_background_color (white_color)
			vb.extend (cell)
			title_white_box.extend (vb)

				-- Space between the title and the pixmap.
			create cell
			cell.set_minimum_width (Title_right_border_width)
			cell.set_background_color (white_color)
			title_white_box.extend (cell)

				-- Icon Pixmap
			icon_pixmap := pixmap.twin
			icon_pixmap.set_minimum_width (dialog_unit_to_pixels(48))
			icon_pixmap.set_minimum_height (dialog_unit_to_pixels(48))
			title_white_box.extend (icon_pixmap)
			title_white_box.disable_item_expand (icon_pixmap)

				-----------------------------------------------------------
				-- Separator
				-----------------------------------------------------------
			create horizontal_separator

				-----------------------------------------------------------
				-- Interior box
				-----------------------------------------------------------

				-- Message box --------------------------------------------
			create message_box
			create cell
			cell.set_minimum_width (Interior_border_width)
			message_box.extend (cell)
			message_box.disable_item_expand (cell)
			create message
			message.align_text_left
			message_box.extend (message)
			create cell			
			cell.set_minimum_width (Interior_border_width)
			message_box.extend (cell)
			message_box.disable_item_expand (cell)

				-- Empty space between message box and actions box --------
			create empty_space
			empty_space.set_minimum_height (dialog_unit_to_pixels(2))

				-- Only construct the choice box once.
			if choice_box = Void then
				create choice_box	
			end
	
			--------------------------------------------
			-- Create the main box from the other box.
			--------------------------------------------
			main_box.extend (title_white_box)
			main_box.disable_item_expand (title_white_box)
			main_box.extend (horizontal_separator)
			main_box.disable_item_expand (horizontal_separator)
			main_box.extend (choice_box) -- Expandable item.
			display_state_text

			create tuple
			choice_box.set_help_context (~create_help_context (tuple))
		ensure then
			main_box_has_at_least_one_element: main_box.count > 0
		end

end -- class WIZARD_FOURTH_STATE
