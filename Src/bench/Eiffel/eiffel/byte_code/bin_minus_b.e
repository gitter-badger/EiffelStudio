indexing
	description: "- operator"
	date: "$date: $"
	revision: "$revision: $"

class BIN_MINUS_B 

inherit

	NUM_BINARY_B
		rename
			Bc_minus as operator_constant,
			il_minus as il_operator_constant
		redefine
			generate_operator, is_simple,
			generate_simple, generate_plus_plus,
			is_additive
		end
	
feature -- Status report

	is_simple: BOOLEAN is
			-- Operation is usually simple (C can compact it in affectations)
		do
			Result := is_built_in
		end

	is_additive: BOOLEAN is True
			-- Operation is additive (in the mathematical sense).
	
feature -- C code generation

	generate_operator is
			-- Generate the operator
		do
			buffer.put_string (" - ")
		end

	generate_simple is
			-- Generate a simple assignment operation
		do
			buffer.put_string (" -= ")
		end

	generate_plus_plus is
			-- Generate a --
		do
			buffer.put_string ("--")
		end

end
