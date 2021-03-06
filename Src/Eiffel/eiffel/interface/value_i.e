note
	Description: "Description of a constant value"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	VALUE_I

inherit
	ANY

	BYTE_CONST
		export
			{NONE} all
		end

	SHARED_ARRAY_BYTE
		export
			{NONE} all
		end

	SHARED_IL_CODE_GENERATOR
		export
			{NONE} all
		end

feature -- Comparison

	is_equivalent (other: like Current): BOOLEAN
			-- Is `other' equivalent to the current object ?
		require
			arg_non_void: other /= Void
			same_type: same_type (other)
		deferred
		end

feature -- Status report

	valid_type (t: TYPE_A): BOOLEAN
			-- Is the current value compatible with `t' ?
		require
			good_argument: t /= Void
		deferred
		end

	is_integer: BOOLEAN
			-- Is the constant an integer or natural constant ?
		do
		end

	is_boolean: BOOLEAN
			-- Is the constant a real constant ?
		do
		end

	is_character: BOOLEAN
			-- is the constant a character constant ?
		do
			-- Do nothing
		end

	is_real: BOOLEAN
			-- Is constant a real constant?
		do
			Result := is_real_32 or is_real_64
		ensure
			is_real_definition: Result = (is_real_32 or is_real_64)
		end

	is_real_32: BOOLEAN
			-- is the constant a real 32 bits constant ?
		do
			-- Do nothing
		end

	is_real_64: BOOLEAN
			-- Is the constant a real 64 bits constant ?
		do
			-- Do nothing
		end

	is_string: BOOLEAN
			-- Is the constant a string constant ?
		do
			-- Do nothing
		end

	is_string_32: BOOLEAN
			-- Is the constant a string constant ?
		do
			-- Do nothing
		end

	is_no_value: BOOLEAN
			-- Is current representing no value?
		do
		end

	is_numeric: BOOLEAN
			-- Is current a numeric value?
		do
			Result := is_integer or is_real_32 or is_real_64
		ensure
			is_numeric_definition: is_integer or is_real_32 or is_real_64
		end

	is_propagation_equivalent (other: like Current): BOOLEAN
			-- Is `Current' equivalent for propagation of pass2/pass3?
		do
			Result := same_type (other) and then is_equivalent (other)
		end

	boolean_value: BOOLEAN
		require
			is_boolean: is_boolean
		do
		end

	no_value: NO_VALUE_I
			-- Shared instance of `NO_VALUE_I'.
		once
			create Result
		ensure
			no_value_not_void: Result /= Void
		end

feature -- Settings

	set_real_type (t: TYPE_A)
			-- Adapt constant type to `t'.
			-- Sometimes type of constants needs to be changed.
			-- For example by default an integer constant is of type
			-- INTEGER, but type of constant might be INTEGER_8 and
			-- therefore current instance should be updated accordingly.
			-- Same thing with real constant which can be either REAL_32 or
			-- REAL_64, etc.
		require
			t_not_void: t /= Void
			valid_type: valid_type (t)
		do
		end

feature -- Multi-branch instruction processing

	inspect_value (value_type: TYPE_A): INTERVAL_VAL_B
			-- Inspect value of the given `value_type'
		require
			value_type_not_void: value_type /= Void
			is_valid_inspect_type: value_type.is_character or value_type.is_integer or value_type.is_natural or value_type.is_enum
			is_valid_inspect_value: valid_type (value_type) or value_type.is_enum
		do
			-- Do nothing here.
		ensure
			result_not_void: Result /= Void
		end

feature -- Code generation

	generate (buffer: GENERATION_BUFFER)
			-- Generate value in `buffer'.
		require
			good_argument: buffer /= Void
		deferred
		end

	generate_il
			-- Generate IL code for constant value.
		deferred
		end

	make_byte_code (ba: BYTE_ARRAY)
			-- Generate byte code for a constant value.
		require
			good_argument: ba /= Void
		deferred
		end

	append_signature (a_text_formatter: TEXT_FORMATTER)
		require
			st_not_void: a_text_formatter /= Void
		do
			a_text_formatter.add_string (dump)
		end

	dump: STRING
		deferred
		end

feature {INTERNAL_COMPILER_STRING_EXPORTER} -- Code generation

	string_value: STRING
		do
			Result := dump
		end

feature -- Unary operators

	unary_plus: VALUE_I
			-- Apply `+' operator to Current.
		require
			is_operation_valid: is_numeric or is_no_value
		do
			Result := Current
		ensure
			unary_plus_not_void: Result /= Void
		end

	unary_minus: VALUE_I
			-- Apply `-' operator to Current.
		require
			is_operation_valid: is_numeric or is_no_value
		do
				-- Proper definition is made in descendants that are `is_numeric'
			check
				is_no_value: is_no_value
			end
			Result := no_value
		ensure
			unary_minus_not_void: Result /= Void
		end

	unary_not: VALUE_I
			-- Apply `not operator to Current.
		require
			is_operation_valid: is_boolean or is_no_value
		do
			if is_boolean then
				create {BOOL_VALUE_I} Result.make (not boolean_value)
			else
				Result := no_value
			end
		ensure
			unary_not_not_void: Result /= Void
		end

feature -- Debugging

	trace
		do
			io.error.put_string (dump)
		end

note
	copyright:	"Copyright (c) 1984-2013, Eiffel Software"
	license:	"GPL version 2 (see http://www.eiffel.com/licensing/gpl.txt)"
	licensing_options:	"http://www.eiffel.com/licensing"
	copying: "[
			This file is part of Eiffel Software's Eiffel Development Environment.
			
			Eiffel Software's Eiffel Development Environment is free
			software; you can redistribute it and/or modify it under
			the terms of the GNU General Public License as published
			by the Free Software Foundation, version 2 of the License
			(available at the URL listed under "license" above).
			
			Eiffel Software's Eiffel Development Environment is
			distributed in the hope that it will be useful, but
			WITHOUT ANY WARRANTY; without even the implied warranty
			of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
			See the GNU General Public License for more details.
			
			You should have received a copy of the GNU General Public
			License along with Eiffel Software's Eiffel Development
			Environment; if not, write to the Free Software Foundation,
			Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
		]"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"

end
