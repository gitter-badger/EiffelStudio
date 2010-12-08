note
	description: "Objects that represent an EV_TITLED_WINDOW.%
		%The original version of this class was generated by EiffelBuild."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	EB_METRIC_ARCHIVE_RESULT_AREA

inherit
	EV_VERTICAL_BOX
		redefine
			initialize,
			is_in_default_state
		end

	EVS_GRID_TWO_WAY_SORTING_ORDER
		undefine
			is_equal,
			copy,
			default_create
		end

	EB_METRIC_INTERFACE_PROVIDER
		undefine
			is_equal,
			copy,
			default_create
		end

	EB_SHARED_PREFERENCES
		undefine
			is_equal,
			copy,
			default_create
		end

	EB_METRIC_TOOL_INTERFACE
		undefine
			is_equal,
			copy,
			default_create
		end

	EB_METRIC_COMPONENT
		undefine
			is_equal,
			copy,
			default_create
		end

	EB_RECYCLABLE
		undefine
			is_equal,
			copy,
			default_create
		end

create
	make

feature {NONE} -- Initialization

	make (a_tool: like metric_tool; a_panel: like metric_panel)
			-- Initialize `metric_tool' with `a_tool'.
		require
			a_tool_attached: a_tool /= Void
			a_panel_attached: a_panel /= Void
		do
			set_metric_tool (a_tool)
			set_metric_panel (a_panel)
			default_create
		ensure
			metric_tool_attached: metric_tool = a_tool
			metric_panel_set: metric_panel = a_panel
		end

	initialize
			-- Initialize Current.
		local
			l_title_lbl: EV_LABEL
			l_hor: EV_HORIZONTAL_BOX
			l_cell: EV_CELL
			l_name_sort_info: EVS_GRID_TWO_WAY_SORTING_INFO [EB_METRIC_ARCHIVE_RESULT_ROW]
			l_type_sort_info: EVS_GRID_TWO_WAY_SORTING_INFO [EB_METRIC_ARCHIVE_RESULT_ROW]
			l_reference_sort_info: EVS_GRID_TWO_WAY_SORTING_INFO [EB_METRIC_ARCHIVE_RESULT_ROW]
			l_current_sort_info: EVS_GRID_TWO_WAY_SORTING_INFO [EB_METRIC_ARCHIVE_RESULT_ROW]
			l_difference_sort_info: EVS_GRID_TWO_WAY_SORTING_INFO [EB_METRIC_ARCHIVE_RESULT_ROW]
			l_ratio_sort_info: EVS_GRID_TWO_WAY_SORTING_INFO [EB_METRIC_ARCHIVE_RESULT_ROW]

		do
			create l_title_lbl.make_with_text (metric_names.t_archive_comparison_result)
			l_title_lbl.align_text_left
			create l_hor
			create l_cell

			Precursor {EV_VERTICAL_BOX}
			set_padding (3)
			l_hor.extend (l_title_lbl)
			l_hor.extend (l_cell)
			l_hor.disable_item_expand (l_title_lbl)
			extend (l_hor)
			disable_item_expand (l_hor)

				-- Setup `result_grid'.
			create result_grid
			result_grid.set_column_count_to (6)
			result_grid.column (1).set_title (displayed_name (metric_names.t_metric))
			result_grid.column (2).set_title (displayed_name (metric_names.t_type))
			result_grid.column (3).set_title (displayed_name (metric_names.t_value_of_reference))
			result_grid.column (4).set_title (displayed_name (metric_names.t_value_of_current))
			result_grid.column (5).set_title (displayed_name (metric_names.t_difference))
			result_grid.column (6).set_title (displayed_name (metric_names.t_ratio))
			result_grid.enable_multiple_row_selection

				-- Setup sortable wrapper.
			create grid_wrapper.make (result_grid)
			create l_name_sort_info.make (agent metric_name_tester, ascending_order)
			create l_type_sort_info.make (agent metric_type_tester, ascending_order)
			create l_reference_sort_info.make (agent reference_value_tester, ascending_order)
			create l_current_sort_info.make (agent current_value_tester, ascending_order)
			create l_difference_sort_info.make (agent difference_value_tester, ascending_order)
			create l_ratio_sort_info.make (agent ratio_value_tester, ascending_order)
			grid_wrapper.set_sort_info (1, l_name_sort_info)
			grid_wrapper.set_sort_info (2, l_type_sort_info)
			grid_wrapper.set_sort_info (3, l_reference_sort_info)
			grid_wrapper.set_sort_info (4, l_current_sort_info)
			grid_wrapper.set_sort_info (5, l_difference_sort_info)
			grid_wrapper.set_sort_info (6, l_ratio_sort_info)
			grid_wrapper.set_sort_action (agent sort_agent)
			grid_wrapper.enable_auto_sort_order_change
			grid_wrapper.set_item_text_function (agent text_of_grid_item)
			grid_wrapper.enable_copy
			extend (grid_wrapper.component_widget)

			append_drop_actions (
				<<result_grid,
				  l_cell
				>>,
				metric_tool
			)
			drop_actions.extend (agent metric_panel.drop_cluster)
			drop_actions.extend (agent metric_panel.drop_class)
			drop_actions.extend (agent metric_panel.drop_feature)

		end

feature -- Load archive

	archive_comparison: ARRAYED_LIST [EB_METRIC_ARCHIVE_RESULT_ROW]
			-- Archive comparison result

	load_archives (ref_archive, cur_archive: LIST [EB_METRIC_ARCHIVE_NODE])
			-- Load `ref_archive' and `cur_archive'.
		require
			archives_valid: not (ref_archive = Void and then cur_archive = Void)
		local
			l_is_ref_set: BOOLEAN
			l_is_cur_set: BOOLEAN
			l_ref_tbl: HASH_TABLE [EB_METRIC_ARCHIVE_NODE, STRING]
			l_cur_tbl: HASH_TABLE [EB_METRIC_ARCHIVE_NODE, STRING]
			l_metric_name: STRING
			l_rlt: like archive_comparison
		do
			l_is_ref_set := ref_archive /= Void
			l_is_cur_set := cur_archive /= Void
			if l_is_ref_set then
				l_ref_tbl := archive_table (ref_archive)
			else
				create l_ref_tbl.make (0)
			end
			if l_is_cur_set then
				l_cur_tbl := archive_table (cur_archive)
			else
				create l_cur_tbl.make (0)
			end
			create l_rlt.make (l_cur_tbl.count + l_ref_tbl.count)
			from
				l_cur_tbl.start
			until
				l_cur_tbl.after
			loop
				l_metric_name := l_cur_tbl.key_for_iteration
				if l_ref_tbl.has (l_metric_name) then
					l_rlt.force (comparison_row (l_ref_tbl.item (l_metric_name), l_cur_tbl.item_for_iteration))
					l_ref_tbl.remove (l_metric_name)
				else
					l_rlt.force (comparison_row (Void, l_cur_tbl.item_for_iteration))
				end
				l_cur_tbl.forth
			end
			from
				l_ref_tbl.start
			until
				l_ref_tbl.after
			loop
				l_rlt.force (comparison_row (l_ref_tbl.item_for_iteration, Void))
				l_ref_tbl.forth
			end
			archive_comparison := l_rlt
			bind_grid
		end

	bind_grid
			-- Bind `archive_comparison' into `result_grid'.
		local
			l_rows: like archive_comparison
			l_row: EV_GRID_ROW
			l_grid: like result_grid
		do
			l_grid := result_grid
			if l_grid.row_count > 0 then
				l_grid.remove_rows (1, l_grid.row_count)
			end
			l_rows := archive_comparison
			if l_rows /= Void then
				from
					l_rows.start
				until
					l_rows.after
				loop
					l_grid.insert_new_row (l_grid.row_count + 1)
					l_row := l_grid.row (l_grid.row_count)
					build_archive_row (l_rows.item_for_iteration, l_row)
					l_rows.forth
				end
			end
			resize_grid
		end

	resize_grid
			-- Resize `result_grid' accordingly.
		local
			l_grid: like result_grid
			i: INTEGER
			l_row_cnt: INTEGER
			l_column_cnt: INTEGER
			l_width: INTEGER
			l_font: EV_FONT
			l_column: EV_GRID_COLUMN
		do
			l_grid := result_grid
			l_row_cnt := l_grid.row_count
			if l_row_cnt > 0 then
				create l_font
				from
					i := 1
					l_column_cnt := l_grid.column_count
				until
					i > l_column_cnt
				loop
					l_column := l_grid.column (i)
					l_width := l_column.required_width_of_item_span (1, l_row_cnt) + 20
					l_width := l_width.max (l_font.string_width (l_column.title) + 40)
					l_column.set_width (l_width)
					i := i + 1
				end
			end
		end

	build_archive_row (a_archive_row: EB_METRIC_ARCHIVE_RESULT_ROW; a_row: EV_GRID_ROW)
			-- Bind `a_archive_row' into `a_row'.
		require
			a_archive_row_attached: a_archive_row /= Void
			a_row_attached: a_row /= Void
		local
			l_str: STRING
			l_double_formatter: FORMAT_DOUBLE
		do
			create l_double_formatter.make (16, 2)
			if a_row.index \\ 2 = 0 then
				a_row.set_background_color (even_line_color)
			else
				a_row.set_background_color (odd_line_color)
			end
			a_row.set_item (1, create {EV_GRID_LABEL_ITEM}.make_with_text (a_archive_row.metric_name))
			a_row.set_item (2, create {EV_GRID_LABEL_ITEM}.make_with_text (displayed_name (a_archive_row.type)))
			if a_archive_row.is_reference_value_set then
				l_str := a_archive_row.reference_value.out
			else
				l_str := ""
			end
			a_row.set_item (3, create {EV_GRID_LABEL_ITEM}.make_with_text (l_str))

			if a_archive_row.is_current_value_set then
				l_str := a_archive_row.current_value.out
			else
				l_str := ""
			end
			a_row.set_item (4, create {EV_GRID_LABEL_ITEM}.make_with_text (l_str))

			if a_archive_row.is_difference_set then
				l_str := a_archive_row.difference.out
			else
				l_str := ""
			end
			a_row.set_item (5, create {EV_GRID_LABEL_ITEM}.make_with_text (l_str))

			if a_archive_row.is_ratio_set then
				l_str := l_double_formatter.formatted (a_archive_row.ratio * 100) + "%%"
			else
				l_str := ""
			end
			a_row.set_item (6, create {EV_GRID_LABEL_ITEM}.make_with_text (l_str))
		end

	comparison_row (ref_node, cur_node: EB_METRIC_ARCHIVE_NODE): EB_METRIC_ARCHIVE_RESULT_ROW
			-- Archive comparison row from `ref_node' and `cur_node'.
		require
			nodes_valid: not (ref_node = Void and then cur_node = Void)
		local
			l_type_name: STRING_32
		do
			if ref_node = Void then
				create Result.make (cur_node.metric_name, name_of_metric_type (cur_node.metric_type), 0, False, cur_node.value, True, cur_node.calculated_time)
			elseif cur_node = Void then
				create Result.make (ref_node.metric_name, name_of_metric_type (ref_node.metric_type), ref_node.value, True, 0, False, ref_node.calculated_time)
			else
				if ref_node.metric_type /= cur_node.metric_type then
					l_type_name := ""
				else
					l_type_name := name_of_metric_type (ref_node.metric_type)
				end
				create Result.make (ref_node.metric_name, l_type_name, ref_node.value, True, cur_node.value, True, ref_node.calculated_time)
			end
		ensure
			result_attached: Result /= Void
		end

	archive_table (a_archive: LIST [EB_METRIC_ARCHIVE_NODE]): HASH_TABLE [EB_METRIC_ARCHIVE_NODE, STRING]
			-- Archive hashtable from `a_archive'
		require
			a_archive_attached: a_archive /= Void
		do
			create Result.make (a_archive.count)
			from
				a_archive.start
			until
				a_archive.after
			loop
				Result.force (a_archive.item, a_archive.item.metric_name)
				a_archive.forth
			end
		ensure
			result_attached: Result /= Void
		end

feature {NONE} -- Implementation/Sorting

	metric_name_tester (a_item, b_item: EB_METRIC_ARCHIVE_RESULT_ROW; a_order: INTEGER): BOOLEAN
			-- Metric name order tester
		require
			a_item_attached: a_item /= Void
			b_item_attached: b_item /= Void
		do
			if a_order = ascending_order then
				Result := a_item.metric_name < b_item.metric_name
			else
				Result := a_item.metric_name > b_item.metric_name
			end
		end

	metric_type_tester (a_item, b_item: EB_METRIC_ARCHIVE_RESULT_ROW; a_order: INTEGER): BOOLEAN
			-- Metric type order tester
		require
			a_item_attached: a_item /= Void
			b_item_attached: b_item /= Void
		do
			if a_order = ascending_order then
				Result := a_item.type < b_item.type
			else
				Result := a_item.type > b_item.type
			end
		end

	reference_value_tester (a_item, b_item: EB_METRIC_ARCHIVE_RESULT_ROW; a_order: INTEGER): BOOLEAN
			-- Reference value order tester
		require
			a_item_attached: a_item /= Void
			b_item_attached: b_item /= Void
		local
			l_is_a_set, l_is_b_set: BOOLEAN
		do
			l_is_a_set := a_item.is_reference_value_set
			l_is_b_set := b_item.is_reference_value_set
			if l_is_a_set and then not l_is_b_set then
				Result := True
			elseif not l_is_a_set and then l_is_b_set then
				Result := False
			elseif l_is_a_set and then l_is_b_set then
				if a_order = ascending_order then
					Result := a_item.reference_value < b_item.reference_value
				else
					Result := a_item.reference_value > b_item.reference_value
				end
			end
		end

	current_value_tester (a_item, b_item: EB_METRIC_ARCHIVE_RESULT_ROW; a_order: INTEGER): BOOLEAN
			-- Reference value order tester
		require
			a_item_attached: a_item /= Void
			b_item_attached: b_item /= Void
		local
			l_is_a_set, l_is_b_set: BOOLEAN
		do
			l_is_a_set := a_item.is_current_value_set
			l_is_b_set := b_item.is_current_value_set
			if l_is_a_set and then not l_is_b_set then
				Result := True
			elseif not l_is_a_set and then l_is_b_set then
				Result := False
			elseif l_is_a_set and then l_is_b_set then
				if a_order = ascending_order then
					Result := a_item.current_value < b_item.current_value
				else
					Result := a_item.current_value > b_item.current_value
				end
			end
		end

	difference_value_tester (a_item, b_item: EB_METRIC_ARCHIVE_RESULT_ROW; a_order: INTEGER): BOOLEAN
			-- Reference value order tester
		require
			a_item_attached: a_item /= Void
			b_item_attached: b_item /= Void
		local
			l_is_a_set, l_is_b_set: BOOLEAN
		do
			l_is_a_set := a_item.is_difference_set
			l_is_b_set := b_item.is_difference_set
			if l_is_a_set and then not l_is_b_set then
				Result := True
			elseif not l_is_a_set and then l_is_b_set then
				Result := False
			elseif l_is_a_set and then l_is_b_set then
				if a_order = ascending_order then
					Result := a_item.difference < b_item.difference
				else
					Result := a_item.difference > b_item.difference
				end
			end
		end

	ratio_value_tester (a_item, b_item: EB_METRIC_ARCHIVE_RESULT_ROW; a_order: INTEGER): BOOLEAN
			-- Reference value order tester
		require
			a_item_attached: a_item /= Void
			b_item_attached: b_item /= Void
		local
			l_is_a_set, l_is_b_set: BOOLEAN
		do
			l_is_a_set := a_item.is_ratio_set
			l_is_b_set := b_item.is_ratio_set
			if l_is_a_set and then not l_is_b_set then
				Result := True
			elseif not l_is_a_set and then l_is_b_set then
				Result := False
			elseif l_is_a_set and then l_is_b_set then
				if a_order = ascending_order then
					Result := a_item.ratio < b_item.ratio
				else
					Result := a_item.ratio > b_item.ratio
				end
			end
		end

	sort_agent (a_column_list: LIST [INTEGER]; a_comparator: AGENT_LIST_COMPARATOR [EB_METRIC_ARCHIVE_RESULT_ROW])
			-- Action to be performed when sort `a_column_list' using `a_comparator'.
		require
			a_column_list_attached: a_column_list /= Void
			not_a_column_list_is_empty:
		local
			l_sorter: QUICK_SORTER [EB_METRIC_ARCHIVE_RESULT_ROW]
		do
			create l_sorter.make (a_comparator)
			l_sorter.sort (archive_comparison)
			bind_grid
		end

feature {NONE} -- Implementation

	result_grid: ES_EDITOR_TOKEN_GRID
			-- Grid to display archive comparison result

	grid_wrapper: EVS_SEARCHABLE_COMPONENT [EB_METRIC_ARCHIVE_RESULT_ROW]
			-- Sortable grid wrapper for `result_grid'

	even_line_color: EV_COLOR
			-- Background color for even lines
		do
			Result := preferences.class_browser_data.even_row_background_color
		ensure
			result_attached: Result /= Void
		end

	odd_line_color: EV_COLOR
			-- Background color for odd lines
		do
			Result := preferences.class_browser_data.odd_row_background_color
		ensure
			result_attached: Result /= Void
		end

	text_of_grid_item (a_item: EV_GRID_ITEM): STRING
			-- Text of `a_item'		
		local
			l_label_item: EV_GRID_LABEL_ITEM
		do
			l_label_item ?= a_item
			if l_label_item /= Void then
				Result := l_label_item.text
			end
		end

	is_in_default_state: BOOLEAN
			-- Is `Current' in its default state.
		do
			Result := True
		end

feature {NONE} -- Memory Management

	internal_recycle
			-- <precursor>
		do
			result_grid.recycle
		end

invariant
	result_grid_attached: result_grid /= Void
	grid_wrapper_attached: grid_wrapper /= Void
	metric_panel_attached: metric_panel /= Void

note
	copyright: "Copyright (c) 1984-2010, Eiffel Software"
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
end -- class EB_METRIC_ARCHIVE_RESULT_AREA

