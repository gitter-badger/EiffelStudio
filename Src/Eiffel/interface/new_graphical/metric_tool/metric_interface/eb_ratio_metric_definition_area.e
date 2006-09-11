indexing
	description: "Objects that represent an EV_TITLED_WINDOW.%
		%The original version of this class was generated by EiffelBuild."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	EB_RATIO_METRIC_DEFINITION_AREA

inherit
	EB_RATIO_METRIC_DEFINITION_AREA_IMP

	EB_METRIC_EDITOR
		undefine
			is_equal,
			copy,
			default_create
		redefine
			metric,
			expression_generator,
			is_ratio_metric_editor
		end

	EB_CONSTANTS
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

create
	make

feature {NONE} -- Initialization

	make (a_tool: like metric_tool; a_panel: like metric_panel) is
			-- Initialize `metric_tool' with `a_tool'.
		require
			a_tool_attached: a_tool /= Void
		do
			set_metric_tool (a_tool)
			set_metric_panel (a_panel)
			create expression_generator.make
			create change_actions
			default_create
			create numerator_delayed_timer.make (agent on_numerator_text_change_confirmed, 500)
			create denominator_delayed_timer.make (agent on_denominator_text_change_confirmed, 500)
			setup_editor
		ensure
			metric_tool_set: metric_tool = a_tool
			metric_panel_set: metric_panel = a_panel
			numerator_delayed_timer_attached: numerator_delayed_timer /= Void
			denominator_delayed_timer_attached: denominator_delayed_timer /= Void
		end

	user_initialization is
			-- Called by `initialize'.
			-- Any custom user initialization that
			-- could not be performed in `initialize',
			-- (due to regeneration of implementation class)
			-- can be added here.
		local
			l_text: EV_TEXT_FIELD
		do
			definition_frame.set_text (metric_names.t_metric_definition)
			numerator_text.drop_actions.extend (agent on_drop (?, numerator_text))
			numerator_text.set_accept_cursor (cursors.cur_metric)
			numerator_text.set_deny_cursor (cursors.cur_x_metric)
			numerator_text.set_tooltip (metric_names.f_drop_metric_here)
			numerator_text.change_actions.extend (agent on_numerator_text_change)

			denominator_text.drop_actions.extend (agent on_drop (?, denominator_text))
			denominator_text.set_accept_cursor (cursors.cur_metric)
			denominator_text.set_deny_cursor (cursors.cur_x_metric)
			denominator_text.set_tooltip (metric_names.f_drop_metric_here)
			denominator_text.change_actions.extend (agent on_denominator_text_change)

			create l_text
			numerator_text.set_background_color (l_text.background_color)
			denominator_text.set_background_color (l_text.background_color)
			expression_text.set_background_color (l_text.background_color)

			numerator_btn.set_pixmap (pixmaps.mini_pixmaps.toolbar_dropdown_icon)
			numerator_btn.select_actions.extend (agent on_open_metric_menu (numerator_btn, numerator_text))
			numerator_btn.key_press_actions.extend (agent on_key_pressed_in_open_metric_btn (numerator_btn, numerator_text, ?))

			denominator_btn.set_pixmap (pixmaps.mini_pixmaps.toolbar_dropdown_icon)
			denominator_btn.select_actions.extend (agent on_open_metric_menu (denominator_btn, denominator_text))
			denominator_btn.key_press_actions.extend (agent on_key_pressed_in_open_metric_btn (denominator_btn, denominator_text, ?))

--			numerator_target_pixmap.set_size (16, 16)
--			numerator_target_pixmap.copy (pixmaps.icon_pixmaps.metric_unit_target_icon)
--			numerator_target_pixmap.set_accept_cursor (cursors.cur_metric)
--			numerator_target_pixmap.set_deny_cursor (cursors.cur_x_metric)
--			numerator_target_pixmap.drop_actions.extend (agent on_drop (?, numerator_text))
--			numerator_target_pixmap.set_tooltip (interface_names.l_metric_drop_metric_here)
--
--			denominator_target_pixmap.set_size (16, 16)
--			denominator_target_pixmap.copy (pixmaps.icon_pixmaps.metric_unit_target_icon)
--			denominator_target_pixmap.set_accept_cursor (cursors.cur_metric)
--			denominator_target_pixmap.set_deny_cursor (cursors.cur_x_metric)
--			denominator_target_pixmap.drop_actions.extend (agent on_drop (?, denominator_text))
--			denominator_target_pixmap.set_tooltip (interface_names.l_metric_drop_metric_here)
			numerator_target_pixmap.hide
			denominator_target_pixmap.hide

			attach_non_editable_warning_to_text (metric_names.t_text_not_editable, expression_text, metric_tool_window)

				-- Delete following in docking EiffelStudio.
			expression_lbl_empty_area.drop_actions.extend (agent metric_panel.drop_cluster)
			expression_lbl_empty_area.drop_actions.extend (agent metric_panel.drop_class)
			expression_lbl_empty_area.drop_actions.extend (agent metric_panel.drop_feature)
			numerator_empty_area.drop_actions.extend (agent metric_panel.drop_cluster)
			numerator_empty_area.drop_actions.extend (agent metric_panel.drop_class)
			numerator_empty_area.drop_actions.extend (agent metric_panel.drop_feature)
			denominator_empty_area.drop_actions.extend (agent metric_panel.drop_cluster)
			denominator_empty_area.drop_actions.extend (agent metric_panel.drop_class)
			denominator_empty_area.drop_actions.extend (agent metric_panel.drop_feature)
			ratio_definition_empty_area.drop_actions.extend (agent metric_panel.drop_cluster)
			ratio_definition_empty_area.drop_actions.extend (agent metric_panel.drop_class)
			ratio_definition_empty_area.drop_actions.extend (agent metric_panel.drop_feature)
		end

feature -- Status report

	is_ratio_metric_editor: BOOLEAN is True
			-- Is current a ratio metric editor?

feature -- Setting

	set_mode (a_mode: INTEGER) is
			-- Set `mode' with `a_mode'.
		do
			mode := a_mode
		end

	load_metric_definition (a_metric: like metric) is
			-- Load `a_metric' in current editor.
		do
			load_metric_name_and_description (a_metric, mode = readonly_mode)
			numerator_text.change_actions.block
			denominator_text.change_actions.block
			if a_metric /= Void then
				numerator_text.set_text (a_metric.numerator_metric_name)
				on_text_change_in_text_field (a_metric.numerator_metric_name, numerator_text, a_metric.numerator_metric_uuid)
				denominator_text.set_text (a_metric.denominator_metric_name)
				on_text_change_in_text_field (a_metric.denominator_metric_name, denominator_text, a_metric.denominator_metric_uuid)
			else
				numerator_text.set_text ("")
				on_text_change_in_text_field ("", numerator_text, metric_manager.uuid_generator.generate_uuid)
				denominator_text.set_text ("")
				on_text_change_in_text_field ("", denominator_text, metric_manager.uuid_generator.generate_uuid)
			end
			numerator_text.change_actions.resume
			denominator_text.change_actions.resume
			on_change
		end

	enable_edit is
			-- Enable edit in current editor.
		do
			numerator_btn.enable_sensitive
			numerator_text.key_press_actions.wipe_out
			numerator_text.enable_edit
			denominator_btn.enable_sensitive
			denominator_text.enable_edit
			denominator_text.key_press_actions.wipe_out
		end

	disable_edit is
			-- Disable edit in current editor.
		do
			numerator_text.disable_edit
			attach_non_editable_warning_to_text (metric_names.t_predefined_text_not_editable, numerator_text, metric_tool_window)
			numerator_btn.disable_sensitive
			denominator_text.disable_edit
			attach_non_editable_warning_to_text (metric_names.t_predefined_text_not_editable, denominator_text, metric_tool_window)
			denominator_btn.disable_sensitive
		end

	attach_metric_selector (a_metric_selector: like metric_selector) is
			-- Set `metric_selector' with `a_metric_selector'.
		do
			metric_selector := a_metric_selector
		end

	detach_metric_selector is
			-- Detach `metric_selector'.
		do
			metric_selector := Void
		end

	set_stone (a_stone: STONE) is
			-- Notify that `a_stone' is dropped on Current.
		do
		end

feature -- Access

	metric: EB_METRIC_RATIO is
			-- Metric in current editor
		local
			l_num_uuid: UUID
			l_den_uuid: UUID
		do
			create Result.make (name_area.name, unit, uuid)
			Result.set_description (name_area.description)
			Result.set_numerator_metric_name (numerator_text.text)
			l_num_uuid ?= numerator_text.data
			check l_num_uuid /= Void end
			Result.set_numerator_metric_uuid (l_num_uuid)
			Result.set_denominator_metric_name (denominator_text.text)
			l_den_uuid ?= denominator_text.data
			check l_den_uuid /= Void end
			Result.set_denominator_metric_uuid (l_den_uuid)
		end

	metric_type: INTEGER is
			-- Type of metric in current editor
		do
			Result := ratio_metric_type
		end

	definition_area_widget: EV_WIDGET is
			-- Definition area
		do
			Result := Current
		end

	expression_generator: EB_METRIC_RATIO_EXPRESSION_GENERATOR
			-- Expression generator	

	button_metric_menu: EV_MENU
			-- Menu to display all registered metrics				

feature {NONE} -- Actions

	on_change is
			-- Action to be performed when definition of current ratio metric changes
		do
			expression_generator.set_metric (metric)
			expression_generator.generate_expression
			expression_generator.load_expression (expression_text)
			on_definition_change
		end

	on_drop (a_pebble: ANY; a_place: EV_TEXT_FIELD) is
			-- Action to be performed when `a_pebble' is dropped on `a_place'.
		require
			a_place_attached: a_place /= Void
		local
			l_metric: EB_METRIC
		do
			if mode /= readonly_mode then
				l_metric ?= a_pebble
				if l_metric /= Void then
					if metric_manager.has_metric (l_metric.name) and then metric_manager.is_metric_valid (l_metric.name) then
						a_place.set_foreground_color (black_color)
					else
						a_place.set_foreground_color (red_color)
					end
					a_place.set_data (l_metric.uuid)
					a_place.set_text (l_metric.name)
				end
				on_change
			end
		end

	on_text_change_in_text_field (a_text: STRING; a_text_field: EV_TEXT_FIELD; a_uuid: UUID) is
			-- Action to be performed when text in `a_text_field' changes to `a_text'
			-- If `a_uuid' is True, set `data' of `a_text_field' with `a_uuid', else find a possible UUID and set it into `data' of `a_text_field'.
		require
			a_text_attached: a_text /= Void
			a_text_field_attached: a_text_field /= Void
		local
			l_metric_manager: like metric_manager
		do
			l_metric_manager := metric_manager
			if a_uuid /= Void then
				a_text_field.set_data (a_uuid)
			end
			if l_metric_manager.has_metric (a_text) then
				if l_metric_manager.is_metric_valid (a_text) then
					a_text_field.set_foreground_color (black_color)
				else
					a_text_field.set_foreground_color (red_color)
				end
				if a_uuid = Void then
					a_text_field.set_data (l_metric_manager.metric_with_name (a_text).uuid)
				end
			else
				a_text_field.set_foreground_color (red_color)
				if a_uuid = Void then
					a_text_field.set_data (metric_manager.uuid_generator.generate_uuid)
				end
			end
		end

	on_open_metric_menu (a_btn: EV_BUTTON; a_text: EV_TEXT_FIELD) is
			-- Action to be performed when open `metric_menu' at position related to `a_widget'.
		require
			a_widget_attached: a_text /= Void
		do
			if button_metric_menu /= Void then
				button_metric_menu.destroy
			end
			button_metric_menu := metric_menu
			setup_menu (button_metric_menu, a_text)
			button_metric_menu.show_at (a_btn, a_btn.width - approximate_width_of_menu (button_metric_menu) - 30, a_text.height)
		end

	on_key_pressed_in_open_metric_btn (a_btn: EV_BUTTON; a_text: EV_TEXT_FIELD; a_key: EV_KEY) is
			-- Action to be performed when button pressed to open a metric menu
		do
			if a_key.code = {EV_KEY_CONSTANTS}.key_enter then
				on_open_metric_menu (a_btn, a_text)
			end
		end

	on_numerator_text_change is
			-- Action to be performed when text changes in `numerator_text'
		do
			numerator_delayed_timer.request_call
		end

	on_denominator_text_change is
			-- Action to be performed when text changes in `denominator_text'
		do
			denominator_delayed_timer.request_call
		end

	on_numerator_text_change_confirmed is
			-- Action to be performed when text change in `numerator_text' is confirmed
		do
			on_text_change_in_text_field (numerator_text.text, numerator_text, Void)
			on_change
		end

	on_denominator_text_change_confirmed is
			-- Action to be performed when text change in `denominator_text' is confirmed
		do
			on_text_change_in_text_field (denominator_text.text, denominator_text, Void)
			on_change
		end

feature{NONE} -- Implementation

	setup_menu (a_menu: EV_MENU; a_text: EV_TEXT_FIELD) is
			-- Setup menu selection actions for `a_text'.
		require
			a_menu_attached: a_menu /= Void
			a_text_attached: a_text /= Void
		local
			l_menu: EV_MENU
			l_item: EV_MENU_ITEM
		do
			from
				a_menu.start
			until
				a_menu.after
			loop
				l_menu ?= a_menu.item
				if l_menu /= Void then
					from
						l_menu.start
					until
						l_menu.after
					loop
						l_item := l_menu.item
						l_item.select_actions.extend (agent on_drop (l_item.data, a_text))
						l_menu.forth
					end
				end
				a_menu.forth
			end
		end

	numerator_delayed_timer: ES_DELAYED_ACTION
			-- Numerator metric text field delayed timer

	denominator_delayed_timer: ES_DELAYED_ACTION;
			-- Denominator metric text field delayed timer

invariant
	numerator_delayed_timer_attached: numerator_delayed_timer /= Void
	denominator_delayed_timer_attached: denominator_delayed_timer /= Void

indexing
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


end -- class EB_RATIO_METRIC_DEFINITION_AREA

