--| FIXME NOT_REVIEWED this file has not been reviewed
indexing
	description: "Eiffel Vision tree node. GTK+ implementation."
	status: "See notice at end of class"
	date: "$Date$"
	revision: "$Revision$"

class
	EV_TREE_NODE_IMP

inherit
	EV_TREE_NODE_I
		redefine
			interface
		select
			interface
		end
	
	EV_ITEM_IMP
		rename
			parent as old_parent
		export
			{NONE} old_parent
		redefine
			interface,
			initialize,
			minimum_width,
			minimum_height
		end
	
	EV_ITEM_LIST_IMP [EV_TREE_NODE]
		rename
			interface as il_interface
		redefine
			insert_i_th,
			remove_i_th,
			list_widget
		end

	EV_TEXTABLE_IMP
		redefine
			interface
		end

	EV_TOOLTIPABLE_IMP
		redefine
			interface
		end

create
	make

feature {NONE} -- Initialization

	make (an_interface: like interface) is
			-- Create the tree item.
		do
			base_make (an_interface)
			set_c_object (C.gtk_tree_item_new)
		end

	initialize is
			-- Set up action sequence connection and `Precursor' initialization,
			-- create item box to hold label and pixmap.
		do
			--{EV_PRIMITIVE_IMP} Precursor
			pixmapable_imp_initialize
			textable_imp_initialize
			initialize_item_box
			connect_signal_to_actions (
				"collapse",
				interface.collapse_actions,
				Void
			)
			connect_signal_to_actions (
				"expand",
				interface.expand_actions,
				Void
			)
			is_initialized := True
			align_text_left
		end

	select_callback (a_tree_item: POINTER) is
			-- Called when a tree item is selected
		local
			par_tree_imp: EV_TREE_IMP
		do
		 	par_tree_imp ?= parent_tree.implementation
			par_tree_imp.select_callback (a_tree_item)
		end

	initialize_item_box is
			-- Create and initialize item box.
		local
			box: POINTER
		do
			box := C.gtk_hbox_new (False, 0)
			C.gtk_container_add (c_object, box)
			C.gtk_widget_show (box)
			C.gtk_box_pack_start (box, pixmap_box, False, False, 0)
			C.gtk_widget_hide (pixmap_box)
			C.gtk_box_pack_start (box, text_label, True, True, 2)
			C.gtk_widget_hide (text_label)
		ensure
			item_box /= NULL
		end

feature -- Status report

	is_selected: BOOLEAN is
			-- Is the item selected ?
		local
			list_pointer: POINTER
			sel_list: LINKED_LIST [POINTER]
		do
			list_pointer := GTK_TREE_SELECTION (parent_imp.list_widget)
			sel_list := gslist_to_eiffel (list_pointer)
			Result := sel_list.has (c_object)
		end

	is_expanded: BOOLEAN is
			-- is the item expanded ?
		do
			Result := C.gtk_tree_item_struct_expanded (c_object).to_boolean
		end

feature -- Status setting


	--| FIXME IEK Normal selection routine causes
	--| unwanted buggy behaviour in tree.

	enable_select is do check to_be_implemented: False end end

	disable_select is do check to_be_implemented: False end end
	
	set_expand (a_flag: BOOLEAN) is
			-- Expand the item if `flag', collapse it otherwise.
		do
			if a_flag then
				C.gtk_tree_item_expand (c_object)
			else
				C.gtk_tree_item_collapse (c_object)
			end
		end

feature {NONE} -- Implementation

	sub_tree: POINTER is
		do
			Result := C.gtk_tree_new
				-- Connect events to items own tree.
			real_signal_connect (
				Result,
				"select_child",
				~select_callback, default_translate
			)
				--| Gtk bug means that select_child signal gets
				--| fired on button click regardless.
		end

	insert_i_th (v: like item; i: INTEGER) is
			-- Add `v' to tree items tree at position `i'.
		local
			item_imp: EV_TREE_NODE_IMP
			item_subtree: POINTER
			p: POINTER
		do
			item_imp ?= v.implementation
			item_imp.set_parent_imp (Current)
			C.gtk_widget_show (item_imp.c_object)
			item_subtree := C.gtk_tree_item_struct_subtree (c_object)

			if list_widget = NULL then
				set_dummy_list_widget (sub_tree)
			end
			p := C.gtk_widget_struct_parent (item_imp.c_object)
			check
				null_parent: C.gtk_widget_struct_parent (item_imp.c_object) = NULL
			end
			if item_subtree /= NULL then
				C.gtk_tree_insert (
					item_subtree,
					item_imp.c_object,
					i - 1
				)
			else
				C.gtk_tree_insert (
					dummy_list_widget,
					item_imp.c_object,
					i - 1
				)

				if parent /= Void then
					C.gtk_tree_item_set_subtree (
						c_object,
						dummy_list_widget
					)
					set_dummy_list_widget (NULL)
				end
			end

			if item_imp.dummy_list_widget /= NULL then
				--| FIXME IEK This function seems to dereference
				--| the dummy list widget on list widget retrieval.
				C.gtk_tree_item_set_subtree (
					item_imp.c_object,
					item_imp.dummy_list_widget
				)
				item_imp.set_dummy_list_widget (NULL)
			end
		end

	remove_i_th (a_position: INTEGER) is
			-- Remove item at `a_position'
		local
			item_imp: EV_TREE_NODE_IMP
		do	
			item_imp ?= i_th (a_position).implementation
			item_imp.set_parent_imp (Void)
			item_imp.set_dummy_list_widget (item_imp.list_widget)
			if item_imp.list_widget /= NULL then
				C.gtk_widget_ref (item_imp.list_widget)
			end	
			Precursor (a_position)
		end

	item_box: POINTER is
			-- GTKHbox in tree item.
			-- Holds pixmap and label.
		do
			Result := C.gtk_container_children (c_object)
			Result := C.g_list_nth_data (Result, 0)
		end

	gtk_reorder_child (a_container, a_child: POINTER; a_pos: INTEGER) is
			-- Not needed in this class.
		do
			check dont_call: False end
		end

feature {NONE} -- Implementation

	minimum_width, minimum_height: INTEGER
		-- Redefined to avoid seg faults from invariant calling
		-- invalid features for items.

feature {EV_ITEM_LIST_IMP} -- Implementation

	set_dummy_list_widget (list_wid: POINTER) is
		do
			dummy_list_widget := list_wid
		end

	dummy_list_widget: POINTER
			-- Used to temporary store list widget if not in parent.

	list_widget: POINTER is
			-- Pointer to the items own gtktree.
		do
			Result := C.gtk_tree_item_struct_subtree (c_object)
			if Result = NULL then
				Result := dummy_list_widget
			end
		end

feature {NONE} -- External  FIXME IEK Remove when macros are in gel.

	gtk_tree_root_tree (a_tree: POINTER): POINTER is
			-- Root tree of the item.
		external
			" C [macro <gtk/gtktree.h>]"
		alias
			"GTK_TREE_ROOT_TREE"
		end

	gtk_tree_selection (a_tree: POINTER): POINTER is
			-- Selection of root tree.
		external
			" C [macro <gtk/gtktree.h>]"
		alias
			"GTK_TREE_SELECTION"
		end

feature {EV_ANY_I} -- Implementation

	interface: EV_TREE_NODE
	
end -- class EV_TREE_NODE_IMP

--!-----------------------------------------------------------------------------
--! EiffelVision2: library of reusable components for ISE Eiffel.
--! Copyright (C) 1986-2000 Interactive Software Engineering Inc.
--! All rights reserved. Duplication and distribution prohibited.
--! May be used only with ISE Eiffel, under terms of user license. 
--! Contact ISE for any other use.
--!
--! Interactive Software Engineering Inc.
--! ISE Building, 2nd floor
--! 270 Storke Road, Goleta, CA 93117 USA
--! Telephone 805-685-1006, Fax 805-685-6869
--! Electronic mail <info@eiffel.com>
--! Customer support e-mail <support@eiffel.com>
--! For latest info see award-winning pages: http://www.eiffel.com
--!-----------------------------------------------------------------------------

--|-----------------------------------------------------------------------------
--| CVS log
--|-----------------------------------------------------------------------------
--|
--| $Log$
--| Revision 1.2  2000/06/07 17:27:29  oconnor
--| merged from DEVEL tag MERGED_TO_TRUNK_20000607
--|
--| Revision 1.1.2.3  2000/05/18 20:49:11  king
--| Renamed parent->old_parent
--|
--| Revision 1.1.2.2  2000/05/16 18:00:11  king
--| Made compilable
--|
--| Revision 1.1.2.1  2000/05/16 16:33:19  oconnor
--| mainly moved from ev_tree_item_imp.e
--|
--| Revision 1.28.4.3  2000/05/08 22:13:16  king
--| Corrected is_selecred, add comment to set_selected
--|
--| Revision 1.28.4.2  2000/05/05 22:18:47  king
--| Implemented to use insert_i_th
--|
--| Revision 1.28.4.1  2000/05/03 19:08:36  oconnor
--| mergred from HEAD
--|
--| Revision 1.55  2000/05/02 18:55:19  oconnor
--| Use NULL instread of Defualt_pointer in C code.
--| Use eiffel_to_c (a) instead of a.to_c.
--|
--| Revision 1.54  2000/04/20 18:07:37  oconnor
--| Removed default_translate where not needed in sognal connect calls.
--|
--| Revision 1.53  2000/04/12 18:49:55  brendel
--| Removed inheritance of EV_PICK_AND_DROPABLE_IMP (from EV_ITEM_IMP).
--| Removed inheritance of EV_C_UTIL (from EV_ANY_IMP).
--|
--| Revision 1.52  2000/04/07 22:35:53  brendel
--| Removed EV_SIMPLE_ITEM_IMP from inheritance.
--|
--| Revision 1.51  2000/04/06 20:27:05  brendel
--| Uncommented list_widget.
--|
--| Revision 1.50  2000/04/06 02:04:30  brendel
--| Changed to comply with new EV_DYNAMIC_LIST_IMP.
--| Does not work yet!
--|
--| Revision 1.49  2000/04/04 20:50:19  oconnor
--| updated signal connection for new marshaling scheme
--|
--| Revision 1.48  2000/03/13 22:05:16  king
--| Added referencing handling for reorder child
--|
--| Revision 1.47  2000/03/10 23:51:57  king
--| Fixed dereferencing of list widget
--|
--| Revision 1.46  2000/03/08 22:21:41  king
--| Added set_parent_imp in addition/removal
--|
--| Revision 1.45  2000/03/01 23:41:57  king
--| Corrected select_callback, check falsed set_selection
--|
--| Revision 1.44  2000/03/01 18:09:22  oconnor
--| released
--|
--| Revision 1.43  2000/03/01 18:04:44  king
--| Changed on_select bug comment
--|
--| Revision 1.42  2000/02/29 22:28:55  king
--| Tidied up code, fixed gtk select callback bug
--|
--| Revision 1.41  2000/02/29 18:43:40  king
--| Tidied up code
--|
--| Revision 1.40  2000/02/29 00:57:41  king
--| Added fixme to set_selected
--|
--| Revision 1.39  2000/02/28 23:59:31  king
--| Added root_tree macro
--|
--| Revision 1.38  2000/02/26 01:27:46  king
--| Implemented to contain children even if item has no parent
--|
--| Revision 1.36  2000/02/24 20:52:13  king
--| Inheriting from pick and dropable
--|
--| Revision 1.35  2000/02/24 20:09:40  king
--| Added subtree handling on addition and removal of items
--|
--| Revision 1.34  2000/02/24 18:47:55  king
--| Redefined min_wid/hgt to avoid invariant violation that doesnt apply to
--| feature needed by the tree item
--|
--| Revision 1.33  2000/02/24 01:42:14  king
--| Implemented event handling
--|
--| Revision 1.32  2000/02/22 23:57:11  king
--| Added subtree_set boolean
--|
--| Revision 1.31  2000/02/22 21:36:42  king
--| Initial implementation to fit with new structure
--|
--| Revision 1.30  2000/02/22 18:39:34  oconnor
--| updated copyright date and formatting
--|
--| Revision 1.29  2000/02/14 11:40:27  oconnor
--| merged changes from prerelease_20000214
--|
--| Revision 1.28.6.2  2000/01/27 19:29:26  oconnor
--| added --| FIXME Not for release
--|
--| Revision 1.28.6.1  1999/11/24 17:29:44  oconnor
--| merged with DEVEL branch
--|
--| Revision 1.28.2.3  1999/11/09 16:53:14  oconnor
--| reworking dead object cleanup
--|
--| Revision 1.28.2.2  1999/11/02 17:20:02  oconnor
--| Added CVS log, redoing creation sequence
--|
--|-----------------------------------------------------------------------------
--| End of CVS log
--|-----------------------------------------------------------------------------
