indexing

	description:
			"Abstract description for formal generic type. %
			%Version for Bench.";
	date: "$Date$";
	revision: "$Revision$"

class FORMAL_AS_B

inherit

	FORMAL_AS
		undefine
			is_deep_equal, same_as
		select
			text_position
		end;

	TYPE_B
		rename
			position as text_b_position
		undefine
			simple_format, format
		end;

	STONABLE;

feature

	solved_type (feat_table: FEATURE_TABLE; f: FEATURE_I): FORMAL_A is
			-- Calculated type in function of the feature `f' which has
			-- the type Current and the feautre table `feat_table'
		do
			Result := actual_type;
		end;

	actual_type: FORMAL_A is
			-- Actual type for formal generic
		do
			!!Result;
			Result.set_base_type (position);
		end;

feature -- Output

	format (ctxt: FORMAT_CONTEXT_B) is
		local
			l_a: LOCAL_FEAT_ADAPTATION;
			new_type: TYPE_A
		do
			l_a := ctxt.local_adapt;
			if l_a /= Void then
				new_type := ctxt.local_adapt.adapted_type (Current);
			end;
			if new_type = Void then
				simple_format (ctxt)
			else
				new_type.format (ctxt)
			end;
		end;

feature -- Stoning
 
	stone (reference_class: CLASS_C): CLASSC_STONE is
		local
			aclass: CLASS_C;
		do  
			aclass := actual_type.associated_class;
			!!Result.make (aclass)
		end;

end -- class FORMAL_AS_B
