indexing
	description: "Objects help SD_DOCKING_MANAGER with agents issues."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	SD_DOCKING_MANAGER_AGENTS

create
	make

feature {NONE}  -- Initlization

	make (a_docking_manager: SD_DOCKING_MANAGER) is
			-- Creation method.
		require
			a_docking_manager_not_void: a_docking_manager /= Void
		local
			l_env: EV_ENVIRONMENT
		do
			internal_docking_manager := a_docking_manager
			internal_docking_manager.main_window.focus_out_actions.extend (agent on_main_window_focus_out)
			internal_docking_manager.main_window.focus_in_actions.extend (agent on_main_window_focus_in)
			pnd_motion_actions_handler := agent on_pnd_motions
			pick_actions_handler := agent on_pick_actions
			drop_actions_handler := agent on_drop_actions
			create l_env
			l_env.application.pnd_motion_actions.extend (pnd_motion_actions_handler)
			l_env.application.pick_actions.extend (pick_actions_handler)
			l_env.application.drop_actions.extend (drop_actions_handler)
		ensure
			set: internal_docking_manager = a_docking_manager
		end

feature -- Command

	init_actions is
			-- Initlialize actions.
		local
			l_app: EV_ENVIRONMENT
		do
			internal_docking_manager.contents.add_actions.extend (agent on_added_content)
			internal_docking_manager.zones.zones.add_actions.extend (agent on_added_zone)
			internal_docking_manager.zones.zones.remove_actions.extend (agent on_pruned_zone)
			internal_docking_manager.internal_viewport.resize_actions.extend (agent on_resize (?, ?, ?, ?, False))
			create l_app
			l_app.application.pointer_button_press_actions.extend (agent on_widget_pointer_press)
			l_app.application.pointer_button_press_actions.extend (agent on_widget_pointer_press_for_upper_zone)
			internal_docking_manager.main_window.focus_out_actions.extend (agent on_top_level_window_focus_out)
			internal_docking_manager.main_window.focus_in_actions.extend (agent on_top_level_window_focus_in)
		end

feature  -- Agents

	on_widget_pointer_press (a_widget: EV_WIDGET; a_button, a_x, a_y: INTEGER) is
			-- Handle EV_APPLICATION's pointer button press actions.
		local
			l_auto_hide_zone: SD_AUTO_HIDE_ZONE
			l_zones: ARRAYED_LIST [SD_ZONE]
		do
			l_zones := internal_docking_manager.zones.zones.twin
			from
				l_zones.start
			until
				l_zones.after
			loop
				if l_zones.item.has_recursive (a_widget) and not ignore_additional_click then
					if internal_docking_manager.property.last_focus_content /= l_zones.item.content then
						internal_docking_manager.property.set_last_focus_content (l_zones.item.content)
						l_zones.item.on_focus_in (Void)
						if l_zones.item.content.focus_in_actions /= Void then
							l_zones.item.content.focus_in_actions.call ([])
						end
					else
						l_auto_hide_zone ?= internal_docking_manager.property.last_focus_content.state.zone
						if l_auto_hide_zone = Void and not ignore_additional_click then
							internal_docking_manager.command.remove_auto_hide_zones (True)
						elseif l_auto_hide_zone /= Void then
							l_auto_hide_zone.set_focus_color (True)
						end
					end
				end
				l_zones.forth
			end

			ignore_additional_click := False
		end

	on_widget_pointer_press_for_upper_zone (a_widget: EV_WIDGET; a_button, a_x, a_y: INTEGER) is
			-- Handle EV_APPLICATION's pointer button press actions, for recover SD_UPPER_ZONE's size.
		local
			l_zones: ARRAYED_LIST [SD_ZONE]
			l_upper_zone: SD_UPPER_ZONE
			l_tool_bar: EV_TOOL_BAR
		do
			l_zones := internal_docking_manager.zones.zones.twin
			from
				l_zones.start
			until
				l_zones.after
			loop
				l_upper_zone ?= l_zones.item
				if l_upper_zone /= Void then
					if l_zones.item.has_recursive (a_widget) then
						l_tool_bar ?= a_widget
						-- We ignore click on tool bar.
						if l_tool_bar = Void then
							l_upper_zone.recover_normal_size_from_minimize
						end
					end
				end
				l_zones.forth
			end
		end

	on_resize (a_x: INTEGER; a_y: INTEGER; a_width: INTEGER; a_height: INTEGER; a_force: BOOLEAN) is
			-- Handle resize zone event. Resize all the widgets in fixed_area (EV_FIXED).
		do
			debug ("docking")
				io.put_string ("%N SD_DOCKING_MANAGER on_resize ~~~~~~~~~~~~~~~~~~~~")
			end
			internal_docking_manager.command.remove_auto_hide_zones (False)
			internal_docking_manager.fixed_area.set_minimum_size (0, 0)
			if a_width > 0 then
				internal_docking_manager.internal_viewport.set_item_width (a_width)
				internal_docking_manager.fixed_area.set_item_width (internal_docking_manager.query.inner_container_main , internal_docking_manager.fixed_area.width)
			end
			if a_height > 0 then
				internal_docking_manager.internal_viewport.set_item_height (a_height)
				internal_docking_manager.fixed_area.set_item_height (internal_docking_manager.query.inner_container_main, internal_docking_manager.fixed_area.height)
			end
			internal_docking_manager.tool_bar_manager.on_resize (a_x, a_y, a_width, a_height, a_force)
		end

	on_added_zone (a_zone: SD_ZONE) is
			-- Handle inserted a zone event.
		do
		end

	on_pruned_zone (a_zone: SD_ZONE) is
			-- Handle pruned a zone event.
		require
			a_zone_not_void: a_zone /= Void
		local
			l_floating_zone: SD_FLOATING_ZONE
		do
		end

	on_added_content (a_content: SD_CONTENT) is
			--  Handle added a content to contents.
		require
			a_content_widget_valid: user_widget_valid (a_content)
			title_unique: title_unique (a_content)
		do
			a_content.set_docking_manager (internal_docking_manager)
		ensure
			set: a_content.docking_manager = internal_docking_manager
		end

	on_main_window_focus_out is
			-- Handle window lost focus event.
		local
			l_content: SD_CONTENT
			l_zone: SD_ZONE
		do
			l_content := internal_docking_manager.property.last_focus_content
			l_zone := internal_docking_manager.zones.zone_by_content (l_content)
			if l_zone /= Void and then internal_docking_manager.main_container.has_recursive (l_zone) then
				l_zone.set_non_focus_selection_color
			end
			debug ("docking")
				print ("%NSD_DOCKING_MANAGER_AGENTS on_main_window_focus_out ")
			end
		end

	on_main_window_focus_in is
			-- Handle window get focus event.
		local
			l_content: SD_CONTENT
			l_zone: SD_ZONE
		do
			l_content := internal_docking_manager.property.last_focus_content
			l_zone := internal_docking_manager.zones.zone_by_content (l_content)
			if l_zone /= Void and then internal_docking_manager.main_container.has_recursive (l_zone) then
				l_zone.set_focus_color (True)
			end
			debug ("docking")
				print ("%NSD_DOCKING_MANAGER_AGENTS on_main_window_focus_in ")
			end
		end

	on_top_level_window_focus_out is
			-- Handle top level window focus out actions.
		local
			l_floating_zones: ARRAYED_LIST [SD_FLOATING_ZONE]
			l_has_focus: BOOLEAN
		do
			l_floating_zones := internal_docking_manager.query.floating_zones
			l_has_focus := internal_docking_manager.main_window.has_focus
			if not l_has_focus then
				from
					l_floating_zones.start
				until
					l_floating_zones.after or l_has_focus
				loop
					l_has_focus := l_floating_zones.item.has_focus
					l_floating_zones.forth
				end
			end
			if not l_has_focus then
				--FIXIT: Currently we disable this feature.
				-- Because when show a dialog, it'll get focus, make main window lost focus.
				-- We should make a window can never get focus first.
--				internal_docking_manager.tool_bar_manager.hide_all_floating
			end
		end

	on_top_level_window_focus_in is
			-- Handle top level window focus in actions.
		do
--			internal_docking_manager.tool_bar_manager.show_all_floating
		end

	on_pick_actions (a_pebble: ANY) is
			-- Handle pick actions.
		do
			focused_tab_stub := Void
		end

	on_drop_actions (a_pebble: ANY) is
			-- Handle drop actions.
		do
			ignore_additional_click := True
		end

	on_pnd_motions (a_x, a_y: INTEGER; a_target: EV_ABSTRACT_PICK_AND_DROPABLE) is
			-- Handle pick and drop motion actions.
			-- We notify all auto hide tab stubs when pick and drop shere.
		local
			l_widget: EV_WIDGET
			l_result: BOOLEAN
			l_screen_x, l_screen_y: INTEGER
			l_env: EV_ENVIRONMENT
			l_focused: EV_WIDGET


			l_screen: EV_SCREEN
		do
			create l_env
			l_focused := l_env.application.focused_widget
			if l_focused /= Void then
				l_screen_x := a_x + l_focused.screen_x
				l_screen_y := a_y + l_focused.screen_y
			end

			l_widget ?= a_target
			if not notify_one_auto_hide_panel ({SD_ENUMERATION}.top, l_widget, l_screen_x, l_screen_y) then
				if not notify_one_auto_hide_panel ({SD_ENUMERATION}.bottom, l_widget, l_screen_x, l_screen_y) then
					if not notify_one_auto_hide_panel ({SD_ENUMERATION}.left, l_widget, l_screen_x, l_screen_y) then
						if not notify_one_auto_hide_panel ({SD_ENUMERATION}.right, l_widget, l_screen_x, l_screen_y) then
							if not pointer_in_tab then
								focused_tab_stub := Void
							end
						end
					end
				end
			end
			debug ("docking")
				print ("%N SD_DOCKING_MANAGER_AGETNS on_pnd_motions: " + l_screen_x.out + " " + l_screen_y.out)
			end
		end

	focused_tab_stub: SD_TAB_STUB
			-- Current focused auto hide tab stub during pick and drop.

	pointer_in_tab: BOOLEAN
			-- During pick and drop, if pointer position with in a tab stub?

	notify_one_auto_hide_panel (a_direction: INTEGER; a_target: EV_WIDGET; a_screen_x, a_screen_y: INTEGER): BOOLEAN is
			-- Notify one auto hide
			-- Result is if notified one tab stub
		require
			vaild: (create {SD_ENUMERATION}).is_direction_valid (a_direction)
		local
			l_panel: SD_AUTO_HIDE_PANEL
			l_stubs: ARRAYED_LIST [SD_TAB_STUB]
			l_state: SD_AUTO_HIDE_STATE
			l_stub: SD_TAB_STUB
		do
			l_panel := internal_docking_manager.query.auto_hide_panel (a_direction)
			l_stubs := l_panel.tab_stubs

			from
				l_stubs.start
			until
				l_stubs.after or Result
			loop
				l_stub := l_stubs.item
				if l_stub.screen_x <= a_screen_x and l_stub.screen_y <= a_screen_y and l_stub.screen_x + l_stub.width >= a_screen_x and l_stub.screen_y + l_stub.height >= a_screen_y then

					if l_stubs.item /= focused_tab_stub then
						l_stubs.item.on_pointer_enter
						focused_tab_stub := l_stubs.item
					end
					pointer_in_tab := True
					Result := True
				else
					pointer_in_tab := False
				end
				l_state ?= l_stubs.item.content.state
				check must_be_auto_hide_state: l_state /= Void end
				-- a_target not correct?
				l_state.animation.on_pointer_motion (a_target, a_screen_x, a_screen_y)

				debug ("docking")
					print ("%N SD_DOCKING_MANAGER_AGETNS notify_one_auto_hide_panel l_stubs.item screen_x, screen_y, width, height: " + l_stub.screen_x.out + " " + l_stub.screen_y.out + " " + l_stub.width.out + " " + l_stub.height.out)
				end

				l_stubs.forth
			end
		end

feature -- Destory

	destroy is
			-- Destory all underline objects
		local
			l_env: EV_ENVIRONMENT
		do
			create l_env
			l_env.application.pnd_motion_actions.prune_all (pnd_motion_actions_handler)
			l_env.application.pick_actions.prune_all (pick_actions_handler)
			l_env.application.drop_actions.prune_all (drop_actions_handler)
			focused_tab_stub := Void
			-- FIXIT: We should also destory agents of `on_widget_pointer_press' and `on_widget_pointer_press_for_upper_zone'

		end

feature -- Contract support

	user_widget_valid (a_content: SD_CONTENT): BOOLEAN is
			-- Dose a_widget alreay in docking library?
		local
			l_container: EV_CONTAINER
			l_found: BOOLEAN
			l_contents: ARRAYED_LIST [SD_CONTENT]
		do
			l_contents := internal_docking_manager.contents.twin
			l_contents.start
			l_contents.prune (a_content)

			from
				l_contents.start
			until
				l_contents.after or l_found
			loop
				l_container ?= l_contents.item.user_widget
				if l_container /= Void then
					if l_container.has_recursive (a_content.user_widget) then
						l_found := True
					end
				end

				if a_content.user_widget = l_contents.item.user_widget then
					l_found := True
				end

				l_contents.forth
			end
			Result := not l_found
		end

	title_unique (a_content: SD_CONTENT): BOOLEAN is
			-- If `a_unique_title' really unique?
		require
			a_content_not_void: a_content /= Void
		local
			l_contents: ARRAYED_LIST [SD_CONTENT]
		do
			l_contents := internal_docking_manager.contents.twin
			l_contents.start
			l_contents.prune (a_content)
			Result := True

			from
				l_contents.start
			until
				l_contents.after or not Result
			loop
				Result := not l_contents.item.unique_title.is_equal (a_content.unique_title)
				l_contents.forth
			end
		end

feature {SD_DEBUG_ACCESS} -- For debug.

	show_inner_container_structure is
			-- For debug.
		do
			io.put_string ("%N --------------------- SD_DOCKING_MANAGER inner container -------------------")
			internal_docking_manager.inner_containers.start
			show_inner_container_structure_imp (internal_docking_manager.inner_containers.item.item, " ")
		end

	show_inner_container_structure_imp (a_container: EV_WIDGET; a_indent: STRING) is
			-- For debug.
		local
			l_split_area: EV_SPLIT_AREA
			l_docking_zone: SD_DOCKING_ZONE
		do
			l_docking_zone ?= a_container
			if l_docking_zone /= Void then
				io.put_string ("%N " + a_indent + a_container.generating_type + " " + l_docking_zone.content.unique_title)
			else
				if a_container /= Void then
					io.put_string ("%N " + a_indent + a_container.generating_type)
				else
					io.put_string ("%N " + a_indent + "Void")
				end
			end
			l_split_area ?= a_container
			if l_split_area /= Void then
				show_inner_container_structure_imp (l_split_area.first, a_indent + " ")
				show_inner_container_structure_imp (l_split_area.second, a_indent + " ")
			end
		end

feature {NONE}  -- Implementation

	pnd_motion_actions_handler: PROCEDURE [ANY, TUPLE [INTEGER, INTEGER, EV_ABSTRACT_PICK_AND_DROPABLE]]
			-- Pick and Drop pointer motion action handler.

	pick_actions_handler: PROCEDURE [SD_DOCKING_MANAGER_AGENTS, TUPLE [ANY]]
			-- Pick actions handler

	drop_actions_handler: PROCEDURE [SD_DOCKING_MANAGER_AGENTS, TUPLE [ANY]]
			-- Drop actions handler

	internal_docking_manager: SD_DOCKING_MANAGER
			-- Docking manager which Current associate with.

	ignore_additional_click: BOOLEAN
			-- Ingore additional pointer click after pick and drop.

invariant
	not_void: pnd_motion_actions_handler /= Void

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






end
