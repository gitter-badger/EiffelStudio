note
	description	: "[
		Error when resource compiler cannot be invoked or if during its invocation it fails to
		generate the binary resources file.
		]"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	definition: "VIRC = failed Resource Compiler"
	date: "$Date$"
	revision: "$Revision$"

class
	VIRC

inherit
	COMPILER_WARNING

create
	make_rc_not_found,
	make_rc_not_present,
	make_resource_file_not_found,
	make_failed

feature {NONE} -- Initialization

	make_rc_not_found (a_rc: like resource_compiler)
			-- Create warning when resource compiler is not found.
		do
			has_resource_compiler := False
			resource_compiler := a_rc
		ensure
			resource_compiler_set: resource_compiler = a_rc
		end

	make_rc_not_present
			-- Create warning when resource compiler is not available.
		do
			has_resource_compiler := False
			resource_compiler := Void
		ensure
			resource_compiler_set: resource_compiler = Void
		end

	make_resource_file_not_found (a_file: like resource_file)
			-- Create a warning
		do
			has_resource_compiler := True
			has_resource_file := False
			resource_file := a_file
		ensure
			resource_file_set: resource_file = a_file
		end

	make_failed (a_file: like resource_file)
			-- Create warning when resource compiler failed.
		do
			has_resource_compiler := True
			has_resource_file := True
			resource_file := a_file
		ensure
			resource_file_set: resource_file = a_file
		end

feature -- Properties

	code: STRING = "VIRC"
		-- Error code

feature -- Access

	has_resource_compiler: BOOLEAN
			-- Do we have a resource compiler available?

	has_resource_file: BOOLEAN
			-- Does `resource_file' exist?

	resource_compiler: detachable READABLE_STRING_GENERAL
			-- Name of resource compiler.

	resource_file: READABLE_STRING_GENERAL
			-- Name of file being processed.

	file_name: like {ERROR}.file_name
			-- No associated file name
		do
		end

feature -- Output

	build_explain (a_text_formatter: TEXT_FORMATTER)
			-- No need for an error message.
		do
			if not has_resource_compiler then
				if resource_compiler = Void then
					a_text_formatter.add ("Could not locate resource compiler.")
				else
					a_text_formatter.add ("Could not locate resource compiler at location:")
					a_text_formatter.add_new_line
					a_text_formatter.add (resource_compiler)
				end
			else
				if not has_resource_file then
					a_text_formatter.add ("Could not find resource file %"")
					a_text_formatter.add (resource_file)
					a_text_formatter.add ("%".")
				else
					a_text_formatter.add ("Could not compile resource file %"")
					a_text_formatter.add (resource_file)
					a_text_formatter.add ("%".")
				end
			end
		end

invariant
	resource_file_set: has_resource_compiler implies resource_file /= Void

note
	copyright:	"Copyright (c) 1984-2013, Eiffel Software"
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

end -- class VIRC
