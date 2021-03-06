note
	description: "[
					Vision2 tree loader vistor when using application mode
			]"
	date: "$Date$"
	revision: "$Revision$"

class
	ER_LOAD_VISION_TREE_AM_VISITOR

inherit
	ER_VISITOR
		redefine
			visit_ribbon_tabs,
			visit_ribbon_application_menu
		end

feature -- Visitor features

	visit_ribbon_tabs (a_ribbon_tabs: ER_XML_TREE_ELEMENT; a_layout_constructor_index: INTEGER)
			-- <Precursor>
		local
			l_new_node: EV_TREE_ITEM
		do
			if attached shared.layout_constructor_list.i_th (1) as l_layout_constructor then
				l_new_node := l_layout_constructor.tree_item_factory_method (a_ribbon_tabs.name)
				from
					a_ribbon_tabs.start
				until
					a_ribbon_tabs.after
				loop
					create_vision_tree_recursive (l_new_node, a_ribbon_tabs.item_for_iteration)

					a_ribbon_tabs.forth
				end
				l_layout_constructor.widget.wipe_out
				l_layout_constructor.widget.extend (l_new_node)
				l_layout_constructor.expand_tree
			end
		end

	visit_ribbon_application_menu (a_ribbon_application_menu: ER_XML_TREE_ELEMENT; a_layout_constructor_index: INTEGER)
			-- <Precursor>
		local
			l_new_node: EV_TREE_ITEM
		do
			if attached shared.layout_constructor_list.i_th (1) as l_layout_constructor then
				l_new_node := l_layout_constructor.tree_item_factory_method (a_ribbon_application_menu.name)
				from
					a_ribbon_application_menu.start
				until
					a_ribbon_application_menu.after
				loop
					create_vision_tree_recursive (l_new_node, a_ribbon_application_menu.item_for_iteration)

					a_ribbon_application_menu.forth
				end
				l_layout_constructor.widget.extend (l_new_node)
				l_layout_constructor.expand_tree
			end
		end

feature {ER_UPDATE_CONTEXT_POPUP_VISITOR, ER_LOAD_QUICK_ACCESS_TOOLBAR_VISITOR} -- Implementation

	create_vision_tree_recursive (a_parent: EV_TREE_NODE_LIST; a_ribbon_tab_item: XML_NODE)
			-- Create vision2 tree recursively
		local
			l_new_node: EV_TREE_ITEM
		do
			if attached shared.layout_constructor_list.i_th (1) as l_layout_constructor then
				if attached {ER_XML_TREE_ELEMENT} a_ribbon_tab_item as l_tab_item then
					l_new_node := l_layout_constructor.tree_item_factory_method (l_tab_item.name)
					a_parent.extend (l_new_node)
					from
						l_tab_item.start
					until
						l_tab_item.after
					loop
						if attached {XML_ATTRIBUTE} l_tab_item.item_for_iteration as l_attribute then
							if l_attribute.name.same_string ({ER_XML_ATTRIBUTE_CONSTANTS}.command_name) then
								if attached {ER_TREE_NODE_DATA} l_new_node.data as l_data then
									l_data.set_command_name (l_attribute.value)
								end
							elseif l_attribute.name.same_string ({ER_XML_ATTRIBUTE_CONSTANTS}.name) then
								-- For context popup's command name
								-- Context popup's command name in ContextMap is same as name attribute here
								check l_tab_item.name.same_string ({ER_XML_CONSTANTS}.mini_toolbar) or else
									 l_tab_item.name.same_string ({ER_XML_CONSTANTS}.context_menu) end
								if attached {ER_TREE_NODE_DATA} l_new_node.data as l_data then
									l_data.set_command_name (l_attribute.value)
								end
							elseif l_attribute.name.same_string ({ER_XML_ATTRIBUTE_CONSTANTS}.application_mode) then
								if attached {ER_TREE_NODE_DATA} l_new_node.data as l_data then
									l_data.set_application_mode (l_attribute.value.to_integer)
								end
							elseif l_attribute.name.same_string ({ER_XML_ATTRIBUTE_CONSTANTS}.size_definition) then
								if attached {ER_TREE_NODE_GROUP_DATA} l_new_node.data as l_data then
									l_data.set_size_definition (l_attribute.value)
								end
							elseif l_attribute.name.same_string ({ER_XML_ATTRIBUTE_CONSTANTS}.max_rows) then
								if attached {ER_TREE_NODE_IN_RIBBON_GALLERY_DATA} l_new_node.data as l_data then
									l_data.set_max_rows (l_attribute.value.to_integer)
								end
							elseif l_attribute.name.same_string ({ER_XML_ATTRIBUTE_CONSTANTS}.max_columns) then
								if attached {ER_TREE_NODE_IN_RIBBON_GALLERY_DATA} l_new_node.data as l_data then
									l_data.set_max_columns (l_attribute.value.to_integer)
								end
							elseif l_attribute.name.same_string ({ER_XML_ATTRIBUTE_CONSTANTS}.color_template) then
								if attached {ER_TREE_NODE_DROP_DOWN_COLOR_PICKER_DATA} l_new_node.data as l_data then
									l_data.set_color_template (l_attribute.value)
								end
							elseif l_attribute.name.same_string ({ER_XML_ATTRIBUTE_CONSTANTS}.font_type) then
								if attached {ER_TREE_NODE_FONT_CONTROL_DATA} l_new_node.data as l_data then
									l_data.set_font_type (l_attribute.value)
								end
							end
						elseif attached {ER_XML_TREE_ELEMENT} l_tab_item.item_for_iteration as l_child then
							create_vision_tree_recursive (l_new_node, l_child)
						end

						l_tab_item.forth
					end
				end
			end
		end

note
	copyright: "Copyright (c) 1984-2011, Eiffel Software"
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
end
