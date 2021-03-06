note
	description	: "Second state of the dotnet wizard"
	legal: "See notice at end of class."
	status: "See notice at end of class."

class
	DOTNET_WIZARD_PROJECT_NAME_AND_LOCATION_STATE

inherit
	WIZARD_PROJECT_NAME_AND_LOCATION_STATE
		redefine
			make
		end

create
	make

feature {NONE} -- Initialization

	make (an_info: like wizard_information)
			-- Set `help_filename' with `h_filename'.
		do
			set_help_filename (h_filename)
			Precursor {WIZARD_PROJECT_NAME_AND_LOCATION_STATE} (an_info)
		end

feature -- Access

	h_filename: STRING = "help/wizards/edotnet/docs/reference/10_project_name_and_location/index.html";
			-- Path to HTML help file
	
note
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
end -- class DOTNET_WIZARD_PROJECT_NAME_AND_LOCATION_STATE

