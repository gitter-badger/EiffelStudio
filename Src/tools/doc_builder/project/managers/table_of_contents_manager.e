indexing
	description: "Manager for Table of Contents."
	date: "$Date$"
	revision: "$Revision$"

class
	TABLE_OF_CONTENTS_MANAGER

inherit
	SHARED_OBJECTS
	
	XML_ROUTINES
	
	TABLE_OF_CONTENTS_CONSTANTS

create
	make

feature -- Creation

	make is
			-- Create 
		do
			create loaded_tocs.make (0)
			create loaded_widgets.make (0)
			counter := 0
		end
		
feature -- TOC Management

	new_toc is
			-- A new empty toc
		do
			create loaded_toc.make_empty
			loaded_tocs.extend (loaded_toc, loaded_toc.name)
			load_toc (loaded_toc.name)
		end		

	open_toc is
			-- Open toc from file
		local
			l_open_dialog: EV_FILE_OPEN_DIALOG
		do
			create l_open_dialog
			l_open_dialog.show_modal_to_window (parent_window)
			if l_open_dialog.selected_button.is_equal ((create {EV_DIALOG_CONSTANTS}).ev_open) then
				load_toc (l_open_dialog.file_name)
			end
		end		
	
	save_toc is
			-- Save loaded toc
		do	
			synchronize			
			loaded_toc.save			
			loaded_tocs.replace_key (loaded_toc.name, loaded_toc.old_name)
			loaded_widgets.replace_key (loaded_toc.name, loaded_toc.old_name)
		end		
	
	build_toc (a_dir: DIRECTORY) is
			-- Build toc from contents of `a_dir'
		local
			l_loaded_toc: TABLE_OF_CONTENTS
		do
			create l_loaded_toc.make_from_directory (a_dir)
			loaded_tocs.extend (l_loaded_toc, l_loaded_toc.name)
			load_toc (l_loaded_toc.name)
		end	
		
	load_toc (a_name: STRING) is
			-- Load a toc from `a_name'
		require
			filename_not_void: a_name /= Void
		local
			xml: XM_DOCUMENT
			xml_toc_converter: XML_TABLE_OF_CONTENTS_CONVERTER
		do				
			if loaded_tocs.has (a_name) then
				loaded_toc := loaded_tocs.item (a_name)
			else
						-- Create XML document from `a_filename'
				xml ?= deserialize_document (create {FILE_NAME}.make_from_string (a_name))
				if xml /= Void then
					create xml_toc_converter.make
					xml_toc_converter.process_document (xml)
					loaded_toc := xml_toc_converter.toc
					loaded_toc.set_name (a_name)
					loaded_tocs.extend (loaded_toc, a_name)
					xml_toc_converter := Void					
				end
			end
			display_toc
		end		
		
	new_node (is_heading: BOOLEAN) is
			-- Add new node to `displayed_toc'
		local
			l_new_node: TABLE_OF_CONTENTS_WIDGET_NODE
		do
			create l_new_node.make ("New Topic", Void, next_id, is_heading)
			displayed_toc.add_node (l_new_node)
		end		
		
	remove_node is
			-- Remove selected node in displayed toc
		do
			if displayed_toc.selected_item /= Void then
				displayed_toc.remove_node
			end	
		end		
		
	toggle_include_node is
			-- Toggle `included' property of selected node in displayed toc for sorting and generation
		local
			l_node: TABLE_OF_CONTENTS_WIDGET_NODE
		do
			if displayed_toc.selected_item /= Void then
				l_node ?= displayed_toc.selected_item
				if l_node /= Void then
					l_node.set_included (not l_node.include)
					displayed_toc.set_modified (True)
				end
			end	
		end		
		
feature -- Commands		
		
	sort_toc (index_root, empty_elements, no_index, sub_elements, alpha: BOOLEAN) is
			-- Sort `loaded toc'
		do	
			loaded_toc := clone (loaded_toc)
			synchronize
			loaded_toc.set_name (next_toc_name)
			loaded_toc.set_make_index_root (index_root)
			loaded_toc.set_filter_empty_nodes (not empty_elements)
			loaded_toc.set_filter_nodes_no_index (not no_index)
			loaded_toc.set_filter_skipped_sub_nodes (not sub_elements)			
			loaded_toc.set_filter_alphabetically (alpha)
			loaded_toc.sort	
			loaded_tocs.extend (loaded_toc, loaded_toc.name)
			load_toc (loaded_toc.name)
		end		

	synchronize is
			-- Synchronize loaded toc with widget
		local
			l_name: STRING
			l_persisted: BOOLEAN
		do
			l_persisted := loaded_toc.is_persisted			
			if displayed_toc.modified then				
				l_name := loaded_toc.name
				create loaded_toc.make_from_tree (displayed_toc)
				loaded_toc.set_name (l_name)				
				displayed_toc.set_modified (False)
				loaded_toc.set_persisted (l_persisted)
			end	
		end		

feature -- Access

	loaded_toc: TABLE_OF_CONTENTS
			-- Toc currently loaded (Void if none loaded)

	displayed_tocs_list: ARRAY [STRING] is
			-- Return a list of all toc widgets names
		do
			Result := loaded_widgets.current_keys
		end		

	toc_by_name (a_name: STRING): TABLE_OF_CONTENTS is
			-- Return toc by name
		do
			if loaded_tocs.has (a_name) then
				Result := loaded_tocs.item (a_name)
			end
		end	

feature -- Query

	is_empty: BOOLEAN is
			-- Is Current empty?
		do
			Result := loaded_tocs.is_empty	
		end	

feature {TABLE_OF_CONTENTS, TABLE_OF_CONTENTS} -- Query

	next_toc_name: STRING is
			-- Next generated unique toc name
		do
			create Result.make_from_string ("TOC_" + counter.out)
			counter := counter + 1
		end

feature {NONE} -- Implementation
						
	loaded_tocs: HASH_TABLE [TABLE_OF_CONTENTS, STRING]
			-- Loaded tocs hashed by associated name
			
	loaded_widgets: HASH_TABLE [TABLE_OF_CONTENTS_WIDGET, STRING]
			-- Loaded TOC tree widgets

	parent_window: DOC_BUILDER_WINDOW is
			-- Parent window
		once
			Result := Application_window
		end

	counter: INTEGER
			-- Increment

	displayed_toc: TABLE_OF_CONTENTS_WIDGET
			-- Currently displayed toc widget
	
	display_toc is
			-- Display `loaded_toc' as widget
		local
			l_name: STRING
		do
			l_name := loaded_toc.name
			if loaded_widgets.has (l_name) then
				displayed_toc := loaded_widgets.item (l_name)
			else
				create displayed_toc.make (loaded_toc)
				loaded_widgets.extend (displayed_toc, loaded_toc.name)
			end
			Parent_window.set_toc_widget (displayed_toc)
			Parent_window.update
		end		
		
end -- class TABLE_OF_CONTENTS_MANAGER
