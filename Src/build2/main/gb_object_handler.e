indexing
	description: "An object which handles objects of type GB_OBJECT."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GB_OBJECT_HANDLER
	
inherit
	INTERNAL
	
	GB_CONSTANTS
	
	GB_ACCESSIBLE_OBJECT_EDITOR
	
create
	initialize

feature {NONE} -- Initialization
	
	initialize is
			-- Create `Current'.
		do
			create objects.make (20)
		ensure
			objects_not_void: objects /= Void
		end
		
feature -- Basic operation

	add_object (container, new_object: GB_OBJECT; position: INTEGER) is
			-- Add `new_object' to `container' at position `position'.
		require
			container_object_exists: container /= Void
			new_object_exists: new_object /= Void
			position_valid: position >= 1 and position <= container.layout_item.count + 1
		local
			container_object: GB_CONTAINER_OBJECT
			cell_object: GB_CELL_OBJECT
			all_editors_local: ARRAYED_LIST [GB_OBJECT_EDITOR]
		do
				-- When we change the type of an object, we keep the
				-- original layout_item. This is why the layout item
				-- may not be void, and the other attributes may be.
			if new_object.layout_item = Void then
				new_object.create_layout_item
			end
			if new_object.object = Void then
				new_object.create_object_from_type
				new_object.build_display_object
				new_object.set_up_display_object_events (new_object.display_object, new_object.object)
			end
			container_object ?= container
			cell_object ?= container
			check
				must_now_support_items: container_object /= Void or cell_object /= Void
			end
			if container_object /= Void then
				container_object.add_child_object (new_object, position)
			end
			if cell_object /= Void then
				cell_object.add_child_object (new_object)
			end
			objects.extend (new_object)
			
				-- We must now update the object editors to take into account
				-- This information. Some representations of objects in the editor
				-- display information regarding their children, so a call to
				-- this function requires and update to the object editor.
				
			all_editors_local := all_editors
			from
				all_editors_local.start
			until
				all_editors_local.off
			loop
				if container = all_editors_local.item.object then
					all_editors_local.item.update_current_object
				end
				all_editors_local.forth
			end
			
				-- We must now update the pick and drop status of the container
				-- as it may now be full.
			--container.build_drop_action_for_new_object	
		ensure
			new_obect_added_to_object_list: objects.has (new_object)
			new_object_layout_item_not_void: new_object.layout_item /= Void
			new_object_display_object_not_void: new_object.display_object /= Void
			new_object_object_not_void: new_object.object /= Void
		end

	move_object_contents (new_object, old_object: GB_OBJECT) is
			-- Take all children of `old_object', and their representations,
			-- and move into `new_object'.
		require
			new_object_not_void: new_object /= Void
			old_object_not_Void: old_object /= Void
				-- Not true, as replacing the type means we have a layout item.
			--new_object_empty: new_object.layout_item.count = 0
			new_object_not_a_primitive: not is_instance_of (new_object, dynamic_type_from_string (gb_primitive_object_class_name))
			old_object_not_a_primitive: not is_instance_of (old_object, dynamic_type_from_string (gb_primitive_object_class_name))
		local
			cell_object: GB_CELL_OBJECT
			container_object: GB_CONTAINER_OBJECT
			child_object: GB_OBJECT
			node: GB_LAYOUT_CONSTRUCTOR_ITEM
			layout_item: GB_LAYOUT_CONSTRUCTOR_ITEM
		do
			cell_object ?= new_object
			container_object ?= new_object
			check
				new_object_is_cell_or_container: cell_object /= Void or container_object /= Void
			end
			
			layout_item := old_object.layout_item
			from
				layout_item.start
			until
				layout_item.off
			loop			
				node ?= layout_item.item
				child_object ?= node.object
				check
					child_object_not_void: child_object /= Void
				end
				child_object.unparent_during_type_change
				
				if cell_object /= Void then
					cell_object.add_child_object (child_object)	
				else
					container_object.add_child_object (child_object, container_object.object.count + 1)--container_object.layout_item.count + 1)
				end

				layout_item.forth
			end
		end
		
	replace_object_type (an_object: GB_OBJECT; a_type: STRING) is--selector_item: GB_TYPE_SELECTOR_ITEM) is
			-- Replace `an_object' with a new object of type `selector_item'.
			-- We must transfer the children of the object, the display_object children
			-- and the layout_item children.
		require
			an_object_not_void: an_object /= Void
			an_object_object_not_void: an_object.object /= Void
			an_object_display_item_not_void: an_object.display_object /= Void
			an_object_layout_item_not_void: an_object.layout_item /= Void
			
		local
			layout_parent_item, old_layout_item: GB_LAYOUT_CONSTRUCTOR_ITEM
			new_object, parent_object: GB_OBJECT
			original_position: INTEGER
			local_all_editors: ARRAYED_LIST [GB_OBJECT_EDITOR]
		do
				-- Retreive the parent of `an_object'
				-- we must do this before calling `remove_object_from_parent'.
			layout_parent_item ?= an_object.layout_item.parent
			
				-- Store the layout item as we need to use this in the new object.
				-- If we keep references to this layout item, when the type changes,
				-- we can still access the object.
			old_layout_item := an_object.layout_item

				--| Need to get original position.
			original_position := layout_parent_item.index_of (an_object.layout_item, 1)			
			
			parent_object ?= layout_parent_item.object
			check
				parent_object_not_void: parent_object /= Void
			end
			
				-- Remove `an_object' from its parent.
			an_object.unparent_during_type_change
			
			
			--new_object ?= selector_item.generate_transportable
			new_object ?= build_object_from_string (a_type)
			
			new_object.set_layout_item (old_layout_item)
			new_object.layout_item.set_text (new_object.short_type)
			
				-- Add new object to parent of old object.
			add_object (parent_object, new_object, original_position)			
				
			
				-- Now we must swap the children over.	
				-- We only do this if `an_object' does not
				-- represent a primitive.
			if not is_instance_of (an_object, dynamic_type_from_string (gb_primitive_object_class_name)) and
			not is_instance_of (new_object, dynamic_type_from_string (gb_primitive_object_class_name)) then
				move_object_contents (new_object, an_object)	
			end
			
				-- Now we must update all the object editors.
				-- If `an_object' was in an editor then clear the editor, as
				-- the objects type has changed.
				
			local_all_editors := all_editors
			from
				local_all_editors.start
			until
				local_all_editors.off
			loop
				if local_all_editors.item.object = an_object then
					local_all_editors.item.remove_editor
				end
				local_all_editors.forth
			end
		end
		
	object_contained_in_object (parent_object, child_object: GB_OBJECT): BOOLEAN is
			-- Is `child_object' a child (recursively) of `parent_object'?
		require
			parent_not_void: parent_object /= Void
		local
			parent_layout_item: GB_LAYOUT_CONSTRUCTOR_ITEM
		do
			object_contained_in_object_result := False
			parent_layout_item ?= parent_object.layout_item
			check
				parent_layout_item_not_void: parent_layout_item /= Void
			end
			parent_layout_item.recursive_do_all (agent is_child (child_object, ?))
			Result := object_contained_in_object_result
		end
		
	is_child (child_object: GB_OBJECT; an_item: EV_TREE_ITEM) is
			--
		local
			current_item: GB_LAYOUT_CONSTRUCTOR_ITEM
		do
			current_item ?= an_item
			check
				current_item_not_void: current_item /= Void
			end
			if current_item.object = child_object then
				object_contained_in_object_result := True
			end
		end
		
	object_contained_in_object_result: Boolean
		-- Result of last call to `object_contained_in_object'.

	add_root_object (an_object: GB_CELL_OBJECT) is
			-- Add `an_object' to `objects'.
		do
			objects.extend (an_object)
		ensure
			added_to_objects: objects.has (an_object)
		end
		
	remove_object (an_object: GB_OBJECT) is
			-- Remove `an_object' from `objects'.
		do
			objects.prune_all (an_object)
		ensure
			not_in_objects: not objects.has (an_object)
		end
	
	for_all_objects_build_drop_actions_for_new_object is
			-- For every GB_OBJECT in `objects', initialize their
			-- drop actions to accept a new object if permissible.
		do
			from
				objects.start
			until
				objects.off
			loop
				objects.item.build_drop_action_for_new_object
				objects.forth
			end
		end
		
	for_all_objects_build_shift_drop_actions_for_new_object is
			-- For every GB_OBJECT in `objects', initialize their shift
			-- drop actions to insert a new object in their parent.
		do
			from
				objects.start
			until
				objects.off
			loop
				objects.item.build_shift_drop_action_for_new_object
				objects.forth
			end
		end
		
	build_object_from_string (a_text: STRING): GB_OBJECT is
			-- Generate `Result' from `text'.
		require
			text_valid: a_text.count > 0 -- This is not a  complete check, but is better than nothing.
		local
			cell_object: GB_CELL_OBJECT
			primitive_object: GB_PRIMITIVE_OBJECT
			split_area_object: GB_SPLIT_AREA_OBJECT
			table_object: GB_TABLE_OBJECT
			widget_list_object: GB_WIDGET_LIST_OBJECT
			current_type: INTEGER
			text: STRING
		do
			text := a_text
			current_type := dynamic_type_from_string (text)
			if type_conforms_to (current_type, dynamic_type_from_string ("EV_CELL")) then
				create cell_object.make_with_type (text)
				Result ?= cell_object
			elseif type_conforms_to (current_type, dynamic_type_from_string ("EV_CONTAINER")) then
				if type_conforms_to (current_type, dynamic_type_from_string ("EV_WIDGET_LIST")) then
					create widget_list_object.make_with_type (text)
					Result ?= widget_list_object
				elseif type_conforms_to (current_type, dynamic_type_from_string ("EV_TABLE")) then
					create table_object.make_with_type (text)
					Result ?= table_object
				elseif type_conforms_to (current_type, dynamic_type_from_string ("EV_SPLIT_AREA")) then
					create split_area_object.make_with_type (text)
					Result ?= split_area_object
				else
					check
						invalid_type_conformance: False
					end
				end
			elseif type_conforms_to (current_type, dynamic_type_from_string ("EV_PRIMITIVE")) then
				create primitive_object.make_with_type (text)
				Result ?= primitive_object
			end
		ensure
			Result_not_void: Result /= Void
		end

feature -- Access

	objects: ARRAYED_LIST [GB_OBJECT]
		-- All objects currently in system.

end -- class GB_OBJECT_HANDLER
