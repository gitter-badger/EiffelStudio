indexing
	Generator: "Eiffel Emitter 2.5b2"
	external_name: "System.Enum"

deferred external class
	SYSTEM_ENUM

inherit
	SYSTEM_VALUETYPE
		redefine
			get_hash_code,
			is_equal,
			to_string
		end
	SYSTEM_ICOMPARABLE
	SYSTEM_IFORMATTABLE

feature -- Basic Operations

	is_equal (obj: ANY): BOOLEAN is
		external
			"IL signature (System.Object): System.Boolean use System.Enum"
		alias
			"Equals"
		end

	frozen get_underlying_type (enum_type: SYSTEM_TYPE): SYSTEM_TYPE is
		external
			"IL static signature (System.Type): System.Type use System.Enum"
		alias
			"GetUnderlyingType"
		end

	frozen to_object_type_int64 (enum_type: SYSTEM_TYPE; value: INTEGER_64): ANY is
		external
			"IL static signature (System.Type, System.Int64): System.Object use System.Enum"
		alias
			"ToObject"
		end

	frozen is_defined (enum_type: SYSTEM_TYPE; value: ANY): BOOLEAN is
		external
			"IL static signature (System.Type, System.Object): System.Boolean use System.Enum"
		alias
			"IsDefined"
		end

	frozen get_names (enum_type: SYSTEM_TYPE): ARRAY [STRING] is
		external
			"IL static signature (System.Type): System.String[] use System.Enum"
		alias
			"GetNames"
		end

	frozen format (enum_type: SYSTEM_TYPE; value: ANY; format2: STRING): STRING is
		external
			"IL static signature (System.Type, System.Object, System.String): System.String use System.Enum"
		alias
			"Format"
		end

	frozen get_values (enum_type: SYSTEM_TYPE): SYSTEM_ARRAY is
		external
			"IL static signature (System.Type): System.Array use System.Enum"
		alias
			"GetValues"
		end

	frozen to_object (enum_type: SYSTEM_TYPE; value: INTEGER_8): ANY is
		external
			"IL static signature (System.Type, System.Byte): System.Object use System.Enum"
		alias
			"ToObject"
		end

	frozen to_object_type_int16 (enum_type: SYSTEM_TYPE; value: INTEGER_16): ANY is
		external
			"IL static signature (System.Type, System.Int16): System.Object use System.Enum"
		alias
			"ToObject"
		end

	frozen get_name (enum_type: SYSTEM_TYPE; value: ANY): STRING is
		external
			"IL static signature (System.Type, System.Object): System.String use System.Enum"
		alias
			"GetName"
		end

	frozen parse_type_string_boolean (enum_type: SYSTEM_TYPE; value: STRING; ignore_case: BOOLEAN): ANY is
		external
			"IL static signature (System.Type, System.String, System.Boolean): System.Object use System.Enum"
		alias
			"Parse"
		end

	frozen compare_to (target: ANY): INTEGER is
		external
			"IL signature (System.Object): System.Int32 use System.Enum"
		alias
			"CompareTo"
		end

	frozen to_object_type_object (enum_type: SYSTEM_TYPE; value: ANY): ANY is
		external
			"IL static signature (System.Type, System.Object): System.Object use System.Enum"
		alias
			"ToObject"
		end

	to_string: STRING is
		external
			"IL signature (): System.String use System.Enum"
		alias
			"ToString"
		end

	frozen to_object_type_int32 (enum_type: SYSTEM_TYPE; value: INTEGER): ANY is
		external
			"IL static signature (System.Type, System.Int32): System.Object use System.Enum"
		alias
			"ToObject"
		end

	frozen to_string_with_format (format2: STRING): STRING is
		external
			"IL signature (System.String): System.String use System.Enum"
		alias
			"ToString"
		end

	frozen get_type_code: INTEGER is
		external
			"IL signature (): enum System.TypeCode use System.Enum"
		alias
			"GetTypeCode"
		ensure
			valid_type_code: Result = 0 or Result = 1 or Result = 2 or Result = 3 or Result = 4 or Result = 5 or Result = 6 or Result = 7 or Result = 8 or Result = 9 or Result = 10 or Result = 11 or Result = 12 or Result = 13 or Result = 14 or Result = 15 or Result = 16 or Result = 18
		end

	frozen to_string_with_provider (provider: SYSTEM_IFORMATPROVIDER): STRING is
		external
			"IL signature (System.IFormatProvider): System.String use System.Enum"
		alias
			"ToString"
		end

	frozen to_string_with_format_and_provider (format2: STRING; provider: SYSTEM_IFORMATPROVIDER): STRING is
		external
			"IL signature (System.String, System.IFormatProvider): System.String use System.Enum"
		alias
			"ToString"
		end

	frozen parse (enum_type: SYSTEM_TYPE; value: STRING): ANY is
		external
			"IL static signature (System.Type, System.String): System.Object use System.Enum"
		alias
			"Parse"
		end

	get_hash_code: INTEGER is
		external
			"IL signature (): System.Int32 use System.Enum"
		alias
			"GetHashCode"
		end

end -- class SYSTEM_ENUM
