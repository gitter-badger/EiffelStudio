indexing
	description: "AST representation of binary `xor' operation."
	date: "$Date$"
	revision: "$Revision$"

class
	BIN_XOR_AS

inherit
	BINARY_AS

	PREFIX_INFIX_NAMES

feature -- Visitor

	process (v: AST_VISITOR) is
			-- process current element.
		do
			v.process_bin_xor_as (Current)
		end

feature -- Properties

	byte_anchor: BIN_XOR_B is
			-- Byte code type
		do
			create Result
		end

	infix_function_name: STRING is
			-- Qualified name with the infix keyword.
		once
			Result := infix_feature_name_with_symbol (op_name)
		end

	op_name: STRING is "xor"
			-- Name without the infix keyword.

end -- class BIN_XOR_AS
