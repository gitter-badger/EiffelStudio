indexing
	Generator: "Eiffel Emitter 2.5b2"
	external_name: "System.Random"

external class
	SYSTEM_RANDOM

create
	make,
	make_1

feature {NONE} -- Initialization

	frozen make is
		external
			"IL creator use System.Random"
		end

	frozen make_1 (seed: INTEGER) is
		external
			"IL creator signature (System.Int32) use System.Random"
		end

feature -- Basic Operations

	next: INTEGER is
		external
			"IL signature (): System.Int32 use System.Random"
		alias
			"Next"
		end

	next_int32_int32 (min_value: INTEGER; max_value: INTEGER): INTEGER is
		external
			"IL signature (System.Int32, System.Int32): System.Int32 use System.Random"
		alias
			"Next"
		end

	next_int32 (max_value: INTEGER): INTEGER is
		external
			"IL signature (System.Int32): System.Int32 use System.Random"
		alias
			"Next"
		end

	next_bytes (buffer: ARRAY [INTEGER_8]) is
		external
			"IL signature (System.Byte[]): System.Void use System.Random"
		alias
			"NextBytes"
		end

	next_double: DOUBLE is
		external
			"IL signature (): System.Double use System.Random"
		alias
			"NextDouble"
		end

feature {NONE} -- Implementation

	sample: DOUBLE is
		external
			"IL signature (): System.Double use System.Random"
		alias
			"Sample"
		end

end -- class SYSTEM_RANDOM
