note
	description: "Objects containing the information relative to a resource folder."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	author: "Christophe Bonnard"

deferred class
	RESOURCE_FOLDER_I
	
inherit
	EB_CONSTANTS

feature -- Initialization

	make_default (doc: XML_ELEMENT; struct: like structure)
			-- Initialization of Current, belonging to `struct',
			-- according to `doc'.
		local
			s: STRING
			att: XML_ATTRIBUTE
			att_table: XML_ATTRIBUTE_TABLE
		do
			att_table := doc.attributes
			if att_table.has ("TOPIC_ID") then
				att := att_table.item ("TOPIC_ID")
				if att /= Void then
					name := att.value
				end
			end
			if att_table.has ("ICON") then
				att := att_table.item ("ICON")
				if att /= Void then
					icon := att.value
				end
			end
			is_visible := True
			if att_table.has ("VISIBILITY") then
				att := att_table.item ("VISIBILITY")
				if att /= Void and then att.value /= Void and then att.value.is_equal ("hidden") then
					is_visible := False
				end
			end
			structure := struct
			load_default_attributes (doc)
			if name = Void then
				s := "TOPIC_ID not supplied for "
				if description /= Void and then not description.is_empty then
					s.append (description)
				else
					s.append ("unknown TOPIC (no description supplied either)")
				end
				s.append ("%N")
				io.put_string (s)
				name := "error"
			else
				name.prune_all ('%R')
				name.prune_all ('%T')
				name.prune_all ('%N')
			end
		end

	make_root (location: STRING; struct: RESOURCE_STRUCTURE)
			-- Create Current (as a root folder of `struct')
			-- taking data from `location'.
		deferred
		end

	make_default_root (file_name: FILE_NAME; struct: like structure)
			-- Create Current (as a root folder of `struct')
			-- taking data from `file_name'.
		local
			file: RAW_FILE
			s: STRING
			parser: XML_TREE_PARSER
			error_message: STRING
		do
			name := "root"
			description := "root folder"
			structure := struct

			create parser.make
			create file.make (file_name)
			if file.exists then
				file.open_read
				file.read_stream (file.count)
				s := file.last_string
				parser.parse_string (s)
				parser.set_end_of_file
				file.close
				if not parser.root_element.name.is_equal ("EIFFEL_DOCUMENT") then
					error_message := "EIFFEL_DOCUMENT TAG missing%N"
				else
					xml_data := parser.root_element
					load_default_attributes (xml_data)
				end
			else
				error_message := warning_messages.w_file_not_exist (file_name)
			end
--| FIXME ARNAUD, use an error manager
--			if error_message /= Void then
--				io.put_string (error_message)
--			end
--| END FIXME
		end

	load_default_attributes (xml_elem: XML_ELEMENT)
			-- effective load of data from `xml_elem'.
		local
			res_xml: XML_RESOURCE
			resource: RESOURCE
			child: RESOURCE_FOLDER_IMP
			cursor,des_cursor: DS_BILINKED_LIST_CURSOR[XML_NODE]
			node: XML_ELEMENT
			txt: XML_TEXT
		do
			create description.make (20)
			create child_list.make
			create resource_list.make
			cursor := xml_elem.new_cursor
			from
				cursor.start
			until
				cursor.after
			loop
				node ?= cursor.item
				if node /= Void then
					if node.name.is_equal ("HEAD") then
						des_cursor := node.new_cursor
						from
							des_cursor.start
						until
							des_cursor.after
						loop
							txt ?= des_cursor.item
							if txt /= Void then
								description.append (txt.string)
							end
							des_cursor.forth
						end
					elseif node.name.is_equal ("TEXT") then
						create res_xml.make (node)
						resource := res_xml.value
						resource_list.extend (resource)
						structure.put_resource (resource)
					elseif node.name.is_equal ("TOPIC") then
						create child.make_default (node, structure)
						child.create_interface
						child_list.extend (child)
					end
				end
				cursor.forth
			end
		end

feature -- Update

	update_root (location: STRING)
			-- Update information with data from `location'.
		deferred
		end

feature -- Status Report

	child_of_name (ch_name: STRING): like Current
			-- Child of Current, whose name is `ch_name'.
			-- Void if no child has this name.
		local
			child_found: BOOLEAN
		do
			from
				child_list.start
			until
				child_found or child_list.after
			loop
				if equal (child_list.item.name, ch_name) then
					child_found := True
					Result := child_list.item
				else
					child_list.forth
				end
			end
		end

	resource_of_name (res_name: STRING): RESOURCE
			-- Resource of Current, whose name is `res_name'.
			-- Void if no resource has this name.
		local
			resource_found: BOOLEAN
		do
			from
				resource_list.start
			until
				resource_found or resource_list.after
			loop
				if equal (resource_list.item.name, res_name) then
					resource_found := True
					Result := resource_list.item
				else
					resource_list.forth
				end
			end
		end

feature -- Access

	name: STRING
			-- Id of Current, it is unique.

	icon: STRING
			-- Icon name if any, Void otherwise

	is_visible: BOOLEAN
			-- Should this folder be displayed?

	description: STRING
			-- Description of Current.
			-- Meant for providing a help message.

	resource_list: LINKED_LIST [RESOURCE]
			-- List of resources.

	structure: RESOURCE_STRUCTURE
			-- Structure Current is part of.

	child_list: LINKED_LIST [like Current]
			-- List of child folders.

feature -- Save

	root_save (location: STRING)
			-- Save folder in `location' as a root folder.
			-- Used as a part of `save' from RESOURCE_STRUCTURE_I
		deferred
		end

feature -- Interface creation

	create_interface
			-- Create an interface for Current.
		local
			in: like interface
		do
			create in.make (Current)
			interface := in
		end

feature -- Implementation

	interface: RESOURCE_FOLDER
			-- Interface of Current.

feature {NONE} -- Implementation

	xml_data: XML_ELEMENT

invariant
	structure_exists: structure /= Void

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

end -- class RESOURCE_FOLDER_I
