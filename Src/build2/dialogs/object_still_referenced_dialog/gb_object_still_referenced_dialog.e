indexing
	description: "Objects that represent an EV_DIALOG.%
		%The original version of this class was generated by EiffelBuild."
	date: "$Date$"
	revision: "$Revision$"

class
	GB_OBJECT_STILL_REFERENCED_DIALOG

inherit
	GB_OBJECT_STILL_REFERENCED_DIALOG_IMP
		redefine
			destroy
		end
	
	GB_SHARED_OBJECT_HANDLER
		export
			{NONE} all
		undefine
			default_create, copy, is_equal
		end
		
	GB_SHARED_TOOLS
		export
			{NONE} all
		undefine
			default_create, copy, is_equal
		end
		
	GB_CONSTANTS
		export
			{NONE} all
		undefine
			default_create, copy, is_equal
		end

create
	make_with_object

feature {NONE} -- Initialization

	make_with_object (an_object: GB_OBJECT) is
			-- Create `Current' and associate `an_object'.
		require
			an_object_not_void: an_object /= Void
		do
			default_create
			object := an_object
			object.instance_referers.start
			if an_object.instance_referers.count = 1 then
				view_next_button.set_text ("View referer")
				error_label.set_text (cannot_delete_as_still_referenced_single)
			else
				view_next_button.set_text ("View next")
				error_label.set_text (cannot_delete_as_still_referenced_multiple)
			end
		end

	user_initialization is
			-- called by `initialize'.
			-- Any custom user initialization that
			-- could not be performed in `initialize',
			-- (due to regeneration of implementation class)
			-- can be added here.
		local
			pixmap: EV_PIXMAP
		do
			pixmap := (create {EV_STOCK_PIXMAPS}).warning_pixmap.twin
			pixmap.set_minimum_size (pixmap.width, pixmap.height)
			pixmap_cell.extend (pixmap)
		ensure then
			pixmap_cell_full: pixmap_cell.full
		end

feature {NONE} -- Implementation

	object: GB_OBJECT
		-- Object to which `Current' references.

	flatten_all_instances is
			-- Called by `select_actions' of `flatten_all_instances_button'.
		local
			command_flatten: GB_COMMAND_FLATTEN_OBJECT
			current_object: GB_OBJECT
			linear_rep: ARRAYED_LIST [INTEGER]
		do
			linear_rep := object.instance_referers.linear_representation
			from
				linear_rep.start
			until
				linear_rep.off
			loop
				current_object := object_handler.deep_object_from_id (linear_rep.item)
				if not object_handler.deleted_objects.has (current_object.id) then
					create command_flatten.make (current_object, False)
					command_flatten.execute
				end
				linear_rep.forth
			end
			destroy
		end
	
	view_next is
			-- Called by `select_actions' of `view_next_button'.
		local
			current_object_instance: GB_OBJECT
			locked_in_here: BOOLEAN
		do
			from
			until
				current_object_instance /= Void
			loop
					-- Find the next instance that has not already been deleted.
				current_object_instance := object_handler.deep_object_from_id (object.instance_referers.item_for_iteration)
				if object_handler.deleted_objects.has (current_object_instance.id) then
					current_object_instance := Void
				end
				object.instance_referers.forth
				if object.instance_referers.off then
					object.instance_referers.start
				end
			end
			
			if ((create {EV_ENVIRONMENT}).application).locked_window = Void then
				main_window.lock_update
				locked_in_here := True
			end
			current_object_instance.top_level_parent_object.window_selector_item.enable_select
			current_object_instance.layout_item.enable_select
			if locked_in_here then
				main_window.unlock_update
			end
			
			object.instance_referers.forth
			if object.instance_referers.off then
				object.instance_referers.start
			end
		end
	
	cancel_selected is
			-- Called by `select_actions' of `cancel_button'.
		do
			destroy
		end
		
	destroy is
			-- Destroy `Current'.
		do
			is_destroying := True
			Precursor {GB_OBJECT_STILL_REFERENCED_DIALOG_IMP}
		ensure then
			is_destroying: is_destroying
		end
	
	is_destroying: BOOLEAN
		-- Is `Current' in the process of destroying?

invariant
	object_not_void: object /= Void
	object_has_instance_referers: not is_destroying implies not object.instance_referers.is_empty

end -- class GB_OBJECT_STILL_REFERENCED_DIALOG

