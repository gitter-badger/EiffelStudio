note
	description: "Wizard data visitor"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	WIZARD_DATA_VISITOR

feature -- Operations

	visit (a_descriptor: WIZARD_DATA_TYPE_DESCRIPTOR)
			-- visit `a_descriptor'
		require
			non_void_descriptor: a_descriptor /= Void
		do
			a_descriptor.visit (Current)
		end

feature -- Processing

	process_safearray_data_type (a_safearray_descriptor: WIZARD_SAFEARRAY_DATA_TYPE_DESCRIPTOR)
			-- Process SAFEARRAY
		require
			valid_descriptor: a_safearray_descriptor /= Void
		deferred
		end

	process_automation_data_type (an_automation_descriptor: WIZARD_AUTOMATION_DATA_TYPE_DESCRIPTOR)
			-- Process Automation Data Type
		require
			valid_descriptor: an_automation_descriptor /= Void
		deferred
		end
		
	process_array_data_type (an_array_descriptor: WIZARD_ARRAY_DATA_TYPE_DESCRIPTOR)
			-- Process Array
		require
			valid_descriptor: an_array_descriptor /= Void
		deferred
		end

	process_user_defined_data_type (a_user_defined_descriptor: WIZARD_USER_DEFINED_DATA_TYPE_DESCRIPTOR)
			-- Process User Defined Data Type
		require
			valid_descriptor: a_user_defined_descriptor /= Void
		deferred
		end

	process_pointed_data_type (a_pointed_descriptor: WIZARD_POINTED_DATA_TYPE_DESCRIPTOR)
			-- Process pointed Data Type
		require
			valid_descriptor: a_pointed_descriptor /= Void
		deferred
		end


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
end -- class WIZARD_DATA_VISITOR


