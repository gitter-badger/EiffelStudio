note
	description: "EIS list of a given class."
	status: "See notice at end of class."
	legal: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	ES_EIS_CLASS_VIEW

inherit
	ES_EIS_COMPONENT_VIEW [CLASS_I]
		rename
			component as class_i
		redefine
			background_color_of_entry,
			create_new_entry,
			delete_selected_entries,
			entry_editable,
			component_editable,
			class_editor_token_for_target,
			feature_editor_token_for_target,
			on_name_changed,
			on_protocol_changed,
			on_source_changed,
			on_tags_changed,
			on_parameters_changed,
			compute_grid_rows,
			on_override_changed,
			override_item_from_eis_entry
		end

create
	make

feature {NONE} -- Initialization

	make (a_class: CLASS_I; a_eis_grid: ES_EIS_ENTRY_GRID)
			-- Initialized with `a_conf_notable' and `a_eis_grid'.
		require
			a_class_not_void: a_class /= Void
			a_eis_grid_not_void: a_eis_grid /= Void
			a_eis_grid_not_destroyed: not a_eis_grid.is_destroyed
		do
			class_i := a_class
			eis_grid := a_eis_grid
				-- Allow new entry addition.
			new_entry_possible := True
		end

feature -- Operation

	create_new_entry
			-- Create new EIS entry in `class_i'.
		local
			l_class_modifier: ES_EIS_CLASS_MODIFIER
		do
			create l_class_modifier.make (class_i)
			if l_class_modifier.is_modifiable then
				l_class_modifier.prepare
				if l_class_modifier.is_ast_available then
						-- Current code is ready to insert note clause.
					l_class_modifier.new_empty_class_entry
					l_class_modifier.commit

					if
						attached l_class_modifier.last_create_entry as lt_entry and then
						attached id_solution.id_of_class (class_i.config_class) as lt_id
					then
							-- Register the new created entry in the storage.
						storage.register_entry (lt_entry, lt_id, class_i.date)

							-- Refresh entry list to display the new entry which is appended at the end.
						if extracted_entries = Void then
							create extracted_entries.make (1)
						end
						extracted_entries.force_last (lt_entry)
						refresh_grid_without_sorting
						update_tree_item
					end
				else
					prompts.show_error_prompt (interface_names.l_syntax_error, Void, Void)
				end
			else
				prompts.show_error_prompt (interface_names.l_class_is_not_editable, Void, Void)
			end
		end

	create_new_entry_for_feature (a_feature: E_FEATURE)
			-- Create new EIS entry in `class_i' for `a_feature'.
		local
			l_feature_modifier: ES_EIS_FEATURE_MODIFIER
		do
			create l_feature_modifier.make (a_feature, class_i)
			if l_feature_modifier.is_modifiable then
				l_feature_modifier.prepare
				if l_feature_modifier.is_ast_available then
						-- Current code is ready to insert note clause.
					l_feature_modifier.new_empty_feature_entry
					l_feature_modifier.commit

					if
						attached l_feature_modifier.last_created_entry as lt_entry and then
						attached id_solution.id_of_feature (a_feature) as lt_id
					then
							-- Register the new created entry in the storage.
						storage.register_entry (lt_entry, lt_id, class_i.date)

							-- Refresh entry list to display the new entry which is appended at the end.
						if extracted_entries = Void then
							create extracted_entries.make (1)
						end
						extracted_entries.force_last (lt_entry)
						refresh_grid_without_sorting
						update_tree_item
					end
				else
					prompts.show_error_prompt (interface_names.l_syntax_error, Void, Void)
				end
			else
				prompts.show_error_prompt (interface_names.l_class_is_not_editable, Void, Void)
			end
		end

	delete_selected_entries
			-- <precursor>
		local
			l_selected_rows: ARRAYED_LIST [EV_GRID_ROW]
			l_request: ES_DISCARDABLE_QUESTION_PROMPT
			l_cancelled, l_removed: BOOLEAN
		do
			if component_editable then
				create l_request.make_standard_with_cancel (interface_names.l_confirm_delete_selected_items,
					interface_names.l_always_delete_without_asking,
					create {ES_BOOLEAN_PREFERENCE_SETTING}.make (preferences.dialog_data.confirm_delete_eis_entries_preference, True))
				l_request.set_title (interface_names.t_eiffelstudio_question)
				l_request.show_on_active_window
				if
					l_request.dialog_result = dialog_buttons.cancel_button or else
					l_request.dialog_result = dialog_buttons.no_button
				then
					l_cancelled := True
				end

				if not l_cancelled then
					l_selected_rows := eis_grid.selected_rows
					from
						l_selected_rows.start
					until
						l_selected_rows.after
					loop
						if attached {EIS_ENTRY} l_selected_rows.item_for_iteration.data as lt_entry then
							if entry_editable (lt_entry, False) then
								remove_entry (lt_entry)
								extracted_entries.remove (l_selected_rows.item_for_iteration.index)
								l_removed := True
							end
						end
						l_selected_rows.forth
					end
					if l_removed then
						rebuild_and_refresh_grid
						update_tree_item
					end
				end
			else
				prompts.show_error_prompt (interface_names.l_item_selected_is_not_writable, Void, Void)
			end
		end

feature -- Querry

	component_editable: BOOLEAN
			-- Is component editable?
		do
			Result := not class_i.is_read_only
		end

feature {NONE} -- Initialization

	compute_grid_rows
			-- Compute number of grid rows
		do
			Precursor {ES_EIS_COMPONENT_VIEW}
			rebuild_editable_cache
		end

feature {NONE} -- Access

	entry_editable (a_entry: EIS_ENTRY; a_use_cache: BOOLEAN): BOOLEAN
			-- If `a_entry' is editable through current view?
		local
			l_type: NATURAL
			l_feature: E_FEATURE
			l_modifier: ES_EIS_CLASS_MODIFIER
			l_editable_cache: like editable_cache
			l_class_i: like class_i
		do
			if not a_entry.is_auto and then attached a_entry.target_id as lt_id then
				l_class_i := class_i
				l_type := id_solution.most_possible_type_of_id (lt_id)
				if l_type = id_solution.class_type then
					if attached {CLASS_I} id_solution.class_of_id (lt_id) as lt_class then
						Result := (l_class_i = lt_class)
					end
				elseif l_type = id_solution.feature_type then
					l_feature := id_solution.feature_of_id (lt_id)
					if l_feature /= Void then
						Result := l_feature.written_class.lace_class = l_class_i
					end
				end
				if Result then
					if a_use_cache then
							-- Cache the results of `entry_editable' to improve performance.
						l_editable_cache := editable_cache
						if l_editable_cache = Void then
							rebuild_editable_cache
							l_editable_cache := editable_cache
						end
						l_editable_cache.search (l_class_i)
						if l_editable_cache.found then
							Result := l_editable_cache.found_item
						else
							create l_modifier.make (l_class_i)
							l_modifier.prepare
							Result := l_modifier.is_modifiable and then l_modifier.is_ast_available
							l_editable_cache.force (Result, l_class_i)
						end
					else
						create l_modifier.make (l_class_i)
						l_modifier.prepare
						Result := l_modifier.is_modifiable and then l_modifier.is_ast_available
					end
				end
			end
		end

feature {NONE} -- Class modification

	modify_entry_in_feature (a_old_entry, a_new_entry: EIS_ENTRY; a_feature: E_FEATURE)
			-- Modify `a_old_entry' with `a_new_entry' in `a_feature'.
		require
			a_old_entry_not_void: a_old_entry /= Void
			a_new_entry_not_void: a_new_entry /= Void
			a_feature_not_void: a_feature /= Void
			a_old_entry_editable: entry_editable (a_old_entry, False)
		local
			l_feature_modifier: ES_EIS_FEATURE_MODIFIER
		do
			create l_feature_modifier.make (a_feature, class_i)
			l_feature_modifier.prepare
			if l_feature_modifier.is_ast_available then
				l_feature_modifier.modify_feature_entry (a_old_entry, a_new_entry)
				l_feature_modifier.commit
			else
				prompts.show_error_prompt (interface_names.l_syntax_error, Void, Void)
			end
		end

	modify_entry_in_class (a_old_entry, a_new_entry: EIS_ENTRY; a_class: CLASS_I)
			-- Modify `a_old_entry' with `a_new_entry' in `a_class'.
		require
			a_old_entry_not_void: a_old_entry /= Void
			a_new_entry_not_void: a_new_entry /= Void
			a_class_not_void: a_class /= Void
			a_old_entry_editable: entry_editable (a_old_entry, False)
		local
			l_class_modifier: ES_EIS_CLASS_MODIFIER
		do
			create l_class_modifier.make (a_class)
			l_class_modifier.prepare
			if l_class_modifier.is_ast_available then
				l_class_modifier.modify_class_entry (a_old_entry, a_new_entry)
				l_class_modifier.commit
			else
				prompts.show_error_prompt (interface_names.l_syntax_error, Void, Void)
			end
		end

	remove_entry (a_entry: EIS_ENTRY)
			-- Remove entry in component.
		require
			a_entry_not_void: a_entry /= Void
			a_entry_editable: entry_editable (a_entry, False)
		do
			if attached {E_FEATURE} id_solution.feature_of_id (a_entry.target_id) as lt_feature then
				remove_entry_in_feature (a_entry, lt_feature)
				storage.deregister_entry (a_entry, component_id)
			elseif attached {CLASS_I} id_solution.class_of_id (a_entry.target_id) as lt_class then
				remove_entry_in_class (a_entry, lt_class)
				storage.deregister_entry (a_entry, component_id)
			end
		end

	remove_entry_in_feature (a_entry: EIS_ENTRY; a_feature: E_FEATURE)
			-- Remove entry in feature.
		require
			a_entry_not_void: a_entry /= Void
			a_feature_not_void: a_feature /= Void
			a_entry_editable: entry_editable (a_entry, False)
		local
			l_feature_modifier: ES_EIS_FEATURE_MODIFIER
		do
			create l_feature_modifier.make (a_feature, class_i)
			l_feature_modifier.prepare
			if l_feature_modifier.is_ast_available then
				l_feature_modifier.remove_feature_entry (a_entry, True)
				l_feature_modifier.commit
			else
				prompts.show_error_prompt (interface_names.l_syntax_error, Void, Void)
			end
		end

	remove_entry_in_class (a_entry: EIS_ENTRY; a_class: CLASS_I)
			-- Remove entry in class.
		require
			a_entry_not_void: a_entry /= Void
			a_class_not_void: a_class /= Void
			a_entry_editable: entry_editable (a_entry, False)
		local
			l_class_modifier: ES_EIS_CLASS_MODIFIER
		do
			create l_class_modifier.make (a_class)
			l_class_modifier.prepare
			if l_class_modifier.is_ast_available then
				l_class_modifier.remove_class_entry (a_entry, True)
				l_class_modifier.commit
			else
				prompts.show_error_prompt (interface_names.l_syntax_error, Void, Void)
			end
		end

	write_entry_in_feature (a_entry: EIS_ENTRY; a_feature: E_FEATURE)
			-- Write entry in feature.
		require
			a_entry_not_void: a_entry /= Void
			a_feature_not_void: a_feature /= Void
		local
			l_feature_modifier: ES_EIS_FEATURE_MODIFIER
		do
			create l_feature_modifier.make (a_feature, class_i)
			l_feature_modifier.prepare
			if l_feature_modifier.is_modifiable then
				if l_feature_modifier.is_ast_available then
					l_feature_modifier.write_feature_entry (a_entry)
					l_feature_modifier.commit
				else
					prompts.show_error_prompt (interface_names.l_syntax_error, Void, Void)
				end
			else
				prompts.show_error_prompt (interface_names.l_class_is_not_editable, Void, Void)
			end
		end

	write_entry_in_class (a_entry: EIS_ENTRY; a_class: CLASS_I)
			-- Write entry in class.
		require
			a_entry_not_void: a_entry /= Void
			a_class_not_void: a_class /= Void
		local
			l_class_modifier: ES_EIS_CLASS_MODIFIER
		do
			create l_class_modifier.make (a_class)
			l_class_modifier.prepare
			if l_class_modifier.is_modifiable then
				if l_class_modifier.is_ast_available then
					l_class_modifier.write_class_entry (a_entry)
					l_class_modifier.commit
				else
					prompts.show_error_prompt (interface_names.l_syntax_error, Void, Void)
				end
			else
				prompts.show_error_prompt (interface_names.l_class_is_not_editable, Void, Void)
			end
		end

feature {NONE} -- Target token

	class_editor_token_for_target (a_item: CLASS_I; a_editable: BOOLEAN): ES_GRID_LIST_ITEM
			-- Create editor token for loaction accordingly.
		do
			if a_editable and a_item.is_compiled then
				Result := class_feature_editor_token_for_target (a_item, a_editable)
			else
				Result := Precursor {ES_EIS_COMPONENT_VIEW}(a_item, a_editable)
			end
		end

	feature_editor_token_for_target (a_item: E_FEATURE; a_name: STRING; a_editable: BOOLEAN): ES_GRID_LIST_ITEM
			-- Create editor token item for loaction accordingly.
		do
			if a_editable and a_item /= Void then
				Result := class_feature_editor_token_for_target (a_item, a_editable)
			elseif a_name /= Void then
				Result := Precursor {ES_EIS_COMPONENT_VIEW}(a_item, a_name, a_editable)
			end
		end

	class_feature_editor_token_for_target (a_item: ANY; a_editable: BOOLEAN): ES_GRID_LIST_ITEM
			-- Create editor token item for loaction accordingly.
		local
			l_editable_item: EB_GRID_LISTABLE_CHOICE_ITEM
			l_line: EIFFEL_EDITOR_LINE
			l_list: ARRAYED_LIST [EB_GRID_LISTABLE_CHOICE_ITEM_ITEM]
			l_item_item: EB_GRID_LISTABLE_CHOICE_ITEM_ITEM
			l_e_com: EB_GRID_EDITOR_TOKEN_COMPONENT
			l_classc: CLASS_C
			l_written_in_features: LIST [E_FEATURE]
			l_class: CLASS_I
			l_feature: E_FEATURE
		do
			if a_editable then
				l_classc := class_i.compiled_class
				l_written_in_features := l_classc.written_in_features

				l_editable_item := new_listable_item
				l_editable_item.set_choice_list_key_press_action (agent tab_to_next)

					-- Fill entries of list
				create l_list.make (l_written_in_features.count + 1)
				token_writer.new_line
				token_writer.add_class (class_i)
				l_line := token_writer.last_line
				create l_e_com.make (l_line.content, 0)
				create l_item_item.make (create {ARRAYED_LIST [ES_GRID_ITEM_COMPONENT]}.make_from_array (<<class_pixmap_component (class_i), l_e_com>>))
				l_item_item.set_data (class_i)
				l_list.extend (l_item_item)
				l_class ?= a_item
				if l_class /= Void and then l_class.is_equal (class_i) then
					l_editable_item.set_list_item (l_item_item)
				else
					l_feature ?= a_item
				end

				from
					l_written_in_features.start
				until
					l_written_in_features.after
				loop
					if (attached {E_FEATURE} l_written_in_features.item_for_iteration as lt_feature and then not lt_feature.is_attribute and then not lt_feature.is_constant) then
						token_writer.new_line
						token_writer.add_sectioned_feature_name (lt_feature)
						l_line := token_writer.last_line
						create l_e_com.make (l_line.content, 0)
						create l_item_item.make (create {ARRAYED_LIST [ES_GRID_ITEM_COMPONENT]}.make_from_array (<<feature_pixmap_component (lt_feature), l_e_com>>))
						l_item_item.set_data (lt_feature)
						l_list.extend (l_item_item)
						if l_feature /= Void and then l_feature.is_equal (lt_feature) then
							l_editable_item.set_list_item (l_item_item)
						end
					end
					l_written_in_features.forth
				end
				l_editable_item.set_item_components (l_list)

				Result := l_editable_item
				if l_editable_item.item_components /= Void and then l_editable_item.item_components.index_set.count > 1 then
					l_editable_item.pointer_button_press_actions.force_extend (agent activate_item (l_editable_item))
					l_editable_item.set_selection_changing_action (agent on_target_changed (?, l_editable_item))
				end
			else
				create Result
			end
		ensure
			Result_not_void: Result /= Void
		end

	override_item_from_eis_entry (a_entry: EIS_ENTRY; a_editable: BOOLEAN): EV_GRID_ITEM
			-- Grid item of override from an EIS entry.
		local
			l_type: NATURAL_32
			l_item: ES_EIS_GRID_CHECKABLE_LABEL_ITEM
			l_pixmap_item: EV_GRID_LABEL_ITEM
		do
			l_type := id_solution.most_possible_type_of_id (a_entry.target_id)

			if l_type /= id_solution.class_type then
				create {EV_GRID_LABEL_ITEM}Result.make_with_text ("-")
			elseif a_entry.is_auto then
				create l_pixmap_item
				l_pixmap_item.set_pixmap (pixmaps.icon_pixmaps.information_edit_auto_node_icon)
				Result := l_pixmap_item
				Result.set_tooltip (interface_names.l_remove_auto_entry)
			else
				create l_item.make
				l_item.set_is_checked (a_entry.override)
				l_item.set_check_button_key_press_action (agent tab_to_next)
				if a_editable then
					l_item.enable_sensitive
					l_item.checked_changed_actions.extend (agent on_override_changed)
				else
					l_item.disable_sensitive
				end
				Result := l_item.grid_item
			end
		end

feature {NONE} -- Implementation

	new_extractor: ES_EIS_EXTRACTOR
			-- Create extractor
		do
			create {ES_EIS_CLASS_EXTRACTOR}Result.make (class_i, True)
		end

	background_color_of_entry (a_entry: EIS_ENTRY): EV_COLOR
			-- Background color of `a_entry'
		do
			if
				attached a_entry.target_id as lt_id and then
				(lt_id.is_equal (component_id) or id_solution.most_possible_type_of_id (lt_id) = id_solution.feature_type)
			then
					-- Default background color without change
			else
				Result := colors.stock_colors.default_background_color
			end
		end

	component_id: STRING
			-- Component ID
		do
			if internal_component_id = Void then
				if attached computed_component_id as lt_id then
					Result := lt_id
				end
			else
				if attached internal_component_id as lt_id1 then
					Result := lt_id1
				end
			end
		ensure
			Result_not_void: Result /= Void
		end

	computed_component_id: detachable STRING
			-- Compute component id
		do
			Result := id_solution.id_of_class (class_i.config_class)
		end

	internal_component_id: detachable STRING;
			-- Buffered component ID

	set_entry_override (a_entry: EIS_ENTRY; a_enable: BOOLEAN)
			-- Disable `override' of a `a_entry', apply it in the code.
		require
			a_entry_not_void: a_entry /= Void
			a_entry_editable: entry_editable (a_entry, False)
		local
			l_done: BOOLEAN
			l_new_entry: EIS_ENTRY
		do
			if a_entry.override /= a_enable then
				if attached {E_FEATURE} id_solution.feature_of_id (a_entry.target_id) as lt_feature then
					if attached a_entry.twin as lt_new_entry then
						l_new_entry := lt_new_entry
					end
					l_new_entry.set_override (a_enable)
					modify_entry_in_feature (a_entry, l_new_entry, lt_feature)
					l_done := True
				elseif attached {CLASS_I} id_solution.class_of_id (a_entry.target_id) as lt_class then
					if attached a_entry.twin as lt_new_entry1 then
						l_new_entry := lt_new_entry1
					end
					l_new_entry.set_override (a_enable)
					modify_entry_in_class (a_entry, l_new_entry, lt_class)
					l_done := True
				end
					-- Modify the source in the entry when the modification is done
				if l_done then
					storage.deregister_entry (a_entry, component_id)
					a_entry.set_override (a_enable)
					storage.register_entry (a_entry, component_id, class_i.date)
				end
			end
		end

	disable_override_all_else (a_entry: EIS_ENTRY)
			-- Disable override in all else class entries.
			-- `a_entry' is the entry to exclude.
		require
			a_entry_not_void: a_entry /= Void
		local
			i, l_count: INTEGER
			l_grid: like eis_grid
		do
			rebuild_editable_cache
			from
				i := 1
				l_grid := eis_grid
				l_count := l_grid.row_count
			until
				i > l_count
			loop
				if attached {EV_GRID_ROW}l_grid.row (i) as l_row then
					if attached {EIS_ENTRY}l_row.data as l_entry then
						if a_entry /= l_entry and then entry_editable (l_entry, TRUE) then
							set_entry_override (l_entry, False)
						end
					end
				end
				i := i + 1
			end
		end

feature {NONE} -- Editable cache

	rebuild_editable_cache
			-- Wipe out editable cache.
			-- So that `entry_editable' will compute the value freshly.
		do
			create editable_cache.make (10)
		end

	editable_cache: detachable HASH_TABLE [BOOLEAN, HASHABLE]
			-- Cache for editability of EIS entries.

feature {NONE} -- Callbacks

	on_name_changed (a_item: EV_GRID_EDITABLE_ITEM)
			-- On name changed
			-- We modify neither the referenced EIS entry when the modification is done.
		local
			l_new_entry: EIS_ENTRY
			l_done: BOOLEAN
		do
			if attached {EIS_ENTRY} a_item.row.data as lt_entry and then attached a_item.text as lt_name then
				lt_name.left_adjust
				lt_name.right_adjust
				if lt_entry.name /= Void and then lt_name.is_equal (lt_entry.name) then
						-- Do nothing when the name is not actually changed
				else
					if entry_editable (lt_entry, False) then
						if attached {E_FEATURE} id_solution.feature_of_id (lt_entry.target_id) as lt_feature then
							if attached lt_entry.twin as lt_new_entry then
								l_new_entry := lt_new_entry
							end
							l_new_entry.set_name (lt_name)
							modify_entry_in_feature (lt_entry, l_new_entry, lt_feature)
							l_done := True
						elseif attached {CLASS_I} id_solution.class_of_id (lt_entry.target_id) as lt_class then
							if attached lt_entry.twin as lt_new_entry1 then
								l_new_entry := lt_new_entry1
							end
							l_new_entry.set_name (lt_name)
							modify_entry_in_class (lt_entry, l_new_entry, lt_class)
							l_done := True
						end
							-- Modify the name in the entry when the modification is done
						if l_done then
							storage.deregister_entry (lt_entry, component_id)
							lt_entry.set_name (lt_name)
							storage.register_entry (lt_entry, component_id, class_i.date)
						end
					end
				end
			end
		end

	on_protocol_changed (a_choice_item: EB_GRID_LISTABLE_CHOICE_ITEM_ITEM; a_item: EB_GRID_LISTABLE_CHOICE_ITEM): BOOLEAN
			-- On protocol changed
			-- We modify neither the referenced EIS entry when the modification is done.
		local
			l_new_entry: EIS_ENTRY
			l_done: BOOLEAN
			l_protocol: like {EIS_ENTRY}.protocol
		do
			if attached {EIS_ENTRY} a_item.row.data as lt_entry and then attached {READABLE_STRING_GENERAL} a_choice_item.data as lt_protocol then
				create l_protocol.make_from_string_general (lt_protocol)
				l_protocol.left_adjust
				l_protocol.right_justify
				if lt_entry.protocol /= Void and then l_protocol.is_case_insensitive_equal (lt_entry.protocol)  then
						-- Do nothing when the protocol is not actually changed
				else
					if entry_editable (lt_entry, False) then
						if attached {E_FEATURE} id_solution.feature_of_id (lt_entry.target_id) as lt_feature then
							if attached lt_entry.twin as lt_new_entry then
								l_new_entry := lt_new_entry
							end
							l_new_entry.set_protocol (l_protocol)
							modify_entry_in_feature (lt_entry, l_new_entry, lt_feature)
							l_done := True
						elseif attached {CLASS_I} id_solution.class_of_id (lt_entry.target_id) as lt_class then
							if attached lt_entry.twin as lt_new_entry1 then
								l_new_entry := lt_new_entry1
							end
							l_new_entry.set_protocol (l_protocol)
							modify_entry_in_class (lt_entry, l_new_entry, lt_class)
							l_done := True
						end
							-- Modify the protocol in the entry when the modification is done
						if l_done then
							storage.deregister_entry (lt_entry, component_id)
							lt_entry.set_protocol (l_protocol)
							storage.register_entry (lt_entry, component_id, class_i.date)
							Result := True
						end
					end
				end
			end
		end

	on_source_changed (a_value: detachable STRING_32; a_item: EV_GRID_ITEM)
			-- On source changed
			-- We modify neither the referenced EIS entry when the modification is done.
		local
			l_new_entry: EIS_ENTRY
			l_done: BOOLEAN
			l_source: STRING_32
		do
			if attached {EIS_ENTRY} a_item.row.data as lt_entry and then a_value /= Void then
				create l_source.make_from_string (a_value)
				l_source.left_adjust
				l_source.right_adjust
				if lt_entry.source /= Void and then l_source.is_equal (lt_entry.source) then
						-- Do nothing when the source is not actually changed
				else
					if entry_editable (lt_entry, False) then
						if attached {E_FEATURE} id_solution.feature_of_id (lt_entry.target_id) as lt_feature then
							if attached lt_entry.twin as lt_new_entry then
								l_new_entry := lt_new_entry
							end
							l_new_entry.set_source (l_source)
							modify_entry_in_feature (lt_entry, l_new_entry, lt_feature)
							l_done := True
						elseif attached {CLASS_I} id_solution.class_of_id (lt_entry.target_id) as lt_class then
							if attached lt_entry.twin as lt_new_entry1 then
								l_new_entry := lt_new_entry1
							end
							l_new_entry.set_source (l_source)
							modify_entry_in_class (lt_entry, l_new_entry, lt_class)
							l_done := True
						end
							-- Modify the source in the entry when the modification is done
						if l_done then
							storage.deregister_entry (lt_entry, component_id)
							lt_entry.set_source (l_source)
							storage.register_entry (lt_entry, component_id, class_i.date)
						end
					end
				end
			end
		end

	on_tags_changed (a_item: EV_GRID_EDITABLE_ITEM)
			-- On tags changed
			-- We modify neither the referenced EIS entry when the modification is done.
		local
			l_new_entry: EIS_ENTRY
			l_tags: ARRAYED_LIST [STRING_32]
			l_done: BOOLEAN
		do
			if attached {EIS_ENTRY} a_item.row.data as lt_entry and then attached a_item.text as lt_tags then
				l_tags := parse_tags (lt_tags)
				l_tags.compare_objects
				if lt_entry.tags /= Void and then lt_entry.tags.is_equal (l_tags) then
						-- Do nothing when the tags is not actually changed
				else
					if entry_editable (lt_entry, False) then
						if attached {E_FEATURE} id_solution.feature_of_id (lt_entry.target_id) as lt_feature then
							if attached {EIS_ENTRY} lt_entry.twin as lt_new_entry then
								l_new_entry := lt_new_entry
							end
							l_new_entry.set_tags (l_tags)
							modify_entry_in_feature (lt_entry, l_new_entry, lt_feature)
							l_done := True
						elseif attached {CLASS_I} id_solution.class_of_id (lt_entry.target_id) as lt_class then
							if attached lt_entry.twin as lt_new_entry1 then
								l_new_entry := lt_new_entry1
							end
							l_new_entry.set_tags (l_tags)
							modify_entry_in_class (lt_entry, l_new_entry, lt_class)
							l_done := True
						end
							-- Modify the tags in the entry when the modification is done
						if l_done then
							storage.deregister_entry (lt_entry, component_id)
							if not l_tags.is_empty then
								lt_entry.set_tags (l_tags)
							else
								lt_entry.set_tags (Void)
							end
							storage.register_entry (lt_entry, component_id, class_i.date)
						end
					end
				end
			end
		end

	on_override_changed (a_item: EV_GRID_CHECKABLE_LABEL_ITEM)
			-- On override changed
		local
			l_enabled: BOOLEAN
		do
			if attached {EIS_ENTRY} a_item.row.data as lt_entry then
				l_enabled := a_item.is_checked
				if lt_entry.override = l_enabled then
						-- Do nothing when the source is not actually changed
				else
					if entry_editable (lt_entry, False) then
						set_entry_override (lt_entry, l_enabled)
						if l_enabled then
							disable_override_all_else (lt_entry)
						end
						rebuild_and_refresh_grid
					end
				end
			end
		end

	on_parameters_changed (a_item: EV_GRID_EDITABLE_ITEM)
			-- On parameters changed
			-- We modify neither the referenced EIS entry when the modification is done.
		local
			l_new_entry: EIS_ENTRY
			l_parameters: STRING_TABLE [STRING_32]
			l_done: BOOLEAN
		do
			if attached {EIS_ENTRY} a_item.row.data as lt_entry and then attached a_item.text as lt_parameters then
				l_parameters := parse_parameters (lt_parameters)
				l_parameters.compare_objects
				if lt_entry.parameters /= Void and then lt_entry.parameters.is_equal (l_parameters) then
						-- Do nothing when the parameters is not actually changed
				else
					if entry_editable (lt_entry, False) then
						if attached id_solution.feature_of_id (lt_entry.target_id) as lt_feature then
							if attached lt_entry.twin as lt_new_entry then
								l_new_entry := lt_new_entry
							end
							l_new_entry.set_parameters (l_parameters)
							modify_entry_in_feature (lt_entry, l_new_entry, lt_feature)
							l_done := True
						elseif attached {CLASS_I} id_solution.class_of_id (lt_entry.target_id) as lt_class then
							if attached lt_entry.twin as lt_new_entry1 then
								l_new_entry := lt_new_entry1
							end
							l_new_entry.set_parameters (l_parameters)
							modify_entry_in_class (lt_entry, l_new_entry, lt_class)
							l_done := True
						end
							-- Modify the parameters in the entry when the modification is done
						if l_done then
							storage.deregister_entry (lt_entry, component_id)
							if not l_parameters.is_empty then
								lt_entry.set_parameters (l_parameters)
							else
								lt_entry.set_parameters (Void)
							end
							storage.register_entry (lt_entry, component_id, class_i.date)
						end
					end
				end
			end
		end

	on_target_changed (a_item: EB_GRID_LISTABLE_CHOICE_ITEM_ITEM; a_grid_item: EB_GRID_LISTABLE_CHOICE_ITEM): BOOLEAN
			-- On selection changed
			-- We modify neither the referenced EIS entry when the modification is done.
		require
			a_item_not_void: a_item /= Void
			a_item_not_void: a_grid_item /= Void
		local
			l_classi: CLASS_I
			l_current_feature, l_feature: E_FEATURE
			l_current_class: CLASS_I
			l_class_modifier: ES_EIS_CLASS_MODIFIER
			l_feature_modifier: ES_EIS_FEATURE_MODIFIER
			l_grid_item: EB_GRID_LISTABLE_CHOICE_ITEM_ITEM
			l_eis_entry: EIS_ENTRY
		do
			if attached {EIS_ENTRY} a_grid_item.row.data as lt_entry then
				l_eis_entry := lt_entry
				l_classi ?= a_item.data
				l_feature ?= a_item.data
				if l_classi /= Void and then l_classi.is_equal (class_i) then
					create l_class_modifier.make (class_i)
					if l_class_modifier.is_modifiable then
						l_class_modifier.prepare
						if l_class_modifier.is_ast_available then
							l_grid_item := a_grid_item.selected_item
							if l_grid_item /= Void then
								l_current_feature ?= l_grid_item.data
							end
							if attached {E_FEATURE} l_current_feature as lt_current_feature then
								l_class_modifier.write_class_entry (l_eis_entry)
								l_class_modifier.commit
								Result := True
									-- Remove the eis from current feature.
								remove_entry_in_feature (l_eis_entry, lt_current_feature)
									-- Change the id of the entry
								storage.deregister_entry (l_eis_entry, component_id)
								l_eis_entry.set_id (component_id)
								storage.register_entry (l_eis_entry, component_id, class_i.date)
							end
						else
							prompts.show_error_prompt (interface_names.l_syntax_error, Void, Void)
						end
					else
						prompts.show_error_prompt (interface_names.l_class_is_not_editable, Void, Void)
					end
				elseif attached {E_FEATURE} l_feature as lt_feature and then lt_feature.written_class.lace_class.is_equal (class_i) then
					create l_feature_modifier.make (lt_feature, class_i)
					l_feature_modifier.prepare
					if l_feature_modifier.is_modifiable then
						if l_feature_modifier.is_ast_available then
							l_grid_item := a_grid_item.selected_item
							if l_grid_item /= Void then
								l_current_feature ?= l_grid_item.data
								l_current_class ?= l_grid_item.data
							end
							if l_current_class /= Void or l_current_feature /= Void then
								l_feature_modifier.write_feature_entry (l_eis_entry)
								l_feature_modifier.commit
								Result := True

								if l_current_feature /= Void then
										-- Remove the eis from current feature.
									remove_entry_in_feature (l_eis_entry, l_current_feature)
								elseif l_current_class /= Void then
									remove_entry_in_class (l_eis_entry, l_current_class)
								end
										-- Change the id of the entry
								storage.deregister_entry (l_eis_entry, component_id)
								l_eis_entry.set_id (id_solution.id_of_feature (lt_feature))
								storage.register_entry (l_eis_entry, component_id, class_i.date)
							end
						else
							prompts.show_error_prompt (interface_names.l_syntax_error, Void, Void)
						end
					else
						prompts.show_error_prompt (interface_names.l_class_is_not_editable, Void, Void)
					end
				end
				if Result then
					if lt_entry.override then
							-- Refresh the list to show/hide auto entries.
							-- We cannot `rebuild_and_refresh_grid' directly, as it cleans up the grid
							-- in the call of `deactivate' of {EB_GRID_LISTABLE_CHOICE_ITEM},
							-- which causes problems.
						ev_application.do_once_on_idle (agent rebuild_and_refresh_grid)
					else
							-- Refresh Override item, as it might be changed when changing from class to feature or vice versa.
						eis_grid.set_item (column_override, a_grid_item.row.index, on_item_display (column_override, a_grid_item.row.index))
					end
				end
			end
		end

note
	copyright: "Copyright (c) 1984-2014, Eiffel Software"
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
