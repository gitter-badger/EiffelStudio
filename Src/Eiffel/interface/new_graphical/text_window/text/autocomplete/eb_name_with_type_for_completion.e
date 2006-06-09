indexing
	description: "'name: TYPE' as one of completion possiblities."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	EB_NAME_WITH_TYPE_FOR_COMPLETION

inherit
	EB_NAME_FOR_COMPLETION
		rename
			make as old_make
		redefine
			grid_item
		end

create
	make

feature {NONE} -- Initialization

	make (a_name: STRING; a_type: TYPE_A) is
			-- Init
		require
			a_name_not_void: a_name /= Void
			a_type_not_void: a_type /= Void
		do
			old_make (a_name)
			return_type := a_type
			if show_type then
				append (completion_type)
			end
		end

feature -- Access

	grid_item: EB_GRID_LOCAL_ITEM is
			-- Grid item
		local
			l_style: EB_GRID_LOCAL_ITEM_STYLE
		do
			if show_type then
					-- We don't yet have a way to print colorized dumy.
				create {EB_GRID_LOCAL_ITEM_NAME_STYLE}l_style
			else
				create {EB_GRID_LOCAL_ITEM_NAME_STYLE}l_style
			end
			create Result.make_with_type (name, return_type, l_style)
			Result.set_tooltip_display_function (agent display_colorized_tooltip)
			Result.enable_pixmap
			Result.editor_token_text.set_overriden_font (label_font_table)
			Result.set_data (Current)
		end

indexing
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

end
