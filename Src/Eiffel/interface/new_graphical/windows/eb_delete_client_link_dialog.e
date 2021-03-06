note
	description: "Windows that allow the user to choose the feature he or she%N%
				%wants to delete"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	EB_DELETE_CLIENT_LINK_DIALOG

inherit
	EV_DIALOG
		redefine
			initialize
		end

	EB_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy
		end

	EB_VISION2_FACILITIES
		export
			{NONE} all
		undefine
			default_create, copy
		end

create
	default_create

feature {NONE} -- Initialization

	initialize
			-- Build the dialog box.
		do
			Precursor
			cancelled := False
			set_title (Interface_names.t_Diagram_delete_client_link)
			set_icon_pixmap (pixmaps.icon_pixmaps.general_dialog_icon)

			create ok_button.make_with_text_and_action (Interface_names.b_ok, agent ok_action)
			create cancel_button.make_with_text_and_action (Interface_names.b_cancel, agent cancel_action)
			create vb
			vb.set_padding (Layout_constants.small_padding_size)
			vb.set_border_width (Layout_constants.default_border_size)
			create hb
			hb.set_padding (Layout_constants.small_padding_size)
			create feature_list
			feature_list.enable_multiple_selection

			hb.extend (create {EV_CELL})
			extend_button (hb, ok_button)
			extend_button (hb, cancel_button)

			vb.extend (feature_list)
			vb.extend (hb)
			vb.disable_item_expand (hb)
			extend (vb)

			set_default_push_button (ok_button)
			set_default_cancel_button (cancel_button)
			set_minimum_size (Layout_constants.Dialog_unit_to_pixels(250), Layout_constants.Dialog_unit_to_pixels(280))
		end

feature -- Access

	ok_button: EV_BUTTON
			-- Button with label "OK".

	cancel_button: EV_BUTTON
			-- Button with label "Cancel".

	selected_item: STRING
			-- Feature name chosen by the user.
			-- Void if none.
		do
			if feature_list.selected_item /= Void then
				Result := feature_list.selected_item.text
			end
		end

	selected_items: LINKED_LIST [STRING_32]
			-- Feature names chosen by the user.
		local
			tmp: DYNAMIC_LIST [EV_LIST_ITEM]
		do
			create Result.make
			tmp := feature_list.selected_items
			from
				tmp.start
			until
				tmp.after
			loop
				Result.extend (tmp.item.text)
				tmp.forth
			end
		end

feature -- Element change

	set_strings (a_string_array: INDEXABLE [STRING_32, INTEGER])
			-- Wipe out `feature_list' and re-initialize with an item
			-- for each of `a_string_array'.
		do
			feature_list.set_strings (a_string_array)
		end

feature -- Status report

	cancelled: BOOLEAN
			-- Was the action cancelled?

feature {NONE} -- Implementation

	vb: EV_VERTICAL_BOX

	hb: EV_HORIZONTAL_BOX

	feature_list: EV_LIST

	ok_action
			-- Closes dialog.
		do
			cancelled := False
			hide
		end

	cancel_action
			-- Closes dialog.
		do
			cancelled := True
			hide
		end

note
	copyright:	"Copyright (c) 1984-2010, Eiffel Software"
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
			distributed in the hope that it will be useful, but
			WITHOUT ANY WARRANTY; without even the implied warranty
			of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
			See the GNU General Public License for more details.
			
			You should have received a copy of the GNU General Public
			License along with Eiffel Software's Eiffel Development
			Environment; if not, write to the Free Software Foundation,
			Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
		]"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"

end -- class EB_DELETE_CLIENT_LINK_DIALOG
