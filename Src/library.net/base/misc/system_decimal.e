indexing
	Generator: "Eiffel Emitter 2.5b2"
	external_name: "System.Decimal"

frozen expanded external class
	SYSTEM_DECIMAL

inherit
	SYSTEM_VALUETYPE
		redefine
			get_hash_code,
			is_equal,
			to_string
		end
	SYSTEM_IFORMATTABLE
	SYSTEM_ICOMPARABLE



feature {NONE} -- Initialization

	frozen make_decimal_4 (bits: ARRAY [INTEGER]) is
		external
			"IL creator signature (System.Int32[]) use System.Decimal"
		end

	frozen make_decimal_1 (value: INTEGER_64) is
		external
			"IL creator signature (System.Int64) use System.Decimal"
		end

	frozen make_decimal_3 (value: DOUBLE) is
		external
			"IL creator signature (System.Double) use System.Decimal"
		end

	frozen make_decimal_2 (value: REAL) is
		external
			"IL creator signature (System.Single) use System.Decimal"
		end

	frozen make_decimal (value: INTEGER) is
		external
			"IL creator signature (System.Int32) use System.Decimal"
		end

	frozen make_decimal_5 (lo: INTEGER; mid: INTEGER; hi: INTEGER; is_negative: BOOLEAN; scale: INTEGER_8) is
		external
			"IL creator signature (System.Int32, System.Int32, System.Int32, System.Boolean, System.Byte) use System.Decimal"
		end

feature -- Access

	frozen min_value: SYSTEM_DECIMAL is
		external
			"IL static_field signature :System.Decimal use System.Decimal"
		alias
			"MinValue"
		end

	frozen zero: SYSTEM_DECIMAL is
		external
			"IL static_field signature :System.Decimal use System.Decimal"
		alias
			"Zero"
		end

	frozen minus_one: SYSTEM_DECIMAL is
		external
			"IL static_field signature :System.Decimal use System.Decimal"
		alias
			"MinusOne"
		end

	frozen one: SYSTEM_DECIMAL is
		external
			"IL static_field signature :System.Decimal use System.Decimal"
		alias
			"One"
		end

	frozen max_value: SYSTEM_DECIMAL is
		external
			"IL static_field signature :System.Decimal use System.Decimal"
		alias
			"MaxValue"
		end

feature -- Basic Operations

	is_equal (value: ANY): BOOLEAN is
		external
			"IL signature (System.Object): System.Boolean use System.Decimal"
		alias
			"Equals"
		end

	frozen mod (d1: SYSTEM_DECIMAL; d2: SYSTEM_DECIMAL): SYSTEM_DECIMAL is
		external
			"IL static signature (System.Decimal, System.Decimal): System.Decimal use System.Decimal"
		alias
			"Mod"
		end

	frozen parse_string_number_styles (s: STRING; style: INTEGER): SYSTEM_DECIMAL is
			-- Valid values for `style' are a combination of the following values:
			-- None = 0
			-- AllowLeadingWhite = 1
			-- AllowTrailingWhite = 2
			-- AllowLeadingSign = 4
			-- AllowTrailingSign = 8
			-- AllowParentheses = 16
			-- AllowDecimalPoint = 32
			-- AllowThousands = 64
			-- AllowExponent = 128
			-- AllowCurrencySymbol = 256
			-- AllowHexSpecifier = 512
			-- Integer = 7
			-- HexNumber = 515
			-- Number = 111
			-- Float = 167
			-- Currency = 383
			-- Any = 511
		require
			valid_number_styles: (0 + 1 + 2 + 4 + 8 + 16 + 32 + 64 + 128 + 256 + 512 + 7 + 515 + 111 + 167 + 383 + 511) & style = 0 + 1 + 2 + 4 + 8 + 16 + 32 + 64 + 128 + 256 + 512 + 7 + 515 + 111 + 167 + 383 + 511
		external
			"IL static signature (System.String, enum System.Globalization.NumberStyles): System.Decimal use System.Decimal"
		alias
			"Parse"
		end

	frozen negate (d: SYSTEM_DECIMAL): SYSTEM_DECIMAL is
		external
			"IL static signature (System.Decimal): System.Decimal use System.Decimal"
		alias
			"Negate"
		end

	frozen to_int16 (value: SYSTEM_DECIMAL): INTEGER_16 is
		external
			"IL static signature (System.Decimal): System.Int16 use System.Decimal"
		alias
			"ToInt16"
		end

	frozen to_byte (value: SYSTEM_DECIMAL): INTEGER_8 is
		external
			"IL static signature (System.Decimal): System.Byte use System.Decimal"
		alias
			"ToByte"
		end

	frozen to_string_with_provider (provider: SYSTEM_IFORMATPROVIDER): STRING is
		external
			"IL signature (System.IFormatProvider): System.String use System.Decimal"
		alias
			"ToString"
		end

	get_hash_code: INTEGER is
		external
			"IL signature (): System.Int32 use System.Decimal"
		alias
			"GetHashCode"
		end

	frozen to_double (d: SYSTEM_DECIMAL): DOUBLE is
		external
			"IL static signature (System.Decimal): System.Double use System.Decimal"
		alias
			"ToDouble"
		end

	frozen get_bits (d: SYSTEM_DECIMAL): ARRAY [INTEGER] is
		external
			"IL static signature (System.Decimal): System.Int32[] use System.Decimal"
		alias
			"GetBits"
		end

	frozen truncate (d: SYSTEM_DECIMAL): SYSTEM_DECIMAL is
		external
			"IL static signature (System.Decimal): System.Decimal use System.Decimal"
		alias
			"Truncate"
		end

	frozen equals_decimal (d1: SYSTEM_DECIMAL; d2: SYSTEM_DECIMAL): BOOLEAN is
		external
			"IL static signature (System.Decimal, System.Decimal): System.Boolean use System.Decimal"
		alias
			"Equals"
		end

	frozen compare_to (value: ANY): INTEGER is
		external
			"IL signature (System.Object): System.Int32 use System.Decimal"
		alias
			"CompareTo"
		end

	frozen round (d: SYSTEM_DECIMAL; decimals: INTEGER): SYSTEM_DECIMAL is
		external
			"IL static signature (System.Decimal, System.Int32): System.Decimal use System.Decimal"
		alias
			"Round"
		end

	frozen subtract (d1: SYSTEM_DECIMAL; d2: SYSTEM_DECIMAL): SYSTEM_DECIMAL is
		external
			"IL static signature (System.Decimal, System.Decimal): System.Decimal use System.Decimal"
		alias
			"Subtract"
		end

	frozen to_oacurrency (value: SYSTEM_DECIMAL): INTEGER_64 is
		external
			"IL static signature (System.Decimal): System.Int64 use System.Decimal"
		alias
			"ToOACurrency"
		end

	to_string: STRING is
		external
			"IL signature (): System.String use System.Decimal"
		alias
			"ToString"
		end

	frozen to_int32 (d: SYSTEM_DECIMAL): INTEGER is
		external
			"IL static signature (System.Decimal): System.Int32 use System.Decimal"
		alias
			"ToInt32"
		end

	frozen add (d1: SYSTEM_DECIMAL; d2: SYSTEM_DECIMAL): SYSTEM_DECIMAL is
		external
			"IL static signature (System.Decimal, System.Decimal): System.Decimal use System.Decimal"
		alias
			"Add"
		end

	frozen to_string_with_format (format: STRING): STRING is
		external
			"IL signature (System.String): System.String use System.Decimal"
		alias
			"ToString"
		end

	frozen parse_string_number_styles_iformat_provider (s: STRING; style: INTEGER; provider: SYSTEM_IFORMATPROVIDER): SYSTEM_DECIMAL is
			-- Valid values for `style' are a combination of the following values:
			-- None = 0
			-- AllowLeadingWhite = 1
			-- AllowTrailingWhite = 2
			-- AllowLeadingSign = 4
			-- AllowTrailingSign = 8
			-- AllowParentheses = 16
			-- AllowDecimalPoint = 32
			-- AllowThousands = 64
			-- AllowExponent = 128
			-- AllowCurrencySymbol = 256
			-- AllowHexSpecifier = 512
			-- Integer = 7
			-- HexNumber = 515
			-- Number = 111
			-- Float = 167
			-- Currency = 383
			-- Any = 511
		require
			valid_number_styles: (0 + 1 + 2 + 4 + 8 + 16 + 32 + 64 + 128 + 256 + 512 + 7 + 515 + 111 + 167 + 383 + 511) & style = 0 + 1 + 2 + 4 + 8 + 16 + 32 + 64 + 128 + 256 + 512 + 7 + 515 + 111 + 167 + 383 + 511
		external
			"IL static signature (System.String, enum System.Globalization.NumberStyles, System.IFormatProvider): System.Decimal use System.Decimal"
		alias
			"Parse"
		end

	frozen get_type_code: INTEGER is
		external
			"IL signature (): enum System.TypeCode use System.Decimal"
		alias
			"GetTypeCode"
		ensure
			valid_type_code: Result = 0 or Result = 1 or Result = 2 or Result = 3 or Result = 4 or Result = 5 or Result = 6 or Result = 7 or Result = 8 or Result = 9 or Result = 10 or Result = 11 or Result = 12 or Result = 13 or Result = 14 or Result = 15 or Result = 16 or Result = 18
		end

	frozen to_single (d: SYSTEM_DECIMAL): REAL is
		external
			"IL static signature (System.Decimal): System.Single use System.Decimal"
		alias
			"ToSingle"
		end

	frozen parse_string_iformat_provider (s: STRING; provider: SYSTEM_IFORMATPROVIDER): SYSTEM_DECIMAL is
		external
			"IL static signature (System.String, System.IFormatProvider): System.Decimal use System.Decimal"
		alias
			"Parse"
		end

	frozen compare (d1: SYSTEM_DECIMAL; d2: SYSTEM_DECIMAL): INTEGER is
		external
			"IL static signature (System.Decimal, System.Decimal): System.Int32 use System.Decimal"
		alias
			"Compare"
		end

	frozen from_oacurrency (cy: INTEGER_64): SYSTEM_DECIMAL is
		external
			"IL static signature (System.Int64): System.Decimal use System.Decimal"
		alias
			"FromOACurrency"
		end

	frozen divide (d1: SYSTEM_DECIMAL; d2: SYSTEM_DECIMAL): SYSTEM_DECIMAL is
		external
			"IL static signature (System.Decimal, System.Decimal): System.Decimal use System.Decimal"
		alias
			"Divide"
		end

	frozen multiply (d1: SYSTEM_DECIMAL; d2: SYSTEM_DECIMAL): SYSTEM_DECIMAL is
		external
			"IL static signature (System.Decimal, System.Decimal): System.Decimal use System.Decimal"
		alias
			"Multiply"
		end

	frozen to_string_with_format_and_provider (format: STRING; provider: SYSTEM_IFORMATPROVIDER): STRING is
		external
			"IL signature (System.String, System.IFormatProvider): System.String use System.Decimal"
		alias
			"ToString"
		end

	frozen parse (s: STRING): SYSTEM_DECIMAL is
		external
			"IL static signature (System.String): System.Decimal use System.Decimal"
		alias
			"Parse"
		end

	frozen floor (d: SYSTEM_DECIMAL): SYSTEM_DECIMAL is
		external
			"IL static signature (System.Decimal): System.Decimal use System.Decimal"
		alias
			"Floor"
		end

	frozen to_int64 (d: SYSTEM_DECIMAL): INTEGER_64 is
		external
			"IL static signature (System.Decimal): System.Int64 use System.Decimal"
		alias
			"ToInt64"
		end

feature -- Unary Operators

	frozen prefix "+": SYSTEM_DECIMAL is
		external
			"IL operator signature (System.Decimal): System.Decimal use System.Decimal"
		alias
			"op_UnaryPlus"
		end

	frozen prefix "-": SYSTEM_DECIMAL is
		external
			"IL operator signature (System.Decimal): System.Decimal use System.Decimal"
		alias
			"op_UnaryNegation"
		end

	frozen prefix "#++": SYSTEM_DECIMAL is
		external
			"IL operator signature (System.Decimal): System.Decimal use System.Decimal"
		alias
			"op_Increment"
		end

	frozen prefix "#--": SYSTEM_DECIMAL is
		external
			"IL operator signature (System.Decimal): System.Decimal use System.Decimal"
		alias
			"op_Decrement"
		end

feature -- Binary Operators

	frozen infix "|=" (d2: SYSTEM_DECIMAL): BOOLEAN is
		external
			"IL operator signature (System.Decimal): System.Boolean use System.Decimal"
		alias
			"op_Inequality"
		end

	frozen infix ">=" (d2: SYSTEM_DECIMAL): BOOLEAN is
		external
			"IL operator signature (System.Decimal): System.Boolean use System.Decimal"
		alias
			"op_GreaterThanOrEqual"
		end

	frozen infix "/" (d2: SYSTEM_DECIMAL): SYSTEM_DECIMAL is
		external
			"IL operator signature (System.Decimal): System.Decimal use System.Decimal"
		alias
			"op_Division"
		end

	frozen infix "#==" (d2: SYSTEM_DECIMAL): BOOLEAN is
		external
			"IL operator signature (System.Decimal): System.Boolean use System.Decimal"
		alias
			"op_Equality"
		end

	frozen infix "-" (d2: SYSTEM_DECIMAL): SYSTEM_DECIMAL is
		external
			"IL operator signature (System.Decimal): System.Decimal use System.Decimal"
		alias
			"op_Subtraction"
		end

	frozen infix "<=" (d2: SYSTEM_DECIMAL): BOOLEAN is
		external
			"IL operator signature (System.Decimal): System.Boolean use System.Decimal"
		alias
			"op_LessThanOrEqual"
		end

	frozen infix "\\" (d2: SYSTEM_DECIMAL): SYSTEM_DECIMAL is
		external
			"IL operator signature (System.Decimal): System.Decimal use System.Decimal"
		alias
			"op_Modulus"
		end

	frozen infix "+" (d2: SYSTEM_DECIMAL): SYSTEM_DECIMAL is
		external
			"IL operator signature (System.Decimal): System.Decimal use System.Decimal"
		alias
			"op_Addition"
		end

	frozen infix ">" (d2: SYSTEM_DECIMAL): BOOLEAN is
		external
			"IL operator signature (System.Decimal): System.Boolean use System.Decimal"
		alias
			"op_GreaterThan"
		end

	frozen infix "<" (d2: SYSTEM_DECIMAL): BOOLEAN is
		external
			"IL operator signature (System.Decimal): System.Boolean use System.Decimal"
		alias
			"op_LessThan"
		end

	frozen infix "*" (d2: SYSTEM_DECIMAL): SYSTEM_DECIMAL is
		external
			"IL operator signature (System.Decimal): System.Decimal use System.Decimal"
		alias
			"op_Multiply"
		end

feature -- Specials

	frozen op_implicit (value: INTEGER_8): SYSTEM_DECIMAL is
		external
			"IL static signature (System.Byte): System.Decimal use System.Decimal"
		alias
			"op_Implicit"
		end

	frozen op_explicit (value: REAL): SYSTEM_DECIMAL is
		external
			"IL static signature (System.Single): System.Decimal use System.Decimal"
		alias
			"op_Explicit"
		end

end -- class SYSTEM_DECIMAL
