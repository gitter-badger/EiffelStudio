indexing
	description: "Creator of Record Descriptors"
	status: "See notice at end of class"
	date: "$Date$"
	revision: "$Revision$"

class
	WIZARD_RECORD_DESCRIPTOR_CREATOR

inherit
	WIZARD_TYPE_DESCRIPTOR_CREATOR

	WIZARD_SHARED_DESCRIPTOR_FACTORIES
		export
			{NONE} all
		end

	WIZARD_WRITER_DICTIONARY
		export
			{NONE} all
		end

	ECOM_VAR_TYPE
		export
			{NONE} all
		end

	ECOM_TYPE_KIND

feature -- Basic operations

	create_descriptor (a_documentation: ECOM_DOCUMENTATION; a_type_info: ECOM_TYPE_INFO): WIZARD_RECORD_DESCRIPTOR is
			-- Initialize `fields'
			-- and `eiffel_class_name'
		require
			valid_type_info: a_type_info /= Void and then a_type_info.type_attr.type_kind = Tkind_record
			valid_documentation: a_documentation /= Void
		local
			tmp_type_lib: ECOM_TYPE_LIB
			tmp_guid: ECOM_GUID
			tmp_lib_descriptor: WIZARD_TYPE_LIBRARY_DESCRIPTOR
		do
			name := clone (a_documentation.name)
			description := clone (a_documentation.doc_string)
			type_kind := a_type_info.type_attr.type_kind

			tmp_type_lib := a_type_info.containing_type_lib
			tmp_guid := tmp_type_lib.library_attributes.guid
			tmp_lib_descriptor := system_descriptor.library_descriptor (tmp_guid)
			if name = Void or else name.empty then
				create name.make (0)
				name.append ("struct_")
				name.append (tmp_lib_descriptor.name)
				name.append ("_")
				name.append_integer (a_type_info.index_in_type_lib + 1)
			end
			create eiffel_class_name.make (0)
			eiffel_class_name.append (name_for_class (name, type_kind, False))
			eiffel_class_name.to_upper

			create c_type_name.make (0)
			c_type_name.append (name)
			
			create c_header_file_name.make (0)
			if not Non_generated_type_libraries.has (tmp_lib_descriptor.guid) then
				c_header_file_name.append ("ecom_")
				c_header_file_name.append (name)
				c_header_file_name.append (".h")
			end

			create_field_descriptors (a_type_info)
			size_of_instance := a_type_info.type_attr.size_instance

			create Result.make (Current)
		ensure then
			non_void_fields: fields /= Void
			non_void_class_name: eiffel_class_name /= Void
		end

	create_field_descriptors (a_type_info: ECOM_TYPE_INFO) is
			-- Create field descriptors
		require
			valid_type_info: a_type_info /= Void
		local
			i, count: INTEGER
			field_descriptor: WIZARD_RECORD_FIELD_DESCRIPTOR
		do
			count := a_type_info.type_attr.count_variables
			from
				i := 0
				create fields.make
			variant
				count - i
			until
				i = count
			loop
				field_descriptor := record_field_descriptor_factory.create_descriptor(a_type_info, i, system_descriptor)
				fields.force (field_descriptor)
				i := i + 1
			end
		ensure
			fields_created: a_type_info.type_attr.count_variables > 0 implies
					fields /= Void and then 
					fields.count = a_type_info.type_attr.count_variables
		end

	initialize_descriptor (a_descriptor: WIZARD_RECORD_DESCRIPTOR) is
				-- Intialize Descriptor
			require
				valid_descriptor: a_descriptor /= Void
			do
				set_common_fields (a_descriptor)
				a_descriptor.set_fields (fields)
				a_descriptor.set_size (size_of_instance)
				if description /= Void and then not description.empty then
					a_descriptor.set_description (description)
				else
					a_descriptor.set_description (No_description_available)
				end
			end

feature {NONE} -- Implementation

	fields: SORTED_TWO_WAY_LIST[WIZARD_RECORD_FIELD_DESCRIPTOR]
			-- Descriptions of structure's fields

	size_of_instance: INTEGER
			-- Size of instance of this type

end -- class WIZARD_RECORD_DESCRIPTOR_CREATOR

--|----------------------------------------------------------------
--| EiffelCOM: library of reusable components for ISE Eiffel.
--| Copyright (C) 1988-1999 Interactive Software Engineering Inc.
--| All rights reserved. Duplication and distribution prohibited.
--| May be used only with ISE Eiffel, under terms of user license. 
--| Contact ISE for any other use.
--|
--| Interactive Software Engineering Inc.
--| ISE Building, 2nd floor
--| 270 Storke Road, Goleta, CA 93117 USA
--| Telephone 805-685-1006, Fax 805-685-6869
--| Electronic mail <info@eiffel.com>
--| Customer support http://support.eiffel.com
--| For latest info see award-winning pages: http://www.eiffel.com
--|----------------------------------------------------------------

