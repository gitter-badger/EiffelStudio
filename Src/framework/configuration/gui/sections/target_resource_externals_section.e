indexing
	description: "Objects that ..."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	TARGET_RESOURCE_EXTERNALS_SECTION

inherit
	TARGET_EXTERNAL_BASE_SECTION

create
	make

feature -- Access

	name: STRING_GENERAL is
			-- Name of the section.
		once
			Result := conf_interface_names.external_resource_tree
		end

	icon: EV_PIXMAP is
			-- Icon of the section.
		once
			Result := conf_pixmaps.project_settings_resource_file_icon
		end

feature -- Element update

	add_external is
			-- Add a new external.
		local
			l_external: CONF_EXTERNAL_RESOURCE
			l_ext_sec: EXTERNAL_RESOURCE_SECTION
		do
				-- add it in the configuration
			l_external := configuration_window.conf_factory.new_external_resource ("new", target)
			target.add_external_resource (l_external)

				-- create and select the section
			create l_ext_sec.make (l_external, target, configuration_window)
			extend (l_ext_sec)
			expand
			l_ext_sec.enable_select
		end

feature {NONE} -- Implementation

	update_toolbar_sensitivity is
			-- Enable/disable buttons in `toobar'.
		do
			toolbar.add_resource_button.select_actions.wipe_out
			toolbar.add_resource_button.select_actions.extend (agent add_external)
			toolbar.add_resource_button.enable_sensitive
		end

	context_menu: ARRAYED_LIST [EV_MENU_ITEM] is
			-- Context menu with available actions for `Current'.
		local
			l_item: EV_MENU_ITEM
		do
			create Result.make (1)

			create l_item.make_with_text_and_action (conf_interface_names.external_add_resource, agent add_external)
			Result.extend (l_item)
			l_item.set_pixmap (conf_pixmaps.new_resource_icon)
		end

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
end
