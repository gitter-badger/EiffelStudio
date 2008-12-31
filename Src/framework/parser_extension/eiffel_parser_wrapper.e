note
	description: "[
			An Eiffel parser wrapper for optionally contain errors/warnings within a parser. Parsers can be
			performed with a set of configuration options also.
		]"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	EIFFEL_PARSER_WRAPPER

inherit
	ANY

	SHARED_ERROR_HANDLER
		export
			{NONE} all
		end

feature -- Access

	ast_node: ?AST_EIFFEL
			-- Last AST node set from a parse operation.

	ast_match_list: ?LEAF_AS_LIST
			-- Last match list generated by the parser.

feature {NONE} -- Element change

	set_last_ast (a_parser: !EIFFEL_PARSER)
			-- Sets the current's state from a parser.
		require
			not_has_error: not has_error
		do
			if a_parser.indexing_parser then
				ast_node := a_parser.indexing_node
			elseif a_parser.expression_parser then
				ast_node := a_parser.expression_node
			elseif a_parser.entity_declaration_parser then
				ast_node := a_parser.entity_declaration_node
			elseif a_parser.feature_parser then
				ast_node := a_parser.feature_node
			elseif a_parser.invariant_parser then
				ast_node := a_parser.invariant_node
			elseif a_parser.type_parser then
				ast_node := a_parser.type_node
			else
				ast_node := a_parser.root_node
			end
			ast_match_list := a_parser.match_list
		end

feature -- Status report

	has_error: BOOLEAN
			-- Indicates the last parser had an error

feature -- Basic operation

	parse (a_parser: !EIFFEL_PARSER; a_text: !READABLE_STRING_GENERAL; a_ignore_errors: BOOLEAN)
			-- Performs a parse using an Eiffel parser.
			--
			-- `a_parser'       : The Eiffel parser to perform a parse with.
			-- `a_text'         : The Eiffel text to parse using the supplied parser.
			-- `a_ignore_errors': True to remove all errors and warnings from the error handler after a
			--                    parse has been completed; False to retain them.
		local
			l_error_handler: like error_handler
			l_errors: LINKED_LIST [ERROR]
			l_error_index: INTEGER
			l_warnings: LINKED_LIST [ERROR]
			l_warning_index: INTEGER
			retried: BOOLEAN
		do
			if not retried then
				reset

				l_error_handler := error_handler
				if a_ignore_errors then
						-- Log last error/warning index
					l_errors := l_error_handler.error_list
					if l_errors /= Void then
						l_error_index := l_errors.count
					end
					l_warnings := l_error_handler.warning_list
					if l_warnings /= Void then
						l_warning_index := l_warnings.count
					end
				else
					check not_l_error_handler_has_error: l_error_handler.has_error end
				end

					-- Perform parse
				a_parser.parse_from_string (a_text.as_string_8)

				if a_ignore_errors then
						-- Remove any added errors
					l_errors := error_handler.error_list
					if l_errors /= Void then
						if l_errors.count > l_error_index then
							has_error := True
							l_errors.go_i_th (l_error_index)
							from until l_errors.count = l_error_index loop
								l_errors.remove_right
							end
						end
					end
					l_warnings := error_handler.error_list
					if l_warnings /= Void then
						if l_warnings.count > l_warning_index then
							l_warnings.go_i_th (l_warning_index)
							from until l_warnings.count = l_warning_index loop
								l_warnings.remove_right
							end
						end
					end
				else
					has_error := l_error_handler.has_error
				end

				if not has_error then
					set_last_ast (a_parser)
				end
			else
				has_error := True
			end
		ensure
			error_handler_has_error_unchanged: error_handler.has_error = old error_handler.has_error
			error_handler_has_warning_unchanged: error_handler.has_warning = old error_handler.has_warning
		end

	parse_with_option (a_parser: !EIFFEL_PARSER; a_text: !READABLE_STRING_GENERAL; a_options: CONF_OPTION; a_ignore_errors: BOOLEAN)
			-- Performs a parse using an Eiffel parser.
			--
			-- `a_parser'       : The Eiffel parser to perform a parse with.
			-- `a_text'         : The Eiffel text to parse using the supplied parser.
			-- `a_options'      : The configuration options to apply to the parser before parsing.
			-- `a_ignore_errors': True to remove all errors and warnings from the error handler after a
			--                    parse has been completed; False to retain them.
		local
			l_syn_level: NATURAL_8
		do
			l_syn_level := a_options.syntax_level.item
			a_parser.set_is_indexing_keyword (l_syn_level /= {CONF_OPTION}.syntax_level_standard)
			a_parser.set_is_note_keyword (l_syn_level /= {CONF_OPTION}.syntax_level_obsolete)
			a_parser.set_is_attribute_keyword (l_syn_level /= {CONF_OPTION}.syntax_level_obsolete)

			parse (a_parser, a_text, a_ignore_errors)
		end

feature {NONE} -- Basic operations

	reset
			-- Resets the current parser's state
		do
			ast_node := Void
			ast_match_list := Void
			has_error := False
		ensure
			ast_node_detached: ast_node = Void
			ast_match_list_detached: ast_match_list = Void
			not_has_error: not has_error
		end

;note
	copyright: "Copyright (c) 1984-2008, Eiffel Software"
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
