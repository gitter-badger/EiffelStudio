-- Node for string constants

class STRING_AS

inherit

	COMPARABLE
		undefine
			is_equal
		end;
	ATOMIC_AS
		redefine
			simple_format
		end;
	CHARACTER_ROUTINES

feature -- Attributes

	value: STRING;
			-- Integer value

feature -- Initilization

	set is
			-- Yacc initialization
		do
			value ?= yacc_arg (0);
		ensure then
			value_exists: value /= Void;
		end;

feature -- Formatting

	simple_format (ctxt: FORMAT_CONTEXT) is
			-- Reconstitute text.
		do
			ctxt.put_text_item (ti_Double_quote);
			ctxt.put_string (eiffel_string (value));
			ctxt.put_text_item (ti_Double_quote);
			ctxt.always_succeed;
		end;

	infix "<" (other: like Current): BOOLEAN is
		do
			--Result := value_i.str_val < other.value_i.str_val 
		end;

	set_value (s: STRING) is
		do
			value := s;
		end;



end
