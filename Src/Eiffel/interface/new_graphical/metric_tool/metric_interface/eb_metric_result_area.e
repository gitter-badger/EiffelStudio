indexing
	description: "Objects that represent an EV_TITLED_WINDOW.%
		%The original version of this class was generated by EiffelBuild."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	EB_METRIC_RESULT_AREA

inherit
	EB_METRIC_RESULT_AREA_IMP

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

	EVS_GRID_TWO_WAY_SORTING_ORDER
		undefine
			is_equal,
			copy,
			default_create
		end

	EB_SHARED_WRITER
		undefine
			is_equal,
			copy,
			default_create
		end

	QL_SHARED_NAMES
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

	EB_PIXMAPABLE_ITEM_PIXMAP_FACTORY
		undefine
			is_equal,
			copy,
			default_create
		end

	EB_METRIC_PANEL
		undefine
			is_equal,
			copy,
			default_create
		end

create
	make

feature {NONE} -- Initialization

	make (a_tool: like metric_tool) is
			-- Initialize `metric_tool' with `a_tool'.
		require
			a_tool_attached: a_tool /= Void
		do
			metric_tool := a_tool
			install_agents (metric_tool)
			on_unit_order_change_agent := agent on_unit_order_change
			default_create
			set_is_up_to_date (True)
			set_has_last_result_been_displayed (True)
		ensure
			metric_tool_attached: metric_tool = a_tool
		end

	user_initialization is
			-- Called by `initialize'.
			-- Any custom user initialization that
			-- could not be performed in `initialize',
			-- (due to regeneration of implementation class)
			-- can be added here.
		local
			l_text: EV_TEXT
		do
			dummy_text.set_text (metric_names.l_no_result_available)
			create metric_result.make (metric_tool, Current)
			create archive_result.make (metric_tool, Current)
			metric_result_area.extend (metric_result)
			archive_result_area.extend (archive_result)
			metric_result_area.hide
			archive_result_area.hide
			create l_text
			dummy_text.set_background_color (l_text.background_color)
			dummy_area.show

				-- Delete following in docking EiffelStudio.			
			dummy_text.drop_actions.extend (agent drop_cluster)
			dummy_text.drop_actions.extend (agent drop_class)
			dummy_text.drop_actions.extend (agent drop_feature)
		end

feature -- Access

	metric_result: EB_METRIC_CALCULATION_RESULT_AREA
			-- Area to display metric result

	archive_result: EB_METRIC_ARCHIVE_RESULT_AREA
			-- Area to display metric archive comparison result

	last_metric: EB_METRIC
			-- Last calculated metric	

	last_value: DOUBLE
			-- Last calculated value

	last_source_domain: EB_METRIC_DOMAIN
			-- Last source domain	

	last_result_domain: QL_DOMAIN
			-- Domain of last result

	last_reference_archive: LIST [EB_METRIC_ARCHIVE_NODE]
			-- Last reference archive

	last_current_archive: LIST [EB_METRIC_ARCHIVE_NODE]
			-- Last current archive

feature -- Status report

	has_last_result_been_displayed: BOOLEAN
			-- Has last metric value/archive display requirest been fullfilled?

	should_refresh_metric_result: BOOLEAN
			-- Should metric detailed result be refreshed due to Eiffel compilation?

	should_metric_result_be_displayed: BOOLEAN
			-- Should metric result be displayed instead of archive result?

	should_archive_result_be_displayed: BOOLEAN is
			-- Should archive result be displayed instead of metric result?
		do
			Result := not should_metric_result_be_displayed
		end

	set_has_last_result_been_displayed (b: BOOLEAN) is
			-- Set `has_last_result_been_displayed' with `b'.
		do
			has_last_result_been_displayed := b
		ensure
			has_last_result_been_displayed_set: has_last_result_been_displayed = b
		end

	set_should_refresh_metric_result (b: BOOLEAN) is
			-- Set `should_refresh_metric_result' with `b'.
		do
			should_refresh_metric_result := b
		ensure
			should_refresh_metric_result_set: should_refresh_metric_result = b
		end

feature -- Setting

	on_display_metric_value (a_metric: like last_metric; a_value: like last_value; a_source_domain: like last_source_domain; a_domain: like last_result_domain) is
			-- Switch current panel to display metric evaluation `a_value' for `a_metric' calculated against `a_source_domain'.
			-- `a_domain' is the detailed metric result. `a_domain' can be Void.
		require
			a_metric_attached: a_metric /= Void
			a_source_domain_attached: a_source_domain /= Void
		do
			last_reference_archive := Void
			last_current_archive := Void
			last_metric := a_metric
			last_value := a_value
			last_source_domain := a_source_domain
			last_result_domain := a_domain
			should_metric_result_be_displayed := True
			set_has_last_result_been_displayed (False)
			set_is_up_to_date (False)
			update_ui
		end

	on_display_archive_value (a_current_archive: like last_current_archive; a_referenced_archive: like last_reference_archive) is
			-- Switch current panel to display metric archive from `a_current_archive 'and `a_referenced_archive'.
		require
			archive_valid: not (a_current_archive = Void and then a_referenced_archive = Void)
		do
			last_result_domain := Void
			last_metric := Void
			last_source_domain := Void
			last_value := 0
			last_current_archive := a_current_archive
			last_reference_archive := a_referenced_archive
			should_metric_result_be_displayed := False
			set_has_last_result_been_displayed (False)
			set_is_up_to_date (False)
			update_ui
		end

feature -- Actions

	on_select is
			-- Action to be performed when current is selected
		do
			update_ui
		end

feature {NONE} -- Recycle

	internal_recycle is
			-- To be called when the button has became useless.
		do
			metric_result.recycle
			uninstall_agents (metric_tool)
		end

feature{NONE} -- Actions

	on_project_loaded is
			-- Action to be performed when project loaded
		do
		end

	on_project_unloaded is
			-- Action to be performed when project unloaded
		do
		end

	on_compile_start is
			-- Action to be performed when Eiffel compilation starts
		do
			set_is_up_to_date (False)
			update_ui
		end

	on_compile_stop is
			-- Action to be performed when Eiffel compilation stops
		do
			set_should_refresh_metric_result (True)
			set_is_up_to_date (False)
			update_ui
		end

	on_metric_evaluation_start (a_data: ANY) is
			-- Action to be performed when metric evaluation starts
			-- `a_data' can be the metric tool panel from which metric evaluation starts.
		do
		end

	on_metric_evaluation_stop (a_data: ANY) is
			-- Action to be performed when metric evaluation stops
			-- `a_data' can be the metric tool panel from which metric evaluation stops.
		do
		end

	on_archive_calculation_start (a_data: ANY) is
			-- Action to be performed when metric archive calculation starts
			-- `a_data' can be the metric tool panel from which metric archive calculation starts.
		do
		end

	on_archive_calculation_stop (a_data: ANY) is
			-- Action to be performed when metric archive calculation stops
			-- `a_data' can be the metric tool panel from which metric archive calculation stops.
		do
		end

	on_metric_loaded is
			-- Action to be performed when metrics loaded in `metric_manager'
		do
			set_is_metric_reloaded (True)
		end

feature{NONE} -- UI Update

	update_ui is
			-- Update interface
		do
			if is_selected and then not is_up_to_date then
				if not has_last_result_been_displayed then
					if should_metric_result_be_displayed then
						metric_result_area.show
						dummy_area.hide
						archive_result_area.hide
						metric_result.update_warning_area.hide
						metric_result.load_metric_result (last_metric, last_source_domain, last_value, last_result_domain)
					else
						metric_result_area.hide
						dummy_area.hide
						archive_result_area.show
						archive_result.load_archives (last_reference_archive, last_current_archive)
					end
					set_has_last_result_been_displayed (True)
				end
				if should_refresh_metric_result then
					metric_result.refresh_grid
					metric_result.update_warning_area.show
					set_should_refresh_metric_result (False)
				end
				set_is_up_to_date (True)
			end
		end

invariant
	metric_result_attached: metric_result /= Void
	archive_result_attached: archive_result /= Void

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


end -- class EB_METRIC_RESULT_AREA

