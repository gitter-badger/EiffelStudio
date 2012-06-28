indexing

	description:

		"Error: Missing quote"

	library: "Gobo Eiffel Lexical Library"
	copyright: "Copyright (c) 1999, Eric Bezault and others"
	license: "MIT License"
	date: "$Date$"
	revision: "$Revision$"

class LX_MISSING_QUOTE_ERROR

inherit

	UT_ERROR

create

	make

feature {NONE} -- Initialization

	make (filename: STRING; line: INTEGER) is
			-- Create a new error reporting a missing quote.
		require
			filename_not_void: filename /= Void
		do
			create parameters.make (1, 2)
			parameters.put (filename, 1)
			parameters.put (line.out, 2)
		end

feature -- Access

	default_template: STRING is "%"$1%", line $2: missing quote"
			-- Default template used to built the error message

	code: STRING is "LX0013"
			-- Error code

invariant

--	dollar0: $0 = program name
--	dollar1: $1 = filename
--	dollar2: $2 = line number

end
