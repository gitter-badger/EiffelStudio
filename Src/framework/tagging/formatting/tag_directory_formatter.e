note
	description: "Summary description for {TAG_DIRECTORY_FORMATTER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TAG_DIRECTORY_FORMATTER

inherit
	TAG_VALIDATOR
		redefine
			is_valid_tag
		end

	TAG_FORMATTER
		redefine
			is_valid_token
		end

feature -- Access

	validator: TAG_VALIDATOR
			-- <Precursor>
		do
			Result := Current
		end

	valid_token_chars: STRING_32 = "_{}()[]:.-~"
			-- Valid chars to be used in a token other than alpha numeric

	split_char: CHARACTER_32 = '/'
			-- Char used to split tokens in tag

feature -- Query

	is_valid_token (a_string: READABLE_STRING_GENERAL): BOOLEAN
			-- Is given string a valid token?
			--
			-- `a_string': String for which is determined if it is a valid token.
			-- `Result': True if `a_string' represents a valid token, False otherwise.
		local
			i: INTEGER
			c: CHARACTER_32
		do
			if not a_string.is_empty then
				from
					Result := True
					i := 1
				until
					i > a_string.count or not Result
				loop
					c := a_string.item (i)
					Result := c.is_alpha_numeric or valid_token_chars.has (c)
					i := i + 1
				end
			end
		end

	is_valid_tag (a_string: READABLE_STRING_GENERAL): BOOLEAN
			-- Does a given string represent a valid tag?
			--
			-- `a_string': String for which is determined if it is a valid tag.
			-- `Result': True is `a_string' represents a valid tag, False otherwise.
		local
			i: INTEGER
			b: BOOLEAN
			c: CHARACTER_32
		do
			from
				Result := Precursor (a_string)
				i := 1
			until
				i > a_string.count or not Result
			loop
				c := a_string.item (i)
				if c.is_alpha_numeric or valid_token_chars.has (c) then
					b := False
				elseif c = split_char then
					if i = 1 or i = a_string.count or b then
						Result := False
					else
						b := True
					end
				else
					Result := False
				end
				i := i + 1
			end
		end

	is_prefix (a_prefix, a_tag: READABLE_STRING_GENERAL): BOOLEAN
			-- <Precursor>
		do
			if a_prefix.is_empty then
				Result := True
			elseif a_tag.count = a_prefix.count then
				Result := a_tag.same_string (a_prefix)
			elseif a_tag.count > a_prefix.count then
				Result := a_tag.starts_with (a_prefix) and
				          a_tag.item (a_prefix.count + 1) = split_char
			end
		end

feature -- Basic operations

	suffix (a_prefix, a_tag: READABLE_STRING_GENERAL): STRING_32
			-- <Precursor>
		do
			if a_prefix.is_empty then
				create Result.make_from_string_general (a_tag)
			elseif a_prefix.count = a_tag.count then
				create Result.make_empty
			else
					-- Strip `a_prefix' and `split_char' from `a_tag
				Result := a_tag.substring (a_prefix.count + 2, a_tag.count).as_string_32
			end
		end

	first_token (a_tag: READABLE_STRING_GENERAL): STRING_32
			-- <Precursor>
		local
			i: INTEGER
			l_tag: like first_token
		do
			l_tag := a_tag.as_string_32
			i := l_tag.index_of (split_char, 1)
			if i > 0 then
				Result := l_tag.substring (1, i - 1)
			else
				Result := l_tag
			end
		end

	append_tag (a_prefix: STRING_GENERAL; a_suffix: READABLE_STRING_GENERAL)
			-- <Precursor>
		do
			a_prefix.append_code (split_char.natural_32_code)
			a_prefix.append (a_suffix)
		end

note
	copyright: "Copyright (c) 1984-2012, Eiffel Software"
	license: "GPL version 2 (see http://www.eiffel.com/licensing/gpl.txt)"
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
end
