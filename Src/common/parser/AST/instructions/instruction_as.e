indexing

	description: 
		"AST represenation of an instruction node";
	date: "$Date$";
	revision: "$Revision$"

deferred class INSTRUCTION_AS

inherit

	AST_EIFFEL
		redefine
			number_of_stop_points
		end

feature -- Access

	number_of_stop_points: INTEGER is
			-- Number of stop points for AST
		do
			Result := 1
		end

feature -- Comparison

	is_equiv (other: INSTRUCTION_AS): BOOLEAN is
		deferred
		end;

	equiv (other: INSTRUCTION_AS): BOOLEAN is
		deferred
		end;

end -- class INSTRUCTION_AS
