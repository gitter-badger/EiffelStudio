indexing
	description: "Objects that retrieve an XML representation of the window that%
		% was built previsouly, and creates it in the system."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GB_XML_LOAD
	
inherit
	TOE_TREE_FACTORY
	
	XML_UTILITIES
	
	GB_ACCESSIBLE
	
	INTERNAL
	
	GB_CONSTANTS
	
	GB_ACCESSIBLE_OBJECT_HANDLER
		undefine
			default_create, is_equal, copy
		end
		
	GB_ACCESSIBLE_DEFERRED_BUILDER

feature -- Basic operation

	load is
			--
		do
				-- Do initialization necessary
			parser := create_tree_parser
			create type_string.make_from_string ("type")
			
				-- Load and parse file `filename'.
			load_and_parse_xml_file (filename)
			
				-- Build deferred parts.
			deferred_builder.build
			
				-- Set up the drop actions on all objects just loaded.
			--object_handler.for_all_objects_build_drop_actions_for_new_object
		end
		
feature {NONE} -- Implementation

	build_window (window: XML_ELEMENT) is
			-- Build a window representing `window'.
		local
			current_element: XML_ELEMENT
			--a_class_name: STRING
			gb_ev_any: GB_EV_ANY
			current_name: STRING
			window_object: GB_OBJECT
			layout_constructor_item: GB_LAYOUT_CONSTRUCTOR_ITEM
		do
			io.putstring (window.name.to_utf8 + "%N")
			io.putstring (window.attribute_by_name (type_string).value.to_utf8 + "%N")
				--| FIXME we must now look at the current type of `window'
				--| which must be an EV_TITLED_WINDOW, and then add any attributes that
				--| are specific to EV_TITLED_WINDOW
			from
				window.start
			until
				window.off
			loop
				current_element ?= window.item_for_iteration
				if current_element /= Void then
					current_name := current_element.name.to_utf8
					io.putstring (current_name + "%N")
					if current_name.is_equal (Item_string) then
						-- The element represents an item, so we must add new objects.
									
						layout_constructor_item ?= layout_constructor.first
						check
							layout_item_not_void: layout_constructor_item /= Void
						end
						window_object ?= layout_constructor_item.object
						check
							window_object_not_void: window_object /= Void
						end
						build_new_object (current_element, window_object)
					else
							-- We must check for internal properties, else set the properties of the component
						if current_name.is_equal (Internal_properties_string) then
							layout_constructor_item ?= layout_constructor.first
							check
								layout_item_not_void: layout_constructor_item /= Void
							end
							window_object ?= layout_constructor_item.object
							check
								window_object_not_void: window_object /= Void
							end
							window_object.modify_from_xml (current_element)
						else
							-- We must now set the properties of window.
							-- First generate the name of the class to build.
					--	a_class_name := "GB_" + current_element.name.to_utf8
						
							-- Create the class.
						gb_ev_any ?= new_instance_of (dynamic_type_from_string ("GB_" + current_name))
						
							-- Call default_create on `gb_ev_any'
						gb_ev_any.default_create
						
							-- Ensure that the new class exists.
						check
							new_instance_exists: gb_ev_any /= Void
						end
						
							-- Add the appropriate objects to `objects'.
						gb_ev_any.add_object (display_window)
						gb_ev_any.add_object (builder_window)
						
							-- Call `modify_from_xml' which should modify the objects.
						gb_ev_any.modify_from_xml (current_element)
						end
					end
				end
				window.forth
			end
		end
		
	build_new_object (element: XML_ELEMENT; object: GB_OBJECT) is
			-- Build a new object from information in `element'.
		require
			element_not_void: element /= Void
			element_type_is_item: element.name.to_utf8.is_equal (Item_string)
		local
			new_object: GB_OBJECT
			widget: EV_WIDGET
			current_element: XML_ELEMENT
			gb_ev_any: GB_EV_ANY
			current_name: STRING
			window_object: GB_OBJECT
			layout_constructor_item: GB_LAYOUT_CONSTRUCTOR_ITEM
			display_object: GB_DISPLAY_OBJECT
		do
			new_object := object_handler.build_object_from_string (element.attribute_by_name (type_string).value.to_utf8)
			
			object_handler.add_object (object, new_object, object.layout_item.count + 1)
			from
				element.start
			until
				element.off
			loop
				current_element ?= element.item_for_iteration
				if current_element /= Void then
					current_name := current_element.name.to_utf8
					io.putstring (current_name + "%N")
					if current_name.is_equal (Item_string) then
						-- The element represents an item, so we must add new objects.
					
					
											
						layout_constructor_item ?= layout_constructor.first
						check
							layout_item_not_void: layout_constructor_item /= Void
						end
						window_object ?= layout_constructor_item.object
						check
							window_object_not_void: window_object /= Void
						end
						build_new_object (current_element, new_object)
					else
						-- We must check for internal properties, else set the properties of the component
						if current_name.is_equal (Internal_properties_string) then
							new_object.modify_from_xml (current_element)
						else
						
							-- Create the class.
						gb_ev_any ?= new_instance_of (dynamic_type_from_string ("GB_" + current_name))
						
							-- Call default_create on `gb_ev_any'
						gb_ev_any.default_create
						
							-- Ensure that the new class exists.
						check
							new_instance_exists: gb_ev_any /= Void
						end
						
							-- Add the appropriate objects to `objects'.
						gb_ev_any.add_object (new_object.object)
						display_object ?= new_object.display_object
						if display_object = Void then
							gb_ev_any.add_object (new_object.display_object)
						else
							gb_ev_any.add_object (display_object.child)
						end
						
							-- Call `modify_from_xml' which should modify the objects.
						gb_ev_any.modify_from_xml (current_element)
						end
					end
				end
				element.forth
			end
		end
		
		
		

	create_system is
			-- Create a system from the parsed XML file.
		local
			application_element: XML_ELEMENT
			window_element: XML_ELEMENT
		do
			application_element := parser.document.root_element
			from
				application_element.start
			until
				application_element.off
			loop
					--| FIXME We are assuming that an application only
					--| ever contains windows. This may be wrong.
				window_element ?= application_element.item_for_iteration
				if window_element /= Void then
					build_window (window_element)	
				end
				application_element.forth
			end
		end

	load_and_parse_xml_file (a_filename:STRING) is
			-- Load file `a_filename' and parse.
		local
			temp_window: EV_TITLED_WINDOW
			error_dialog:EV_ERROR_DIALOG
		do
			parse_file (a_filename)
			if not parser.is_correct then
				create temp_window
				create error_dialog.make_with_text ("Invalid XML Schema.")
				error_dialog.show_modal_to_window (temp_window)
				temp_window.destroy
			else
				create_system
			end
		end
		
	parse_file (a_filename: STRING) is
			-- Parse XML file `filename' with `parser'.
		local
			file: RAW_FILE
			buffer: STRING
		do
			create file.make_open_read (a_filename)
			create buffer.make (file.count) 
			file.start
			file.read_stream (file.count)
			buffer := file.last_string
			parser.parse_from_string (buffer)
			parser.set_end_of_document
		end


	parser: XML_TREE_PARSER
		-- XML tree parser.
		
	filename: STRING is "D:\work\build2\xml_output.xml"
		-- File to be generated.
		
	document: XML_DOCUMENT
		-- XML document generated from created window.
	
	
	--|FIXME I think this should be a constant.
	type_string: UCSTRING
		-- Constant used for matching type identifier.
end -- class GB_XML_LOAD
