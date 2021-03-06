note

	description:
			"Run the specified query."
	legal: "See notice at end of class."
	status: "See notice at end of class.";
	default:	"First time: NOTHING; subsequent times: last expression.";
	date:		"$Date$";
	revision:	"$Revision $"

class EWB_RUN_PROF

inherit
	EWB_CMD
		rename
			name as run_cmd_name,
			abbreviation as run_abb,
			help_message as run_prof_help
		redefine
			loop_action
		end;
	SHARED_QUERY_VALUES

feature {NONE} -- Execute

	loop_action
		do
			execute;
		end;

	execute
		local
			executer: E_SHOW_PROFILE_QUERY;
			st: YANK_WINDOW
		do
			create_profiler_query;
			create_profiler_options;

			create st.make;
			if any_active_query then
				print_active_query (st);
					-- Do the computation.
				create executer.make (st, profiler_query, profiler_options);
				if last_output /= Void then
					executer.set_last_output (last_output);
				end;
				executer.execute;
				last_output := executer.last_output
			else
				st.add_string (ewb_names.no_active_queries);
				st.add_new_line;
				st.add_string (ewb_names.you_should_first_manipulate_the_subqueries)
				st.add_new_line;
			end;
			output_window.put_string (st.stored_output);
			output_window.put_new_line
		end;

feature {NONE} -- Attributes

	last_output: PROFILE_INFORMATION;
		-- Last output generated by the run of the query.
		-- Needed for the query-feature last_output.

	profiler_query: PROFILER_QUERY
		-- The query to be ran by the query executer.

	profiler_options: PROFILER_OPTIONS
		-- The options to use by the query executer.

feature {NONE} -- Implementation

	any_active_query: BOOLEAN
			-- Are there any active subqueries?
		do
			Result := profiler_query.subqueries.count >= 1;
		end;

	create_profiler_query
			-- Creates `profiler_query'.
		do
			create profiler_query
			profiler_query.set_subqueries (subqueries);
			profiler_query.set_subquery_operators (subquery_operators);
		end;

	create_profiler_options
			-- Creates `profiler_options'.
		do
			create profiler_options;
			profiler_options.set_output_names (output_names);
			profiler_options.set_filenames (filenames);
			profiler_options.set_language_names (language_names);
		end;

	print_active_query (st: TEXT_FORMATTER)
		do
			from
				st.add_string (ewb_names.query);
				st.add_new_line;
				st.add_string ("======");
				st.add_new_line;
				st.add_new_line;
				subqueries.start;
				subquery_operators.start;
			until
				subqueries.after
			loop
				if subqueries.item.is_active then
					st.add_string (subqueries.item.column);
					st.add_char (' ');
					st.add_string (subqueries.item.operator);
					st.add_char (' ');
					st.add_string (subqueries.item.value);
					if not subquery_operators.after then
						if subquery_operators.item.is_active then
							st.add_char (' ');
							st.add_string (subquery_operators.item.actual_operator);
						end;
					end;
					st.add_new_line;
				end;
				subqueries.forth;
				if not subquery_operators.after then
					subquery_operators.forth;
				end;
			end;
		end;

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

end -- class EWB_RUN_PROF
