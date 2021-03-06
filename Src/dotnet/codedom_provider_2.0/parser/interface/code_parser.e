note
	description: "Implementation of ICodeParser"
	legal: "See notice at end of class."
	status: "See notice at end of class."

class
	CODE_PARSER

inherit
	SYSTEM_DLL_ICODE_PARSER
	
	CODE_SHARED_EVENT_MANAGER
		export
			{NONE} all
		end

create
	default_create

feature -- Interface

	parse (code_stream: TEXT_READER): SYSTEM_DLL_CODE_COMPILE_UNIT
			-- implementation of parse feature.
		local
--			l_eiffel_parser: EIFFEL_PARSER
--			l_class_to_parse: STRING
--			l_class_as: CLASS_AS
--			l_visitor: CODE_CODEDOM_VISITOR
--			l_support: CODE_SUPPORT
--			l_retried: BOOLEAN
--			l_code_stream: SYSTEM_STRING
		do
			(create {EXCEPTIONS}).raise ("Not supported")
--			Event_manager.raise_event ({CODE_EVENTS_IDS}.log, ["Starting CodeParser.Parse"])
--			if not l_retried then
--				initialize_referenced_assemblies
--				create l_eiffel_parser.make
--				
--					-- FIXME IEK We do not deal with dos files correctly yet so we convert to Unix.
--				l_code_stream := code_stream.read_to_end.replace_string_string ("%R%N", "%N")
--				create l_class_to_parse.make_from_cil (l_code_stream)
--				l_eiffel_parser.parse_from_string (l_class_to_parse)
--				l_class_as := l_eiffel_parser.root_node
--				initialize_attributes (l_class_as)
--				create l_visitor.make
--				l_class_as.process (l_visitor)
--	
--				create l_support
--				Result ?= l_support.last_element_created;
--				last_compile_unit_generated := Result
--			end
--			Event_manager.raise_event ({CODE_EVENTS_IDS}.log, ["Ending CodeParser.Parse"])
		rescue
--			Event_manager.raise_event ({CODE_EVENTS_IDS}.Rescued_exception, [{ISE_RUNTIME}.last_exception])
--			l_retried := True
--			Result := last_compile_unit_generated
--			retry
		end
		
	last_compile_unit_generated: SYSTEM_DLL_CODE_COMPILE_UNIT
		-- Result of the last valid compile unit generated.
		-- If parsing of Eiffel code fails we return the last compile unit.

	initialize_attributes (a_class_as: CLASS_AS)
			-- Parse tree and initialize attributes.
		require
		--	non_void_a_class_as: a_class_as /= Void
		local
			l_init_attributes: CODE_INIT_ATTRIBUTES
		do
			create l_init_attributes.make
			a_class_as.process (l_init_attributes)
		end

	initialize_referenced_assemblies
			-- | Initialize Referenced_assemblies
			-- FIXME Raphael: this should not be here it's VS specific
		local
--			l_assembly: ASSEMBLY
--			vs_project: VS_VSPROJECT
--			i: INTEGER
--			vs_references: VS_REFERENCES
--			vs_reference: VS_REFERENCE
--			l_referenced_assemblies: LINKED_LIST [CODE_REFERENCED_ASSEMBLY]
--			l_code_dom_path: CODE_DOM_PATH
		do
--			create l_code_dom_path
--			create l_referenced_assemblies.make
--			vs_project := l_code_dom_path.vs_project
--			
--			vs_references := vs_project.references
--			from
--				i := 1
--			until
--				i > vs_references.count
--			loop
--				vs_reference := vs_references.item (i)				
--				l_assembly := l_code_dom_path.load_assembly (vs_reference.path)
--				if l_assembly /= Void then
--					l_referenced_assemblies.extend (create {CODE_REFERENCED_ASSEMBLY}.make (l_assembly))
--				end
--				i := i + 1
--			end
--				-- Make sure all referenced assemblies are consumed in Eiffel GACs
--			(create {TYPE_CONVERTER}).initialize_emitter_from_referenced_assemblies (l_referenced_assemblies)
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
end -- class CODE_PARSER
