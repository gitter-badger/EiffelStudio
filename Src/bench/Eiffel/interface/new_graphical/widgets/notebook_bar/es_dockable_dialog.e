indexing
	description: "[
			Dialogs that are created by the Vision2 docking mechanism when
			an EV_DOCKABLE_SOURCE is dropped while not over a valid EV_DOCKABLE_TARGET.
			The transported component will be inserted into `Current', and when `Current'
			is destroyed, it will be restored back to its original position before the
			transport began.
		]"
	status: "See notice at end of class"
	date: "$Date$"
	revision: "$Revision$"

class
	ES_DOCKABLE_DIALOG
	
inherit
	EV_DIALOG
		export
			{ANY} close_request_actions, implementation
		end

feature -- Access

	original_parent: EV_CONTAINER
			-- Original parent of `item' before it was
			-- dragged out.
			
	original_parent_index: INTEGER
			-- Original index of `item' in parent before it was
			-- dragged out.
			
	expansion_was_disabled: BOOLEAN
		-- Was `item' originally disabled in `original_parent'? This
		-- may only be True if `original_parent' is an EV_BOX.

feature -- Implementation

	set_original_parent (an_original_parent: EV_CONTAINER) is
			-- Assign `an_original_parent' to `original_parent'.
		do
			original_parent := an_original_parent
		end
		
	set_original_parent_index (an_index: INTEGER) is
			-- Assign `an_index' to `original_parent_index'.
		do
			original_parent_index := an_index
		end
		
	set_expansion_was_disabled is
			-- Assign `True' to `expansion_was_disabled'.
		do
			expansion_was_disabled := True
		end
		
	enable_closeable is
		do
			implementation.enable_closeable
		end

end -- class ES_DOCKABLE_DIALOG
