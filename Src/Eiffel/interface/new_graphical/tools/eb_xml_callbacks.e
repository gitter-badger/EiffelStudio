note
	description: "Common bahavior used in xml parsing"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	EB_XML_CALLBACKS

inherit
	XML_CALLBACKS_FILTER
		redefine
			on_error,
			on_content,
			on_start_tag,
			on_attribute,
			on_start_tag_finish,
			on_end_tag
		end

	EB_XML_PARSE_HELPER

	EXCEPTIONS

	SHARED_BENCH_NAMES

feature{NONE} -- Initialization

	initialize
			-- Initialize.
		do
			initialize_state_transitions_tag
			initialize_tag_attributes
			initialize_processors
			initialize_attribute_name_table

			create current_tag.make
			create current_attributes.make (3)
			create current_content.make (256)
		end

feature -- Access

	last_error: EB_METRIC_ERROR
			-- Last reported error

feature -- Status report

	has_error: BOOLEAN
			-- Did error occur during xml parsing?
		do
			Result := last_error /= Void
		end

feature{NONE} -- Event handlers

	on_error (a_message: READABLE_STRING_32)
			-- Event producer detected an error.
		do
			create_last_error (a_message)
		end

	on_content (a_content: READABLE_STRING_32)
			-- Text content.
		do
			current_content.append (a_content)
		end

	on_start_tag (a_namespace: detachable READABLE_STRING_32; a_prefix: detachable READABLE_STRING_32; a_local_part: READABLE_STRING_32)
			-- Start of start tag.
		local
			l_tag: INTEGER
		do
			if current_tag.is_empty then
				current_tag.extend (t_none)
			end
			if attached state_transitions_tag.item (current_tag.item) as l_trans then
				l_tag := l_trans.item (a_local_part.to_string_32)
			end
			if l_tag = 0 then
				create_last_error (xml_names.err_invalid_tag_position (a_local_part))
			else
				current_tag.extend (l_tag)
			end
		end

	on_attribute (a_namespace: detachable READABLE_STRING_32; a_prefix: detachable READABLE_STRING_32; a_local_part: READABLE_STRING_32; a_value: READABLE_STRING_32)
			-- Start of attribute.
		local
			k_local: STRING_32
			l_attribute: INTEGER
			l_current_attributes: like current_attributes
		do
			if
				not a_local_part.is_case_insensitive_equal ("xmlns") and
				not	a_local_part.is_case_insensitive_equal ("xsi") and
				not a_local_part.is_case_insensitive_equal ("schemaLocation")
			then
					-- check if the attribute is valid for the current state
				if attached tag_attributes.item (current_tag.item) as l_attr then
					k_local := a_local_part.to_string_32
					k_local.to_lower
					l_attribute := l_attr.item (k_local)
				end
				l_current_attributes := current_attributes
				if l_current_attributes = Void then
					create l_current_attributes.make (1)
					current_attributes := l_current_attributes
				end
				if l_attribute /= 0 and then not l_current_attributes.has (l_attribute) then
					l_current_attributes.force (a_value, l_attribute)
				else
					create_last_error (xml_names.err_invalid_attribute (a_local_part))
				end
			end
		end

	on_start_tag_finish
			-- End of start tag.
		local
			l_tag: INTEGER
			l_start_prc: like tag_start_processors
		do
			l_tag := current_tag.item
			l_start_prc := tag_start_processors
			if l_start_prc.has (l_tag) then
				l_start_prc.item (l_tag).call (Void)
			end
			if attached current_attributes as l_current_attributes then
				l_current_attributes.wipe_out
			end
		end

	on_end_tag (a_namespace: detachable READABLE_STRING_32; a_prefix: detachable READABLE_STRING_32; a_local_part: READABLE_STRING_32)
			-- End tag.
		local
			l_tag: INTEGER
			l_finish_prc: like tag_finish_processors
		do
			l_tag := current_tag.item
			l_finish_prc := tag_finish_processors
			if l_finish_prc.has (l_tag) then
				l_finish_prc.item (l_tag).call (Void)
			end
			current_content.wipe_out
			current_tag.remove
		end

feature{NONE} -- Error handling

	create_last_error (a_message: READABLE_STRING_GENERAL)
			-- Create `last_error' with `a_message'.
			-- Raise an exception
		do
			create last_error.make (a_message)
			raise ("XML parser error")
		ensure then
			has_error: has_error
		end

feature{NONE} -- Implementation

	current_content: STRING_32
			-- Current content

	current_tag: LINKED_STACK [INTEGER]
			-- The stack of tags we are currently processing

	current_attributes: detachable HASH_TABLE [READABLE_STRING_32, INTEGER]
			-- The values of the current attributes	

	state_transitions_tag: HASH_TABLE [HASH_TABLE [INTEGER, STRING_32], INTEGER]
			-- Mapping of possible tag state transitions from `current_tag' with the tag name to the new state.

	tag_attributes: HASH_TABLE [HASH_TABLE [INTEGER, STRING_32], INTEGER]
			-- Mapping of possible attributes of tags.

	tag_start_processors: HASH_TABLE [PROCEDURE [ANY, TUPLE], INTEGER]
			-- Table of processors to be called when start tag finish is met.
			-- [processor, tag id]

	tag_finish_processors: HASH_TABLE [PROCEDURE [ANY, TUPLE], INTEGER]
			-- Table of processors to be called when tag finish is met.
			-- [processor, tag id]

	attribute_name_table: HASH_TABLE [READABLE_STRING_32, INTEGER]
			-- Table of attributes in form of [attribute_name, attribute_id]

	t_none: INTEGER
			-- Phony non node.
		deferred
		end

feature{NONE} -- Implementation

	initialize_state_transitions_tag
			-- Initialize `state_transitions_tag'.
		deferred
		end

	initialize_tag_attributes
			-- Initialize `tag_attributes'.
		deferred
		end

	initialize_processors
			-- Initialize processors for analysing nodes.
		deferred
		end

	initialize_attribute_name_table
			-- Initialize `attribute_name_table'.
		local
			l_attrs: like tag_attributes
			l_table: like attribute_name_table
			l_attr: like tag_attributes.item
		do
			create attribute_name_table.make (10)
			from
				l_table := attribute_name_table
				l_attrs := tag_attributes
				l_attrs.start
			until
				l_attrs.after
			loop
				l_attr := l_attrs.item_for_iteration
				from
					l_attr.start
				until
					l_attr.after
				loop
					l_table.force (l_attr.key_for_iteration, l_attr.item_for_iteration)
					l_attr.forth
				end
				l_attrs.forth
			end
		end

	retrieve_attribute_value (a_attr_id: INTEGER)
			-- Retrieve value of attribute whose id is `a_attr_id' from `current_attributes'.
			-- If succeeded, store last retrieved attribute value in `last_tested_attribute',
			-- otherwise raise an error.
		do
			check attribute_name_table.has (a_attr_id) end
			test_attribute (a_attr_id, current_attributes, agent create_last_error (xml_names.err_attribute_missing (attribute_name_table.item (a_attr_id))))
		end

invariant
	state_transitions_tag_attached: state_transitions_tag /= Void
	tag_attributes_attached: tag_attributes /= Void
	current_content_attached: current_content /= Void
	tag_start_processors_attached: tag_start_processors /= Void
	tag_finish_processors_attached: tag_finish_processors /= Void
	attribute_name_table_attached: attribute_name_table /= Void

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
