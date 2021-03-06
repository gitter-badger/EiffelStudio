note
	description: "Leaf for Eiffel syntax node."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	LEAF_AS

inherit
	AST_EIFFEL

	LOCATION_AS
		rename
			make as make_with_location
		end

feature -- Roundtrip/Token

	first_token (a_list: detachable LEAF_AS_LIST): LEAF_AS
		do
			Result := Current
		end

	last_token (a_list: detachable LEAF_AS_LIST): LEAF_AS
		do
			Result := Current
		end

feature -- Roundtrip

	is_separator: BOOLEAN
			-- Is current leaf AST node a separator (break or semicolon)?
		do
		end

feature {INTERNAL_COMPILER_STRING_EXPORTER} -- Roundtrip

	literal_text (a_list: detachable LEAF_AS_LIST): detachable STRING
			-- Literal text of current AST node
		do
			if a_list /= Void then
				Result := a_list.i_th (index).literal_text (Void)
			end
		end

feature -- Roundtrip

	index: INTEGER
			-- Index in `match_list', a structure to store all tokens (including breaks and comments).

	set_index (i: INTEGER)
			-- Set `index' with `i'.
		require
			i_non_negative: i >= 0
		do
			index := i
		ensure
			index_set: index = i
		end

note
	copyright:	"Copyright (c) 1984-2014, Eiffel Software"
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

end
