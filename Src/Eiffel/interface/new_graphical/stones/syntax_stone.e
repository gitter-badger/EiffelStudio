note
	description: "Stone representing a syntax issue."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	SYNTAX_STONE

--| FIXME XR: The point of ERROR_STONE's is to have an explanatory message.
--| Since syntax errors do not provide this, there is no point in inheriting from ERROR_STONE.
--inherit
--	ERROR_STONE
--		rename
--			make as make_simple_error
--		redefine
--			code, file_name, help_text
--		end
--

inherit
	FILED_STONE
		redefine
			help_text,
			is_storable
		end

feature {NONE} -- Initialization

	make (a_syntax_message: like syntax_message)
			-- Create instance of SYNTAX_STONE with `a_syntax_message'.
		require
			a_syntax_message_not_void: a_syntax_message /= Void
 		do
			syntax_message := a_syntax_message
		ensure
			syntax_message_set: syntax_message = a_syntax_message
		end

feature -- Properties

	syntax_message: ERROR
			-- Associated message about syntax issue.

feature -- Access

	file_name: like {ERROR}.file_name
			-- The one from SYNTAX_ERROR: where it happened
		do
			Result := syntax_message.file_name.twin
		ensure then
			file_name_not_void: Result /= Void
		end

	help_text: STRING_32
		do
			Result := Interface_names.h_No_help_available.twin
		end

	history_name: STRING_32
		do
			Result := interface_names.err_error.twin
			Result.append_string (header)
		end

	stone_signature: STRING_32
		do
			Result := code
		end

	header: STRING_GENERAL
		do
			if attached code as l_code then
				Result := l_code
			else
				create {STRING_32} Result.make_empty
			end
		end

	line: INTEGER
			-- Line of the token involved in the syntax error
		do
			Result := syntax_message.line
		end

	code: STRING = "Syntax error"
			-- Error code

	stone_cursor: EV_POINTER_STYLE
			-- Cursor associated with Current stone during transport
			-- when widget at cursor position is compatible with Current stone
		do
			Result := Cursors.cur_interro
		end

	x_stone_cursor: EV_POINTER_STYLE
			-- Cursor associated with Current stone during transport
			-- when widget at cursor position is not compatible with Current stone
		do
			Result := Cursors.cur_x_interro
		end

	is_storable: BOOLEAN
		do
			Result := False
		end

note
	copyright: "Copyright (c) 1984-2015, Eiffel Software"
	license:   "GPL version 2 (see http://www.eiffel.com/licensing/gpl.txt)"
	licensing_options: "http://www.eiffel.com/licensing"
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

end -- class SYNTAX_STONE
