indexing
	description: "AST representation of binary division operation.";
	date: "$Date$";
	revision: "$Revision$"

class
	BIN_DIV_AS

inherit
	ARITHMETIC_AS

	PREFIX_INFIX_NAMES

feature -- Properties

	byte_anchor: BIN_DIV_B is
			-- Byte code type
		do
			create Result
		end

	infix_function_name: STRING is
			-- Qualified name with the infix keyword.
		once
			Result := infix_feature_name_with_symbol (op_name)
		end

	op_name: STRING is "//"
			-- Name without the infix keyword.

end -- class BIN_DIV_AS
