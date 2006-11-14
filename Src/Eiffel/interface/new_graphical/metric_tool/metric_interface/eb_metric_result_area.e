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

	EB_RECYCLABLE
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
			on_unit_order_change_agent := agent on_unit_order_change
			default_create
			set_is_up_to_date (True)
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

feature -- Access

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

	should_metric_result_be_displayed: BOOLEAN
			-- Should metric result be displayed instead of archive result?

feature -- Setting

	enable_metric_result_display is
			-- Enable metric result display.
		do
			should_metric_result_be_displayed := True
			last_result_domain := Void
			last_metric := Void
			last_source_domain := Void
			last_value := 0
		end

	enable_archive_result_display is
			-- Enable archive result display.
		do
			should_metric_result_be_displayed := False
			last_reference_archive := Void
			last_current_archive := Void
		end

	set_last_metric (a_metric: like last_metric) is
			-- Set `last_metric' with `a_metric'.
		require
			a_metric_attached: a_metric /= Void
		do
			last_metric := a_metric
		ensure
			last_metric_set: last_metric = a_metric
		end

	set_last_value (a_value: like last_value) is
			-- Set `last_value' with `a_value'.
		do
			last_value := a_value
		ensure
			last_value_set: last_value = a_value
		end

	set_last_source_domain (a_source_domain: like last_source_domain) is
			-- Set `last_source_domain' with `a_source_domain'.
		require
			a_source_domain_attached: a_source_domain /= Void
		do
			last_source_domain := a_source_domain
		ensure
			last_source_domain_set: last_source_domain = a_source_domain
		end

	set_last_result_domain (a_result_domain: like last_result_domain) is
			-- Set `last_result_domain' with `a_result_domain'.
		do
			last_result_domain := a_result_domain
		ensure
			last_result_domain_set: last_result_domain = a_result_domain
		end

	set_last_reference_archive (a_reference_archive: like last_reference_archive) is
			-- Set `last_reference_archive' with `a_reference_archive'.
		do
			last_reference_archive := a_reference_archive
		ensure
			last_reference_archive_set: last_reference_archive = a_reference_archive
		end

	set_last_current_archive (a_current_archive: like last_current_archive) is
			-- Set `last_current_archive' with `a_current_archive'.
		do
			last_current_archive := a_current_archive
		ensure
			last_current_archive_set: last_current_archive = a_current_archive
		end

	set_stone (a_stone: STONE) is
			-- Notify that `a_stone' has been dropped on Current.
		do
		end

feature -- Synchronization

	synchronize_when_compile_start is
			-- Synchronize when Eiffel compilation starts.
		do
		end

	synchronize_when_compile_stop is
			-- Synchronize when Eiffel compilation stops.
		do
			if metric_result.is_displayed then
				metric_result.refresh_grid
				metric_result.update_warning_area.show
			end
		end

feature -- Actions

	on_select is
			-- Action to be performed when current is selected
		do
			if not is_selected then
				set_is_selected (True)
			end
			if not is_up_to_date then
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
				set_is_up_to_date (True)
			end
		end

feature {NONE} -- Recycle

	internal_recycle is
			-- To be called when the button has became useless.
		do
			metric_result.recycle
		end

feature -- Update

	update (a_observable: QL_OBSERVABLE; a_data: ANY) is
			-- Notification from `a_observable' indicating that `a_data' changed.
		local
			l_start: BOOLEAN_REF
		do
			l_start ?= a_data
			if l_start /= Void then
				if l_start.item then
					synchronize_when_compile_start
				else
					synchronize_when_compile_stop
				end
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

