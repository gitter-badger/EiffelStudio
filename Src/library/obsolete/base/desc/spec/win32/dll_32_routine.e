note

	description:
		"32 bit DLL routine for Windows"
	legal: "See notice at end of class."

	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class DLL_32_ROUTINE

obsolete
	"This class should no longer be used due to platform dependence and non-64bit compliance"

inherit
	SHARED_LIBRARY_ROUTINE
		redefine
			shared_library
		end

create
	make_by_name, make_by_index

feature

	make_by_index (lib: DLL_32; r_index: INTEGER;
				arg_types: ARRAY [INTEGER]; ret_type: INTEGER)
			-- Connect to the routine of index `r_index' in library `lib'
		require
			library_exists: lib /= Void
			meaningful: lib.meaningful
			valid_index: r_index > 0
			valid_argument_array: arg_types /= Void
			valid_argument_types: valid_argument_types (arg_types)
			valid_return_type: valid_return_type (ret_type)
		do
			shared_library := lib
			library_index := r_index
			function_handle := desc_get_function_index_pointer (lib.module_handle, r_index)
			if function_handle /= default_pointer then
				error_code := No_error
			else
				error_code := No_routine
			end
			argument_types := arg_types
			return_type := ret_type
			make_argument_array
			routine_called := False
		ensure
			consistent_index: library_index = r_index
			consistent_lib: lib = shared_library
			routine_not_called: not routine_called
		end

	make_by_name (lib: DLL_32; f_name: STRING;
				arg_types: ARRAY [INTEGER]; ret_type: INTEGER)
			-- Connect to the routine `f_name' in library `lib'
		local
			c_func_name: ANY
		do
			shared_library := lib
			function_name := f_name
			c_func_name := f_name.to_c
			function_handle := win_get_proc_address (lib.module_handle, $c_func_name)
			if function_handle /= default_pointer then
				error_code := No_error
			else
				error_code := No_routine
			end
			argument_types := arg_types
			return_type := ret_type
			make_argument_array
			routine_called := False
		end

feature -- Basic operations

	call (args: ARRAY [ANY])
			-- Call the routine with actual arguments `args'
		local
			formal_args: ANY
			actual_args: ANY
		do
			fill_argument_array (args)
			actual_args := argument_array.area
			formal_args := argument_types.area

			inspect
				return_type
			when T_boolean then
				imp_boolean_result := desc_call_dll32_boolean (function_handle, arguments_size, $actual_args)
			when T_character then
				imp_character_result := desc_call_dll32_character (function_handle, arguments_size, $actual_args)
			when T_double then
				imp_double_result := desc_call_dll32_double (function_handle, arguments_size, $actual_args)
			when T_integer then
				imp_integer_result := desc_call_dll32_integer (function_handle, arguments_size, $actual_args)
			when T_real then
				imp_real_result := desc_call_dll32_real (function_handle, arguments_size, $actual_args)
			when T_pointer then
				imp_pointer_result := desc_call_dll32_pointer (function_handle, arguments_size, $actual_args)
			when T_reference then
				imp_reference_result := desc_call_dll32_reference (function_handle, arguments_size, $actual_args)
			when T_short_integer then
				imp_integer_result := desc_call_dll32_short_integer (function_handle, arguments_size, $actual_args)
			when T_string then
				create imp_string_result.make_from_c (desc_call_dll32_string (function_handle, arguments_size, $actual_args))
			when T_no_type then
				desc_call_dll32_procedure (function_handle, arguments_size, $actual_args)
			end
			routine_called := True
		end

feature -- Status report

	boolean_result: BOOLEAN
			-- Value when the routine returns a boolean
		do
			Result := imp_boolean_result
		end

	character_result: CHARACTER
			-- Value when the routine returns a character
		do
			Result := imp_character_result
		end

	double_result: DOUBLE
			-- Value when the routine returns a double
		do
			Result := imp_double_result
		end

	integer_result: INTEGER
			-- Value when the routine returns an integer
		do
			Result := imp_integer_result
		end

	pointer_result: POINTER
			-- Value when the routine returns a pointer
		do
			Result := imp_pointer_result
		end

	real_result: REAL
			-- Value when the routine returns a real
		do
			Result := imp_real_result
		end

	reference_result: ANY
			-- Value when the routine returns a reference
		do
			Result := imp_reference_result
		end

	string_result: STRING
			-- Value when the routine returns a string
		do
			Result := imp_string_result
		end

feature -- Access

	library_index: INTEGER
			-- Index of the routine in `shared_library'

	shared_library: DLL_32
			-- Associated library for the routine

feature {NONE} -- Implementation

	argument_array: ARRAY [INTEGER]
			-- Values to be pushed on the C stack

	arguments_size: INTEGER

	fill_argument_array (args: ARRAY [ANY])
			-- Fill area for stack pushing operation
		local
			i, j, nb: INTEGER
			area: ANY
			position: INTEGER
			arg_type, arg_size: INTEGER
			b_ref: BOOLEAN_REF
			c_ref: CHARACTER_REF
			d_ref: DOUBLE_REF
			i_ref: INTEGER_REF
			r_ref: REAL_REF
			p_ref: POINTER_REF
			b: BOOLEAN
			c: CHARACTER
			d: DOUBLE
			int: INTEGER
			r: REAL
			p: POINTER
			a: ANY
			s: STRING
			s1: ARRAY [INTEGER]
			s2: ARRAY [REAL]
			s3: ARRAY [DOUBLE]
			s4: ARRAY [BOOLEAN]
			s5: ARRAY [CHARACTER]
			s6: ARRAY [POINTER]
			s7: ARRAY [ANY]
			array_area: ANY
			l_data: POINTER
		do
			from
				i := args.lower
				j := argument_types.lower
				nb := argument_count
				area := argument_array.area
			until
				i > nb
			loop
				arg_type := argument_types @ j
				arg_size := desc_get_size (arg_type)
				inspect
					arg_type
				when T_array then
					s1 ?= args @ i
					if s1 = Void then
						s2 ?= args @ i
						if s2 = Void then
							s3 ?= args @ i
							if s3 = Void then
								s4 ?= args @ i
								if s4 = Void then
									s5 ?= args @ i
									if s5 = Void then
										s6 ?= args @ i
										if s6 = Void then
											s7 ?= args @ i
											array_area := s7.area
										else
											array_area := s6.area
										end
									else
										array_area := s5.area
									end
								else
									array_area := s4.area
								end
							else
								array_area := s3.area
							end
						else
							array_area := s2.area
						end
					else
						array_area := s1.area
					end
					l_data := $array_area
					desc_copy_arg ($area, $l_data, position * 4, arg_size)
				when T_boolean then
					b_ref ?= args @ i
					b := b_ref.item
					if b then
						argument_array.put (1, position + 1)
					else
						argument_array.put (0, position + 1)
					end
				when T_character then
					c_ref ?= args @ i
					c := c_ref.item
					argument_array.put (c_ref.code, position + 1)
				when T_double then
					d_ref ?= args @ i
					d := d_ref.item
					desc_copy_arg ($area, $d, position * 4, arg_size)
					position := position + 1
				when T_integer, T_short_integer then
					i_ref ?= args @ i
					int := i_ref.item
					argument_array.put (int, position + 1)
				when T_real then
					r_ref ?= args @ i
					r := r_ref.item
					desc_copy_arg ($area, $r, position * 4, arg_size)
				when T_pointer then
					p_ref ?= args @ i
					p := p_ref.item
					desc_copy_arg ($area, $p, position * 4, arg_size)
				when T_reference then
					a := args @ i
					l_data := $a
					desc_copy_arg ($area, $l_data, position * 4, arg_size)
				when T_string then
					s ?= args @ i
					a := s.to_c
					l_data := $a
					desc_copy_arg ($area, $l_data, position * 4, arg_size)
				end
				i := i + 1
				j := j + 1
				position := position + 1
			end
		end

	function_handle: POINTER
			-- Pointer to the external routine

	imp_boolean_result: BOOLEAN
			-- Value when the routine returns a boolean

	imp_character_result: CHARACTER
			-- Value when the routine returns a character

	imp_double_result: DOUBLE
			-- Value when the routine returns a double

	imp_integer_result: INTEGER
			-- Value when the routine returns an integer

	imp_pointer_result: POINTER
			-- Value when the routine returns a pointer

	imp_real_result: REAL
			-- Value when the routine returns a real

	imp_reference_result: ANY
			-- Value when the routine returns a reference

	imp_string_result: STRING
			-- Value when the routine returns a string

	make_argument_array
			-- Allocates area for stack pushing operation
		local
			i, nb: INTEGER
			size: INTEGER
		do
				-- This needs to be done at creation time, since no
				-- allocation is allowed between the call to `call' and
				-- the real call (if the area of a STRING is passed as a
				-- C string, it has to be valid, i.e. not move).
			from
				i := argument_types.lower
				nb := argument_types.upper
			until
				i > nb
			loop
				size := size + desc_get_size (argument_types @ i)
				i := i + 1
			end
			create argument_array.make (1, size // 4)
			arguments_size := size // 4
		end

feature {NONE} -- Externals

	desc_call_dll32_boolean (f_ptr: POINTER; arg_count: INTEGER; actual_args: POINTER): BOOLEAN
			-- Call to function returning a boolean
		external
			"C [dll32 %"ise_desc.dll%"] (DWORD, DWORD, char *): EIF_BOOLEAN"
		end

	desc_call_dll32_character (f_ptr: POINTER; arg_count: INTEGER; actual_args: POINTER): CHARACTER
			-- Call to function returning a character
		external
			"C [dll32 %"ise_desc.dll%"] (DWORD, DWORD, char *): EIF_CHARACTER"
		end

	desc_call_dll32_double (f_ptr: POINTER; arg_count: INTEGER; actual_args: POINTER): DOUBLE
			-- Call to function returning a double
		external
			"C [dll32 %"ise_desc.dll%"] (DWORD, DWORD, char *): EIF_DOUBLE"
		end

	desc_call_dll32_integer (f_ptr: POINTER; arg_count: INTEGER; actual_args: POINTER): INTEGER
			-- Call to function returning an integer
		external
			"C [dll32 %"ise_desc.dll%"] (DWORD, DWORD, char *): EIF_INTEGER"
		end

	desc_call_dll32_pointer (f_ptr: POINTER; arg_count: INTEGER; actual_args: POINTER): POINTER
			-- Call to function returning a pointer
		external
			"C [dll32 %"ise_desc.dll%"] (DWORD, DWORD, char *): EIF_POINTER"
		end

	desc_call_dll32_real (f_ptr: POINTER; arg_count: INTEGER; actual_args: POINTER): REAL
			-- Call to function returning a real
		external
			"C [dll32 %"ise_desc.dll%"] (DWORD, DWORD, char *): EIF_REAL"
		end

	desc_call_dll32_reference (f_ptr: POINTER; arg_count: INTEGER; actual_args: POINTER): ANY
			-- Call to function returning a reference
		external
			"C [dll32 %"ise_desc.dll%"] (DWORD, DWORD, char *): EIF_REFERENCE"
		end

	desc_call_dll32_procedure (f_ptr: POINTER; arg_count: INTEGER; actual_args: POINTER)
			-- Call to procedure
		external
			"C [dll32 %"ise_desc.dll%"] (DWORD, DWORD, char *)"
		end

	desc_call_dll32_short_integer (f_ptr: POINTER; arg_count: INTEGER; actual_args: POINTER): INTEGER
			-- Call to function returning a short integer
		external
			"C [dll32 %"ise_desc.dll%"] (DWORD, DWORD, char *): short int"
		end

	desc_call_dll32_string (f_ptr: POINTER; arg_count: INTEGER; actual_args: POINTER): POINTER
			-- Call to function returning a string
		external
			"C [dll32 %"ise_desc.dll%"] (DWORD, DWORD, char *): EIF_POINTER"
		end

	desc_copy_arg (target, source: POINTER; offset, size: INTEGER)
			-- Copy `size' characters from `source'
			-- to `target' + `offset'
		do
			(target + offset).memory_copy (source, size)
		end

	desc_get_function_index_pointer (m_p: POINTER; r_index: INTEGER): POINTER
			-- Get function handle (by index)
		external
			"C [dll32 %"ise_desc.dll%"] (DWORD, DWORD): EIF_POINTER"
		end

	desc_get_size (type: INTEGER): INTEGER
			-- Get size of type `type'
		external
			"C [dll32 %"ise_desc.dll%"] (DWORD): short int"
		end

	win_get_proc_address (m_p, fn: POINTER): POINTER
			-- Get function handle
		external
			"C [macro <windows.h>] (HINSTANCE, LPCSTR): EIF_POINTER"
		alias
			"GetProcAddress"
		end

note
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"





end -- class DLL_32_ROUTINE


