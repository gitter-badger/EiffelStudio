indexing
	description: "Set of static routines belonging to System.UInt64"
	date: "$Date$"
	revision: "$Revision$"

frozen external class
	DOTNET_NATURAL_64

create {NONE}

feature -- Statics

	frozen from_string (s: SYSTEM_STRING): NATURAL_64 is
			-- (Static)
			-- Converts the string representation of a number to its
			-- System.UInt64 equivalent.
			--
			-- Parameters:
			--   s: A string containing a number to convert. The
			--     string is interpreted using the
			--     System.Globalization.NumberStyles.Integer style.
			--
			-- Returns:
			--   The System.UInt64 value equivalent to the number
			--   contained in s.
			--
			-- Exceptions:
			--   System.ArgumentNullException: s is null.
			--   System.FormatException: s is not of the correct format.
			--   System.OverflowException: s represents a number less
			--     than System.UInt64.MinValue or greater than
			--     System.UInt64.MaxValue.
		external
			"IL static signature (System.String): System.UInt64 use System.UInt64"
		alias
			"Parse"
		end

	frozen from_string_with_style (s: SYSTEM_STRING; style: NUMBER_STYLES): NATURAL_64 is
			-- (Static)
			-- Converts the string representation of a number in a
			-- specified style to its System.UInt64 equivalent.
			--
			-- Parameters:
			--   s: A string containing a number to convert. The string
			--     is interpreted using the style specified by style.
			--   style: A bitwise combination of
			--     System.Globalization.NumberStyles values that indicate
			--     the permitted format of s. If style is null, the string
			--     is interpreted using the
			--     System.Globalization.NumberStyles.Integer style.
			--
			-- Returns:
			--   The System.UInt64 value equivalent to the number contained in s.
			--
			-- Exceptions:
			--   System.ArgumentNullException: s is null.
			--   System.FormatException: s is not of the correct format.
			--   System.OverflowException: s represents a number less than
			--     System.UInt64.MinValue or greater than System.UInt64.MaxValue.
			--   System.ArgumentException: style is not a valid bitwise
			--     combination of System.Globalization.NumberStyles values.

		external
			"IL static signature (System.String, System.Globalization.NumberStyles): System.UInt64 use System.UInt64"
		alias
			"Parse"
		end

	frozen from_string_with_format (s: SYSTEM_STRING; provider: IFORMAT_PROVIDER): NATURAL_64 is
			-- (Static)
			-- Converts the string representation of a number in a specified
			-- culture-specific format to its System.UInt64 equivalent.
			--
			-- Parameters:
			--   s: A string containing a number to convert. The string is
			--     interpretedusing the System.Globalization.NumberStyles.Integer
			--     style.
			--   provider: An System.IFormatProvider that supplies
			--     culture-specific formatting information about s. If provider
			--     is null, the current system culture is used.
			--
			-- Returns:
			--   The System.UInt64 value equivalent to the number contained in s.
			--
			-- Exceptions:
			--   System.ArgumentNullException: s is null.
			--   System.FormatException: s is not of the correct format.
			--   System.OverflowException: s represents a number less than
			--     System.UInt64.MinValue or greater than System.UInt64.MaxValue.
		external
			"IL static signature (System.String, System.IFormatProvider): System.UInt64 use System.UInt64"
		alias
			"Parse"
		end

	frozen from_string_with_style_and_format (s: SYSTEM_STRING; style: NUMBER_STYLES; provider: IFORMAT_PROVIDER): NATURAL_64 is
			-- (Static)
			-- Converts the string representation of a number in a specified
			-- style and culture-specific format to its System.UInt64 equivalent.  
			--
			-- Parameters:
			--   s: A string containinga number to convert. The string is
			--     interpreted using the style specified by style.
			--   style: A bitwise combination of System.Globalization.NumberStyles
			--     values that indicate the permitted format of s. If style is null,
			--     the string is interpreted using the
			--     System.Globalization.NumberStyles.Integer style.
			--   provider: An System.IFormatProvider that supplies culture-specific
			--     formatting information about s. If provider is null, the current
			--     system culture is used.
			--
			-- Returns:
			--   The System.UInt64 value equivalent to the number contained in s.  
			--
			-- Exceptions:
			--   System.ArgumentNullException: s is null.
			--   System.FormatException: s is not of the correct format.
			--   System.OverflowException: s represents a number less than
			--     System.UInt64.MinValue or greater than System.UInt64.MaxValue.
			--   System.ArgumentException: style is not a valid bitwise combination 
			--     of System.Globalization.NumberStyles values.
		external
			"IL static signature (System.String, System.Globalization.NumberStyles, System.IFormatProvider): System.UInt64 use System.UInt64"
		alias
			"Parse"
		end

end -- class DOTNET_NATURAL_64
