indexing
	description: "Control interfaces. Help file: "
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	X_STGMEDIUM_UNION_RECORD

inherit
	ECOM_STRUCTURE
		redefine
			make
		end

	TYMED_ENUM

creation
	make,
	make_from_pointer

feature {NONE}  -- Initialization

	make is
			-- Make.
		do
			Precursor {ECOM_STRUCTURE}
		end

	make_from_pointer (a_pointer: POINTER) is
			-- Make from pointer.
		do
			make_by_pointer (a_pointer)
		end

feature -- Access

	tymed: INTEGER is
			-- See TYMED_ENUM for possible values.
		do
			Result := ccom_x_stgmedium_union_tymed (item)
		end

	u: X_STGMEDIUM_UNION is
			-- No description available.
		do
			Result := ccom_x_stgmedium_union_u (item)
		ensure
			valid_u: Result.item /= default_pointer
		end

feature -- Measurement

	structure_size: INTEGER is
			-- Size of structure
		do
			Result := c_size_of_x_stgmedium_union
		end

feature -- Basic Operations

	set_tymed (a_tymed: INTEGER) is
			-- Set `tymed' with `a_tymed'.
		do
			ccom_x_stgmedium_union_set_tymed (item, a_tymed)
		end

	set_u (a_u: X_STGMEDIUM_UNION) is
			-- Set `u' with `a_u'.
		require
			non_void_a_u: a_u /= Void
			valid_a_u: a_u.item /= default_pointer
		do
			ccom_x_stgmedium_union_set_u (item, a_u.item)
		end

feature {NONE}  -- Externals

	c_size_of_x_stgmedium_union: INTEGER is
			-- Size of structure
		external
			"C [macro %"ecom_control_library__STGMEDIUM_UNION_s.h%"]"
		alias
			"sizeof(ecom_control_library::_STGMEDIUM_UNION)"
		end

	ccom_x_stgmedium_union_tymed (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__STGMEDIUM_UNION_s_impl.h%"](ecom_control_library::_STGMEDIUM_UNION *):EIF_INTEGER"
		end

	ccom_x_stgmedium_union_set_tymed (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__STGMEDIUM_UNION_s_impl.h%"](ecom_control_library::_STGMEDIUM_UNION *, ULONG)"
		end

	ccom_x_stgmedium_union_u (a_pointer: POINTER): X_STGMEDIUM_UNION is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__STGMEDIUM_UNION_s_impl.h%"](ecom_control_library::_STGMEDIUM_UNION *):EIF_REFERENCE"
		end

	ccom_x_stgmedium_union_set_u (a_pointer: POINTER; arg2: POINTER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library__STGMEDIUM_UNION_s_impl.h%"](ecom_control_library::_STGMEDIUM_UNION *, ecom_control_library::__MIDL_IAdviseSink_0003 *)"
		end

end -- X_STGMEDIUM_UNION_RECORD

