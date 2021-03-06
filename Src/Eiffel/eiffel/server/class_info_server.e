note
	description: "Server for class information indexed by class id."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class CLASS_INFO_SERVER

inherit
	ANY

	SHARED_SERVER
		export
			{NONE} all
		end

feature

	has (an_id: INTEGER): BOOLEAN
			-- Is an item of id `an_id' present in the current server ?
		do
			Result := Tmp_ast_server.has (an_id) or else Ast_server.has (an_id)
		end

	server_has (an_id: INTEGER): BOOLEAN
			-- Is an item of id `an_id' present in the current server ?
		do
			Result := Ast_server.has (an_id)
		end

	id (t: CLASS_INFO): INTEGER
			-- Id associated with `t'
		do
			Result := t.class_id
		end

	item, disk_item (an_id: INTEGER): CLASS_INFO
			-- Feature table of id `an_id'. Look first in the temporary
			-- feature table server. It not present, look in itself.
		local
			tmp_class: CLASS_AS
		do
			if Tmp_ast_server.has (an_id) then
				tmp_class := Tmp_ast_server.item (an_id)
			elseif Ast_server.has (an_id) then
				tmp_class := Ast_server.item (an_id)
			end
			if tmp_class /= Void then
				create Result.initialize_from_class_as (tmp_class)
			end
		end;

	server_item (an_id: INTEGER): CLASS_INFO
			-- Feature table of id `an_id'.
			-- Temporary feature server is not used.
		local
			tmp_class: CLASS_AS
		do
			if Ast_server.has (an_id) then
				tmp_class := Ast_server.item (an_id)
				if tmp_class /= Void then
					create Result.initialize_from_class_as (tmp_class)
				end
			end
		end

feature -- Server size configuration

	Size_limit: INTEGER = 200
			-- Size of the CLASS_INFO_SERVER file (200 Ko)

	Chunk: INTEGER = 500
			-- Size of a HASH_TABLE block

invariant

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
