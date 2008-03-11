indexing
	description: "Window allow user to navigate among all zones.%
		%The original version of this class was generated by EiffelBuild."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	SD_ZONE_NAVIGATION_DIALOG

inherit
	SD_ZONE_NAVIGATION_DIALOG_IMP
		redefine
			show
		end

	EV_SHARED_APPLICATION
		export
			{NONE} all
		undefine
			default_create, copy
		end

	SD_ACCESS
		undefine
			default_create,
			is_equal,
			copy
		end

create
	make

feature {NONE} -- Initialization

	make (a_is_shift_pressed: BOOLEAN; a_docking_manager: SD_DOCKING_MANAGER) is
			-- Creation method.
		require
			a_docking_manager_not_void: a_docking_manager /= Void
		do
			create internal_shared
			is_shift_pressed := a_is_shift_pressed
			internal_docking_manager := a_docking_manager

			make_with_shadow

			add_all_content_label
			key_release_actions.extend (agent on_key_release)
			key_press_actions.extend (agent on_key_press)

			disable_user_resize
			disable_border

			internal_vertical_box_top_top.set_border_width (1)
			internal_vertical_box_top_top.set_background_color (internal_shared.focused_color)

			focus_out_actions.extend (agent destroy)
		ensure
			set: is_shift_pressed = a_is_shift_pressed
			set: internal_docking_manager = a_docking_manager
		end

	user_initialization is
			-- Called by `initialize'.
			-- Any custom user initialization that
			-- could not be performed in `initialize',
			-- (due to regeneration of implementation class)
			-- can be added here.
		local
			l_layout: EV_LAYOUT_CONSTANTS
			l_font: EV_FONT
		do
			create l_layout
			internal_vertical_box_top.set_border_width (l_layout.default_border_size)
			internal_vertical_box_top.set_padding (l_layout.default_padding_size)

			internal_info_box.set_border_width (l_layout.default_border_size)
			internal_info_box.set_padding_width (l_layout.default_padding_size)

			internal_info_box_border.set_border_width (1)
			internal_info_box_border.set_background_color (internal_shared.focused_color)

			internal_tools_box.set_border_width (l_layout.default_border_size)
			internal_tools_box.set_padding (l_layout.default_padding_size)

			internal_files_box.set_border_width (l_layout.default_border_size)
			internal_files_box.set_padding (l_layout.default_padding_size)

			scroll_area_files.hide_vertical_scroll_bar
			scroll_area_tools.hide_vertical_scroll_bar

			l_font := full_title.font
			l_font.set_weight ({EV_FONT_CONSTANTS}.weight_bold)
			full_title.set_font (l_font)

			-- We have to do it like this, otherwise when press tab key (executing next_tabstop_widget in EV_WIDGET_IMP on Windows), there will be stack overflow.
			-- The reason of the stack overflow maybe is: the `parent' of `wel_window' is not correct.
			internal_files_label.enable_tabable_to
			internal_tools_label.enable_tabable_to
		end

	init_background (a_color: EV_COLOR) is
			-- Set all widget's background color.
		do
			internal_vertical_box_top.set_background_color (a_color)
			internal_label_box.set_background_color (a_color)
			internal_tools_box.set_background_color (a_color)
			internal_tools_label.set_background_color (a_color)
			tools_column.set_background_color (a_color)
			internal_files_box.set_background_color (a_color)
			internal_files_label.set_background_color (a_color)
			files_column.set_background_color (a_color)
			internal_info_box.set_background_color (a_color)
			full_title.set_background_color (a_color)
			description.set_background_color (a_color)
			detail.set_background_color (a_color)
		end

	add_all_content_label is
			-- Add all content label to Current.
		local
			l_contents: ARRAYED_LIST [SD_CONTENT]
			l_content: SD_CONTENT
			l_label: SD_TOOL_BAR_WIDTH_BUTTON
			l_pass_first_editor, l_pass_second_editor: BOOLEAN
			l_first_label, l_last_label, l_first_tool_label, l_last_tool_label: SD_TOOL_BAR_RADIO_BUTTON
			l_tools_count, l_files_count: INTEGER
			l_pixel_buffer: EV_PIXEL_BUFFER
		do
			l_contents := internal_docking_manager.property.contents_by_click_order
			from
				l_contents.start
				l_tools_count := 1
				l_files_count := 1
			until
				l_contents.after
			loop
				l_content := l_contents.item
				create l_label.make
				l_label.set_wrap (True)
				l_label.set_maximum_width (internal_max_item_width)
				l_label.set_data (l_content)

				l_label.select_actions.extend (agent select_label_and_destroy (l_label))
				l_pixel_buffer := l_content.pixel_buffer
				if l_pixel_buffer /= Void then
					l_label.set_pixel_buffer (l_pixel_buffer)
				end
				l_label.set_pixmap (l_content.pixmap)
				l_label.set_text (l_content.short_title)
				if l_content.type = {SD_ENUMERATION}.tool and l_content.is_visible then
					if l_tools_count > {SD_SHARED}.zone_navigation_column_count then
						l_tools_count := 1
						add_new_column (False)
					end
					tools_column.extend (l_label)
					l_tools_count := l_tools_count + 1
					if l_first_tool_label = Void then
						l_first_tool_label := l_label
					end
					l_last_tool_label := l_label
				elseif l_content.type = {SD_ENUMERATION}.editor and l_content.is_visible then
					if l_files_count > {SD_SHARED}.zone_navigation_column_count then
						l_files_count := 1
						add_new_column (True)
					end
					l_files_count := l_files_count + 1
					files_column.extend (l_label)
					if l_pass_first_editor and then not l_pass_second_editor then
						focus_label (l_label)
						l_pass_second_editor := True
					end
					if not l_pass_first_editor then
						l_first_label := l_label
						l_pass_first_editor := True
					end
					l_last_label := l_label
				else
					check only_three_type: l_content.is_visible implies l_content.type = {SD_ENUMERATION}.place_holder end
				end

				l_contents.forth
			end

			if l_first_label = Void then
				-- There is no editor label
				if l_last_tool_label /= Void and then is_shift_pressed then
					focus_label (l_last_tool_label)
				elseif l_first_tool_label /= Void then
					focus_label (l_first_tool_label)
				end
				if l_first_tool_label = Void then
					-- There is no label at all.
					disable_sensitive
				end
			else
				if l_pass_first_editor and then not l_pass_second_editor then
					focus_label (l_first_label)
				elseif is_shift_pressed then
					focus_label (l_last_label)
				end
			end

			init_focued_lable := selected_label

			set_all_items_wrap

			compute_all_sizes
		end

	compute_all_sizes is
			-- Let all tool bars compute them minimun sizes.
		local
			l_maximum, l_temp: INTEGER
		do
			if is_sensitive then
				l_maximum := compute_all_sizes_imp (all_files_column)
				l_temp := compute_all_sizes_imp (all_tools_column)
				if l_maximum < l_temp then
					l_maximum := l_temp
				end
				set_columns_minimum_width (all_files_column, l_maximum)
				set_columns_minimum_width (all_tools_column, l_maximum)

				set_scroll_area_item_size (internal_files_box, scroll_area_files)
				set_scroll_area_item_size (internal_tools_box, scroll_area_tools)
			else
				-- There is no label to show at all.

			end
		end

	set_scroll_area_item_size (a_box: EV_BOX; a_scroll_area: EV_SCROLLABLE_AREA) is
			-- Set scroll area item minimum size.
		require
			not_void: a_box /= Void
			not_void: a_scroll_area /= Void
		do
			if a_box.minimum_height + 15 > internal_max_height then

				a_scroll_area.set_minimum_height (internal_max_height + 15)
			else
				a_scroll_area.set_minimum_height (a_box.minimum_height + 15)
			end

			if a_box.minimum_width > internal_max_width then
				a_scroll_area.set_minimum_width (internal_max_width)
			else
				a_scroll_area.set_minimum_width (a_box.minimum_width)
			end
		end

	set_columns_minimum_width (a_columns: ARRAYED_LIST [SD_TOOL_BAR]; a_minimum_width: INTEGER_32) is
			-- Set minimum width of `a_column' to `a_minimum_width'
		require
			not_void: a_columns /= Void
			valid: a_minimum_width > 0
		do
			from
				a_columns.start
			until
				a_columns.after
			loop
				a_columns.item.set_minimum_width (a_minimum_width)
				a_columns.forth
			end
		end

	compute_all_sizes_imp (a_columns: ARRAYED_LIST [SD_TOOL_BAR]): INTEGER is
			-- Compute all column sizes.
			-- Result is maximum size
		require
			not_void: a_columns /= Void
		local
			l_tool_bar: SD_TOOL_BAR
		do
			from
				a_columns.start
			until
				a_columns.after
			loop
				l_tool_bar := a_columns.item
				l_tool_bar.compute_minimum_size
				if Result < l_tool_bar.minimum_width then
					Result := l_tool_bar.minimum_width
				end
				a_columns.forth
			end
		end

	all_tools_column: ARRAYED_LIST [SD_TOOL_BAR] is
			-- All tools columns.
		local
			l_tool_bar: SD_TOOL_BAR
		do
			create Result.make (1)
			from
				internal_tools_box.start
			until
				internal_tools_box.after
			loop
				l_tool_bar ?= internal_tools_box.item
				check not_void: l_tool_bar /= Void end
				Result.extend (l_tool_bar)
				internal_tools_box.forth
			end
		ensure
			not_void: Result /= Void
		end

	all_files_column: ARRAYED_LIST [SD_TOOL_BAR] is
			-- All file columns.
		local
			l_tool_bar: SD_TOOL_BAR
		do
			create Result.make (1)
			from
				internal_files_box.start
			until
				internal_files_box.after
			loop
				l_tool_bar ?= internal_files_box.item
				check not_void: l_tool_bar /= Void end
				Result.extend (l_tool_bar)
				internal_files_box.forth
			end
		ensure
			not_void: Result /= Void
		end

	add_new_column (a_is_file: BOOLEAN) is
			-- Add a new column
		do
			if a_is_file then
				create files_column.make
				internal_files_box.extend (files_column)
				internal_files_box.disable_item_expand (files_column)
			else
				create tools_column.make
				internal_tools_box.extend (tools_column)
				internal_tools_box.disable_item_expand (tools_column)
			end
		end

	set_all_items_wrap is
			-- Set all items wrap.
			-- And set items width to maximum width of all items.
		local
			l_items: ARRAYED_LIST [SD_TOOL_BAR_ITEM]
			l_count: INTEGER
		do
			-- Tool items
			l_items := tools_column.items
			from
				l_items.start
				l_count := 1
			until
				l_items.after
			loop
				if l_count >= {SD_SHARED}.Zone_navigation_column_count then
					l_items.item.set_wrap (True)
					l_count := 1
				end
				l_count := l_count + 1
				l_items.forth
			end
		end

	maximum_item_width: INTEGER is
			-- Maximum item width.
		local
			l_a_column: SD_TOOL_BAR
		do
			internal_files_box.start
			l_a_column ?= internal_files_box.item
			check not_void: l_a_column /= Void end
			Result := l_a_column.width
		end

feature -- Command

	show is
			-- Redefine
		do
			Precursor {SD_ZONE_NAVIGATION_DIALOG_IMP}
			focus_label (init_focued_lable)
		end

feature {NONE} -- Agents

	on_key_release (a_key: EV_KEY) is
			-- Handle key release.
		do
			inspect
				a_key.code
			when {EV_KEY_CONSTANTS}.key_ctrl then
				if is_sensitive then
					select_label_and_destroy (selected_label)
				else
					destroy
					ev_application.do_once_on_idle (agent (internal_docking_manager.main_window).set_focus)
				end
			when {EV_KEY_CONSTANTS}.key_shift then
				is_shift_pressed := False
			else

			end
		end

	on_key_press (a_key: EV_KEY) is
			-- Handle key press.
		local
			l_selected_label: SD_TOOL_BAR_RADIO_BUTTON
			l_next_label: SD_TOOL_BAR_RADIO_BUTTON
		do
			inspect
				a_key.code
			when {EV_KEY_CONSTANTS}.key_tab then
				l_selected_label := selected_label
				if is_shift_pressed then
					l_next_label := find_previous_label_same_type
				else
					l_next_label := find_next_label_same_type
				end
			when {EV_KEY_CONSTANTS}.key_up then
				l_selected_label := selected_label
				l_next_label := find_previous_label
			when {EV_KEY_CONSTANTS}.key_down then
				l_selected_label := selected_label
				l_next_label := find_next_label
			when {EV_KEY_CONSTANTS}.key_left then
				l_selected_label := selected_label
				l_next_label := find_label_at_left_side
			when {EV_KEY_CONSTANTS}.key_right then
				l_selected_label := selected_label
				l_next_label := find_label_at_right_side
			when {EV_KEY_CONSTANTS}.key_shift then
				is_shift_pressed := True
			else

			end

			if l_next_label /= Void then
				focus_label (l_next_label)
				if l_selected_label /= l_next_label then
					l_selected_label.disable_select
				end
			end
		end

feature {NONE} -- Implementation query

	items_count: INTEGER
			-- How many items it current dialog
		do
			Result := tools_column.items.count + files_column.items.count
		end

feature {NONE} -- Implementation command

	init_focued_lable: SD_TOOL_BAR_TOGGLE_BUTTON
			-- The first focused label setted by `add_all_content_label'

	focus_label (a_label: SD_TOOL_BAR_TOGGLE_BUTTON) is
			-- Enable a_label's focus color.
		require
			not_void: a_label /= Void
		local
			l_selected_index: INTEGER
			l_target_x: INTEGER
			l_scroll_area: EV_SCROLLABLE_AREA
			l_left_in, l_right_in: BOOLEAN
			l_is_selected_label_in_files: BOOLEAN
			l_maximum_scroll_position: REAL
			l_all_items: ARRAYED_LIST [SD_TOOL_BAR_ITEM]
			l_toggle: SD_TOOL_BAR_TOGGLE_BUTTON
		do
			from
				-- Although toggle button will disable other buttons in the same tool bar,
				-- but it can't diable buttoons in other tool bars.
				l_all_items := all_items
				l_all_items.start
			until
				l_all_items.after
			loop
				l_toggle ?= l_all_items.item
				if l_toggle /= Void then
					l_toggle.disable_select
				end
				l_all_items.forth
			end

			a_label.enable_select
			set_text_info (a_label)

			l_selected_index := selected_item_index
			l_is_selected_label_in_files := is_seleted_label_in_files

			l_target_x := (l_selected_index // {SD_SHARED}.zone_navigation_column_count) * maximum_item_width
			if l_is_selected_label_in_files then
				l_scroll_area := scroll_area_files
			else
				l_scroll_area := scroll_area_tools
			end

			l_left_in := l_scroll_area.x_offset <= l_target_x
			l_right_in := l_target_x + maximum_item_width <= l_scroll_area.x_offset + l_scroll_area.width
			if not (l_left_in and l_right_in) then
				l_maximum_scroll_position := l_scroll_area.item.width * (1 - (l_scroll_area.width / l_scroll_area.item.width))
				l_scroll_area.set_x_offset (l_target_x.min (l_maximum_scroll_position.rounded))
			end
		end

	set_text_info (a_item: SD_TOOL_BAR_ITEM) is
			-- Set bottom texts which are informations about a content.
		require
			not_void: a_item /= Void
		local
			l_content: SD_CONTENT
			l_env: EV_ENVIRONMENT
		do
			l_content ?= a_item.data
			check not_void: l_content /= Void end
			full_title.set_text (l_content.long_title)
			if l_content.description = Void then
				description.set_text (internal_shared.interface_names.Zone_navigation_no_description_available)
			else
				description.set_text (l_content.description)
			end
			if l_content.detail = Void then
				detail.set_text (internal_shared.interface_names.Zone_navigation_no_detail_available)
			else
				-- We have to do it in idle actions, otherwise dialog minimum height will not correct.
				create l_env
				l_env.application.do_once_on_idle (agent check_before_set_text (l_content.detail.as_string_8))
			end
		end

	selected_item_index: INTEGER is
			-- Selected item index
		local
			l_selected: SD_TOOL_BAR_ITEM
			l_all_items: like all_items_in_part
		do
			l_selected := selected_label
			l_all_items := all_items_in_part (is_seleted_label_in_files)
			Result := l_all_items.index_of (l_selected, 1)
		ensure
			valid: Result /= 0
		end

	select_label_and_destroy (a_label: SD_TOOL_BAR_ITEM) is
			-- Select `a_label' and destroy Current.
		require
			not_void: a_label /= Void
		local
			l_content: SD_CONTENT
		do
			if a_label /= Void then
				l_content ?= a_label.data
				check not_void: l_content /= Void end
			end
			-- If we call set_focus immediately, destroy will make Current get focus.
			destroy
			if l_content /= Void then
				l_content.set_focus
			end
		end

	find_label_at_right_side: SD_TOOL_BAR_RADIO_BUTTON is
			-- Find label at right.
		require
			has_label: all_items.count > 0
		local
			l_selected_item: SD_TOOL_BAR_ITEM
			l_current_list, l_side_list: ARRAYED_LIST [SD_TOOL_BAR_ITEM]
			l_selected_index, l_result_index, l_balance: INTEGER
			l_selected_item_in_files: BOOLEAN
		do
			l_selected_item := selected_label
			l_selected_item_in_files := is_seleted_label_in_files
			l_current_list := all_items_in_part (l_selected_item_in_files)

			l_selected_index := l_current_list.index_of (l_selected_item, 1)
			l_balance := l_current_list.count \\ {SD_SHARED}.zone_navigation_column_count

			if l_selected_index <= l_current_list.count - l_balance then
				-- Not in the last column
				l_result_index := l_selected_index + {SD_SHARED}.zone_navigation_column_count
				if l_result_index > l_current_list.count then
					l_result_index := l_current_list.count
				end
				Result ?= l_current_list.i_th (l_result_index)
			else
				-- In the last column, we should go to other part
				l_result_index := l_selected_index \\ {SD_SHARED}.zone_navigation_column_count
				l_side_list := all_items_in_part (not l_selected_item_in_files)
				if l_side_list.count > 0 then
					if l_result_index > l_side_list.count then
						l_result_index := l_side_list.count
					end
					Result ?= l_side_list.i_th (l_result_index)
				else
					Result ?= l_current_list.i_th (l_result_index)
				end

			end
		ensure
			not_void: Result /= Void
		end

	find_label_at_left_side: SD_TOOL_BAR_RADIO_BUTTON is
			-- Find label which is at left side.
		require
			has_label: all_items.count > 0
		local
			l_selected_item: SD_TOOL_BAR_ITEM
			l_current_list, l_side_list: ARRAYED_LIST [SD_TOOL_BAR_ITEM]
			l_selected_index, l_result_index, l_balance: INTEGER
			l_selected_item_in_files: BOOLEAN
		do
			l_selected_item := selected_label
			l_selected_item_in_files := is_seleted_label_in_files
			l_current_list := all_items_in_part (l_selected_item_in_files)

			l_selected_index := l_current_list.index_of (l_selected_item, 1)

			if l_selected_index > {SD_SHARED}.zone_navigation_column_count then
				-- Not in the first column
				l_result_index := l_selected_index - {SD_SHARED}.zone_navigation_column_count
				if l_result_index > l_current_list.count then
					l_result_index := l_current_list.count
				end
				Result ?= l_current_list.i_th (l_result_index)
			else
				-- In the first column, we should go to other part
				l_side_list := all_items_in_part (not l_selected_item_in_files)

				if l_side_list.count > 0 then
					-- Go to the right side of the other list
					l_balance := l_side_list.count \\ {SD_SHARED}.zone_navigation_column_count
					l_result_index := l_side_list.count - {SD_SHARED}.zone_navigation_column_count + ({SD_SHARED}.zone_navigation_column_count - l_balance) + l_selected_index
					if l_result_index > l_side_list.count then
						l_result_index := l_side_list.count
					end

					Result ?= l_side_list.i_th (l_result_index)
				else
					l_balance := l_current_list.count \\ {SD_SHARED}.zone_navigation_column_count
					l_result_index := l_current_list.count - {SD_SHARED}.zone_navigation_column_count + ({SD_SHARED}.zone_navigation_column_count - l_balance) + l_selected_index
					if l_result_index > l_current_list.count then
						l_result_index := l_current_list.count
					end

					Result ?= l_current_list.i_th (l_result_index)
				end

			end
		ensure
			not_void: Result /= Void
		end

	find_next_label_same_type: SD_TOOL_BAR_RADIO_BUTTON is
			-- Find next label which is same type.
		require
			has_label: items_count > 0
		local
			l_selected_label: SD_TOOL_BAR_RADIO_BUTTON
			l_items: ARRAYED_LIST [SD_TOOL_BAR_ITEM]
		do
			l_selected_label := selected_label
			l_items := all_items_in_part (is_seleted_label_in_files)

			from
				l_items.start
			until
				l_items.after
			loop
				if l_items.item = l_selected_label then
					if not l_items.islast then
						Result ?= l_items.i_th (l_items.index + 1)
					else
						Result ?= l_items.first
					end
				end
				l_items.forth
			end
		ensure
			not_void: Result /= Void
		end

	find_previous_label_same_type: SD_TOOL_BAR_RADIO_BUTTON is
			-- Find previous label which is same type.
		require
			has_label: items_count > 0
		local
			l_selected_label: SD_TOOL_BAR_RADIO_BUTTON
			l_items: ARRAYED_LIST [SD_TOOL_BAR_ITEM]
		do
			l_selected_label := selected_label
			l_items := all_items_in_part (is_seleted_label_in_files)

			from
				l_items.finish
			until
				l_items.before
			loop
				if l_items.item = l_selected_label then
					if not l_items.isfirst then
						Result ?= l_items.i_th (l_items.index - 1)
					else
						Result ?= l_items.last
					end
				end
				l_items.back
			end
		ensure
			not_void: Result /= Void
		end

	find_previous_label: SD_TOOL_BAR_RADIO_BUTTON is
			-- Find previous label.
		require
			has_label: items_count > 0
		local
			l_selected_label: SD_TOOL_BAR_RADIO_BUTTON
			l_items: ARRAYED_LIST [SD_TOOL_BAR_ITEM]
			l_list: ARRAYED_LIST [SD_TOOL_BAR_ITEM]
		do
			l_selected_label := selected_label
			l_items := all_items_in_part (is_seleted_label_in_files)

			from
				l_items.finish
			until
				l_items.before
			loop
				if l_items.item = l_selected_label then
					if not l_items.isfirst then
						Result ?= l_items.i_th (l_items.index - 1)
					else
						l_list := all_items_in_part (not is_seleted_label_in_files)
						if not l_list.is_empty then
							Result ?= l_list.last
						else
							Result ?= l_items.last
						end

					end
				end
				l_items.back
			end
		ensure
			not_void: Result /= Void
		end

	find_next_label: SD_TOOL_BAR_RADIO_BUTTON is
			-- Find next label.
		require
			has_label: items_count > 0
		local
			l_selected_label: SD_TOOL_BAR_RADIO_BUTTON
			l_items: ARRAYED_LIST [SD_TOOL_BAR_ITEM]
			l_list: ARRAYED_LIST [SD_TOOL_BAR_ITEM]
		do
			l_selected_label := selected_label
			l_items := all_items_in_part (is_seleted_label_in_files)

			from
				l_items.start
			until
				l_items.after
			loop
				if l_items.item = l_selected_label then
					if not l_items.islast then
						Result ?= l_items.i_th (l_items.index + 1)
					else
						l_list := all_items_in_part (not is_seleted_label_in_files)
						if not l_list.is_empty then
							Result ?= l_list.first
						else
							Result ?= l_items.first
						end

					end
				end
				l_items.forth
			end
		ensure
			not_void: Result /= Void
		end

	all_items: ARRAYED_LIST [SD_TOOL_BAR_ITEM] is
			-- All items
			-- Items order is from top -> bottom, left -> right.
		do
			create Result.make (30)
			Result.append (all_items_in_part (False))
			Result.append (all_items_in_part (True))
		end

	all_items_in_part (a_is_file: BOOLEAN): ARRAYED_LIST [SD_TOOL_BAR_ITEM] is
			-- All file items if `a_is_file'
			-- Item order is from top -> bottom, left -> right.
		local
			l_columns: ARRAYED_LIST [SD_TOOL_BAR]
		do
			if a_is_file then
				l_columns := all_files_column
			else
				l_columns := all_tools_column
			end

			from
				l_columns.start
				create Result.make (30)
			until
				l_columns.after
			loop
				Result.append (l_columns.item.items)
				l_columns.forth
			end

		ensure
			not_void: Result /= Void
		end

	selected_label: SD_TOOL_BAR_RADIO_BUTTON is
			-- Current selected label
		require
			has_label: is_sensitive
		local
			l_items: ARRAYED_LIST [SD_TOOL_BAR_ITEM]
			l_item: SD_TOOL_BAR_RADIO_BUTTON
			l_all_columns: ARRAYED_LIST [SD_TOOL_BAR]
		do
			from
				l_all_columns := all_files_column
				l_all_columns.start
			until
				l_all_columns.after or Result /= Void
			loop
				from
					l_items := l_all_columns.item.items
					l_items.start
				until
					l_items.after or Result /= Void
				loop
					l_item ?= l_items.item
					check not_void: l_item /= Void end
					if l_item.is_selected then
						Result := l_item
						is_seleted_label_in_files := True
					end
					l_items.forth
				end
				l_all_columns.forth
			end

			if Result = Void then
				from
					l_all_columns := all_tools_column
					l_all_columns.start
				until
					l_all_columns.after or Result /= Void
				loop
					from
						l_items := l_all_columns.item.items
						l_items.start
					until
						l_items.after or Result /= Void
					loop
						l_item ?= l_items.item
						check not_void: l_item /= Void end
						if l_item.is_selected then
							Result := l_item
							is_seleted_label_in_files := False
						end
						l_items.forth
					end
					l_all_columns.forth
				end
			end
		ensure
			not_void: Result /= Void
		end

	check_before_set_text (a_tip: STRING) is
			-- call `set_text' if possible.
		do
			if not is_destroyed then
				set_text (a_tip)
			end
		end

	is_seleted_label_in_files: BOOLEAN
			-- If selected label in files group?
			-- Oterwise it's in tools group.

	is_shift_pressed: BOOLEAN
			-- If shift key pressed?

	internal_docking_manager: SD_DOCKING_MANAGER
			-- Docking manager which Current belong to.

	internal_max_width: INTEGER is 400
			-- Max width.

	internal_max_height: INTEGER is 300
			-- Max height

	internal_max_item_width: INTEGER is 161
			-- Max width of a tool bar item which represent a SD_CONTENT.

feature {NONE} -- Copied from Eiffel Build project GB_TIP_OF_THE_DAY_DIALOG

	set_text (tip: STRING) is
			-- Display `tip' as a wrapped text within `detail'.
			-- Replace all '%N' characters as spaces.
		local
			counter: INTEGER
			font: EV_FONT
			current_width: INTEGER
			last_string: STRING
			temp_string: STRING
			modified_tip: STRING
			lines: ARRAYED_LIST [STRING]
			start_pos: INTEGER
			output: STRING
			maximum_string_width: INTEGER
			all_space_indexes: ARRAYED_LIST [INTEGER]
		do
			create all_space_indexes.make (20)
			create lines.make (4)
			font := detail.font
			modified_tip := tip.twin
			modified_tip.replace_substring_all ("%N", " ")
			modified_tip.append_character (' ')
			maximum_string_width := width - 25

				-- Set up all space indexes which stores the index of each space in the
				-- text, as these are the wrapping criterion.
				-- Note that if a word is contained that is longer than the width of the label,
				-- this will probable lead to problems. No attempt to prevent this is made in the code.
			from
				counter := 1
			until
				counter > modified_tip.count
			loop
				if modified_tip.item (counter).is_equal(Operating_environment.directory_separator) then
					all_space_indexes.extend (counter)
				end
				counter := counter + 1
			end

				-- Perform calculations to determine where wrapping must occur.
			from
				start_pos := 1
				counter := 1
			until
				counter > all_space_indexes.count or counter < 1
			loop
				from
					current_width := 0
				until
					current_width > maximum_string_width or
					counter > all_space_indexes.count or counter < 1
				loop

					temp_string := modified_tip.substring (start_pos, all_space_indexes.i_th (counter) - 1)
					current_width := font.string_width (temp_string)
					if current_width <= maximum_string_width then
						last_string := temp_string
						counter := counter + 1
					else
						counter := counter - 1
					end
				end
				if all_space_indexes.valid_index (counter) then
					start_pos := all_space_indexes.i_th (counter) + 1
				end
				if lines.count = 0 and last_string = Void and counter = 0 then
					-- Only one line which can't be wrapped
					lines.extend (temp_string)
				else
					lines.extend (last_string)
				end
			end

			-- Now create and set the text on the label
			output := ""
			from
				lines.start
			until
				lines.off
			loop
				output.append (lines.item)
				if lines.index < lines.count then
					output.append_character (Operating_environment.directory_separator)
					output.append_character ('%N')
				end
				lines.forth
			end

			detail.set_text (output)
		end

invariant
	internal_docking_manager_not_void: internal_docking_manager /= Void

indexing
	library:	"SmartDocking: Library of reusable components for Eiffel."
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"

end -- class SD_ZONE_NAVIGATION_DIALOG

