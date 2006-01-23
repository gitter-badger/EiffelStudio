indexing
	description: "Control interfaces. Help file: "
	legal: "See notice at end of class."
	status: "See notice at end of class."
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	TAG_BIND_OPTS2_RECORD

inherit
	ECOM_STRUCTURE
		redefine
			make
		end

create
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

	cb_struct: INTEGER is
			-- No description available.
		do
			Result := ccom_tag_bind_opts2_cb_struct (item)
		end

	grf_flags: INTEGER is
			-- No description available.
		do
			Result := ccom_tag_bind_opts2_grf_flags (item)
		end

	grf_mode: INTEGER is
			-- No description available.
		do
			Result := ccom_tag_bind_opts2_grf_mode (item)
		end

	dw_tick_count_deadline: INTEGER is
			-- No description available.
		do
			Result := ccom_tag_bind_opts2_dw_tick_count_deadline (item)
		end

	dw_track_flags: INTEGER is
			-- No description available.
		do
			Result := ccom_tag_bind_opts2_dw_track_flags (item)
		end

	dw_class_context: INTEGER is
			-- No description available.
		do
			Result := ccom_tag_bind_opts2_dw_class_context (item)
		end

	locale: INTEGER is
			-- No description available.
		do
			Result := ccom_tag_bind_opts2_locale (item)
		end

	p_server_info: X_COSERVERINFO_RECORD is
			-- No description available.
		do
			Result := ccom_tag_bind_opts2_p_server_info (item)
		end

feature -- Measurement

	structure_size: INTEGER is
			-- Size of structure
		do
			Result := c_size_of_tag_bind_opts2
		end

feature -- Basic Operations

	set_cb_struct (a_cb_struct: INTEGER) is
			-- Set `cb_struct' with `a_cb_struct'.
		do
			ccom_tag_bind_opts2_set_cb_struct (item, a_cb_struct)
		end

	set_grf_flags (a_grf_flags: INTEGER) is
			-- Set `grf_flags' with `a_grf_flags'.
		do
			ccom_tag_bind_opts2_set_grf_flags (item, a_grf_flags)
		end

	set_grf_mode (a_grf_mode: INTEGER) is
			-- Set `grf_mode' with `a_grf_mode'.
		do
			ccom_tag_bind_opts2_set_grf_mode (item, a_grf_mode)
		end

	set_dw_tick_count_deadline (a_dw_tick_count_deadline: INTEGER) is
			-- Set `dw_tick_count_deadline' with `a_dw_tick_count_deadline'.
		do
			ccom_tag_bind_opts2_set_dw_tick_count_deadline (item, a_dw_tick_count_deadline)
		end

	set_dw_track_flags (a_dw_track_flags: INTEGER) is
			-- Set `dw_track_flags' with `a_dw_track_flags'.
		do
			ccom_tag_bind_opts2_set_dw_track_flags (item, a_dw_track_flags)
		end

	set_dw_class_context (a_dw_class_context: INTEGER) is
			-- Set `dw_class_context' with `a_dw_class_context'.
		do
			ccom_tag_bind_opts2_set_dw_class_context (item, a_dw_class_context)
		end

	set_locale (a_locale: INTEGER) is
			-- Set `locale' with `a_locale'.
		do
			ccom_tag_bind_opts2_set_locale (item, a_locale)
		end

	set_p_server_info (a_p_server_info: X_COSERVERINFO_RECORD) is
			-- Set `p_server_info' with `a_p_server_info'.
		require
			non_void_a_p_server_info: a_p_server_info /= Void
			valid_a_p_server_info: a_p_server_info.item /= default_pointer
		do
			ccom_tag_bind_opts2_set_p_server_info (item, a_p_server_info.item)
		end

feature {NONE}  -- Externals

	c_size_of_tag_bind_opts2: INTEGER is
			-- Size of structure
		external
			"C [macro %"ecom_control_library_tagBIND_OPTS2_s.h%"]"
		alias
			"sizeof(ecom_control_library::tagBIND_OPTS2)"
		end

	ccom_tag_bind_opts2_cb_struct (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagBIND_OPTS2_s_impl.h%"](ecom_control_library::tagBIND_OPTS2 *):EIF_INTEGER"
		end

	ccom_tag_bind_opts2_set_cb_struct (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagBIND_OPTS2_s_impl.h%"](ecom_control_library::tagBIND_OPTS2 *, ULONG)"
		end

	ccom_tag_bind_opts2_grf_flags (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagBIND_OPTS2_s_impl.h%"](ecom_control_library::tagBIND_OPTS2 *):EIF_INTEGER"
		end

	ccom_tag_bind_opts2_set_grf_flags (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagBIND_OPTS2_s_impl.h%"](ecom_control_library::tagBIND_OPTS2 *, ULONG)"
		end

	ccom_tag_bind_opts2_grf_mode (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagBIND_OPTS2_s_impl.h%"](ecom_control_library::tagBIND_OPTS2 *):EIF_INTEGER"
		end

	ccom_tag_bind_opts2_set_grf_mode (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagBIND_OPTS2_s_impl.h%"](ecom_control_library::tagBIND_OPTS2 *, ULONG)"
		end

	ccom_tag_bind_opts2_dw_tick_count_deadline (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagBIND_OPTS2_s_impl.h%"](ecom_control_library::tagBIND_OPTS2 *):EIF_INTEGER"
		end

	ccom_tag_bind_opts2_set_dw_tick_count_deadline (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagBIND_OPTS2_s_impl.h%"](ecom_control_library::tagBIND_OPTS2 *, ULONG)"
		end

	ccom_tag_bind_opts2_dw_track_flags (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagBIND_OPTS2_s_impl.h%"](ecom_control_library::tagBIND_OPTS2 *):EIF_INTEGER"
		end

	ccom_tag_bind_opts2_set_dw_track_flags (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagBIND_OPTS2_s_impl.h%"](ecom_control_library::tagBIND_OPTS2 *, ULONG)"
		end

	ccom_tag_bind_opts2_dw_class_context (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagBIND_OPTS2_s_impl.h%"](ecom_control_library::tagBIND_OPTS2 *):EIF_INTEGER"
		end

	ccom_tag_bind_opts2_set_dw_class_context (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagBIND_OPTS2_s_impl.h%"](ecom_control_library::tagBIND_OPTS2 *, ULONG)"
		end

	ccom_tag_bind_opts2_locale (a_pointer: POINTER): INTEGER is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagBIND_OPTS2_s_impl.h%"](ecom_control_library::tagBIND_OPTS2 *):EIF_INTEGER"
		end

	ccom_tag_bind_opts2_set_locale (a_pointer: POINTER; arg2: INTEGER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagBIND_OPTS2_s_impl.h%"](ecom_control_library::tagBIND_OPTS2 *, ULONG)"
		end

	ccom_tag_bind_opts2_p_server_info (a_pointer: POINTER): X_COSERVERINFO_RECORD is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagBIND_OPTS2_s_impl.h%"](ecom_control_library::tagBIND_OPTS2 *):EIF_REFERENCE"
		end

	ccom_tag_bind_opts2_set_p_server_info (a_pointer: POINTER; arg2: POINTER) is
			-- No description available.
		external
			"C++ [macro %"ecom_control_library_tagBIND_OPTS2_s_impl.h%"](ecom_control_library::tagBIND_OPTS2 *, ecom_control_library::_COSERVERINFO *)"
		end

indexing
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"




end -- TAG_BIND_OPTS2_RECORD

