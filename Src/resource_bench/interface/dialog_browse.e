indexing
	description: "xxx"
	product: "Resource Bench"
	date: "$Date$"
	revision: "$Revision$"

class 
	DIALOG_BROWSE

inherit
	WEL_MODAL_DIALOG
		redefine
			on_ok,
			setup_dialog
		end

	EXECUTION_ENVIRONMENT

	TABLE_OF_SYMBOLS

	INTERFACE_MANAGER

	APPLICATION_IDS
		export
			{NONE} all
		end
creation
	make

feature -- Initialization

	make (a_parent: WEL_COMPOSITE_WINDOW) is
			-- Create the dialog.
		require
			a_parent_not_void: a_parent /= Void
		do
			make_by_id (a_parent, Idd_dialog_browse)
			!! edit_path.make_by_id (Current, Idc_edit_path)
			activate
		end

	setup_dialog is
		do
			edit_path.set_text (current_working_directory)
			edit_path.select_all
		end

feature -- Behavior

	on_ok is
		local
			folder: DIRECTORY
		do
			!! folder.make (edit_path.text)

			if not folder.exists then
				interface.display_text (std_error, "The specified directory doesn't exist")
			else
				change_working_directory (edit_path.text)
       				tds.generate_wel_code
				terminate (Idok)
			end				
		end

feature -- Access

	edit_path: WEL_SINGLE_LINE_EDIT

END -- class DIALOG_BROWSE

--|-------------------------------------------------------------------
--| This class was automatically generated by Resource Bench
--| Copyright (C) 1996, Interactive Software Engineering, Inc.
--|
--| 270 Storke Road, Suite 7, Goleta, CA 93117 USA
--| Telephone 805-685-1006
--| Fax 805-685-6869
--| Information e-mail <info@eiffel.com>
--| Customer support e-mail <support@eiffel.com>
--|-------------------------------------------------------------------------
