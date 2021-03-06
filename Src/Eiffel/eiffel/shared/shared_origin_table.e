note
	legal: "See notice at end of class."
	status: "See notice at end of class."
-- Shared instance of intermediate structure for second pass and analysis
-- of selections

class SHARED_ORIGIN_TABLE

feature -- Access

	Origin_table: ORIGIN_TABLE
			-- Origin table associated to `feature_table': it is the table
			-- of features sorted by origins: necessary for handling the
			-- selections
		once
			create Result.make (500);
		end;

	inherit_info_cache: INHERIT_INFO_CACHE
			-- Cache for reusing INHERIT_INFO objects for each degree 4 pass.
		once
			create Result.make (35)
		ensure
			cache_not_void: Result /= Void
		end

	inherit_feat_cache: INHERIT_FEAT_CACHE
			-- Cache for reusing INHERIT_FEAT objects for each degree 4 pass.
		once
			create Result.make (35)
		ensure
			cache_not_void: Result /= Void
		end

	selection_list_cache: SELECTION_LIST_CACHE
			-- Cache for reusing SELECTION_LIST objects for each degree 4 pass.
		do
			Result := origin_table.selection_list_cache
		ensure
			cache_not_void: Result /= Void
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

end
