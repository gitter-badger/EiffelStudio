note
	description: "Help provider to launch Microsoft .doc files"
	status: "See notice at end of class."
	legal: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	DOC_HELP_PROVIDER

inherit
	ES_EIS_ENTRY_HELP_PROVIDER
		redefine
			show_help
		end

feature -- Access

	document_protocol: STRING
			-- Document protocol used by a URI to navigate to the help accessible from the provider.
		once
			create Result.make_empty
			Result.append ("DOC")
		end

	document_description: STRING_32
			-- Document short description
		once
			create Result.make_empty
			Result.append ("DOC")
		end

feature -- Basic operations

	show_help (a_context_id: READABLE_STRING_GENERAL; a_section: detachable HELP_CONTEXT_SECTION_I)
			-- <precursor>
		do
				-- For the moment, DOC is treated as normal URI
				-- In the future, we may need to call MS Word API to open the entry.
			Precursor {ES_EIS_ENTRY_HELP_PROVIDER}(a_context_id, a_section)
		end

note
	copyright: "Copyright (c) 1984-2009, Eiffel Software"
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

end
