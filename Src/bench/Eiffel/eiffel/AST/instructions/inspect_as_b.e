indexing

	description:
			"Abstract description of a multi_branch instruction, %
			%Version for Bench.";
	date: "$Date$";
	revision: "$Revision$"

class INSPECT_AS_B

inherit

	INSPECT_AS
		redefine
			switch, case_list, else_part
		end;

	INSTRUCTION_AS_B
		undefine
			simple_format
		redefine
			type_check, byte_node,
			find_breakable, format,
			fill_calls_list, replicate
		end;

	SHARED_INSPECT

feature -- Attributes

	switch: EXPR_AS_B;
			-- Expression to inspect

	case_list: EIFFEL_LIST_B [CASE_AS_B];
			-- Alternatives

	else_part: EIFFEL_LIST_B [INSTRUCTION_AS_B];
			-- Else part

feature -- Type check, byte code and dead code removal

	type_check is
			-- Type check a multi-branch instruction
		local
			current_item: TYPE_A;
			vomb1: VOMB1;
			controler: INSPECT_CONTROL
		do
			switch.type_check;

				-- Initialization of the multi-branch controler
			!!controler.make;
			Inspect_controlers.put_front (controler);
			controler.set_node (Current);
			controler.set_feature_table (context.a_class.feature_table);

				-- Type check if it is an expression conform either to
				-- and integer or to a character
			current_item := context.item;
			if current_item.is_integer then		
				controler.set_integer_type;
			elseif	current_item.is_character then
				controler.set_character_type;
			else
					-- Error
				!!vomb1;
				context.init_error (vomb1);
				vomb1.set_type (current_item);
				Error_handler.insert_error (vomb1);
					-- Cannot go on here
				Error_handler.raise_error;
			end;

				-- Update type stack
			context.pop (1);

			if case_list /= Void then
				case_list.type_check;
			end;

			if else_part /= Void then
				else_part.type_check;
			end;
			Inspect_controlers.start;
			Inspect_controlers.remove;
		end;

	byte_node: INSPECT_B is
			-- Associated byte code
		local
			tmp: BYTE_LIST [BYTE_NODE]
		do
			!!Result;
			Result.set_switch (switch.byte_node);
			if case_list /= Void then
					-- The AST stores the inspect cases in reverse order
					-- compared to the way the user wrote them. So we
					-- put them back in the correct order in the generated
					-- byte code so that it will match the displayed text
					-- when debugging.
				tmp := case_list.reversed_byte_node;
				tmp := tmp.remove_voids;
				if tmp /= Void then
					Result.set_case_list (tmp);
				end;
			end;
			if else_part /= Void then
				Result.set_else_part (else_part.byte_node);
			end;
		end;

feature -- Debugger

	find_breakable is
			-- Look for breakable instructions.
		do
			record_break_node;
			if case_list /= Void then
				case_list.find_breakable;
			end;
			if else_part /= Void then
				else_part.find_breakable;
				record_break_node;
			end;
		end;

feature -- Formatter

	format (ctxt: FORMAT_CONTEXT_B) is
			-- Reconstitute text.
		do
			ctxt.begin;
			ctxt.put_breakable;	
			ctxt.put_text_item (ti_Inspect_keyword);
			ctxt.put_space;
			ctxt.indent_one_more;
			switch.format (ctxt);
			ctxt.indent_one_less;
			ctxt.next_line;
			if case_list /= void then
				ctxt.set_separator (Void);
				ctxt.new_line_between_tokens;
					-- The AST stores the inspect cases in reverse order
					-- compared to the way the user wrote them. So we
					-- put them back in the correct order in the structured
					-- text being built.
				case_list.reversed_format (ctxt);
				ctxt.next_line;
			end;
			if else_part /= void then
				ctxt.put_text_item (ti_Else_keyword);
				ctxt.indent_one_more;
				ctxt.next_line;
				ctxt.set_separator (ti_Semi_colon);
				ctxt.new_line_between_tokens;
				else_part.format(ctxt);
				ctxt.indent_one_less;
				ctxt.next_line;
				ctxt.put_breakable;	
			end;
			ctxt.put_text_item (ti_End_keyword);
			ctxt.commit;
		end;

feature -- Replication

	fill_calls_list (l: CALLS_LIST) is
			-- find calls to Current
		local
			new_list: like l;
		do
			!!new_list.make;
			switch.fill_calls_list (new_list);
			l.merge (new_list);
			if case_list /= void then
				case_list.fill_calls_list (l);
			end;
			if else_part /= void then
				else_part.fill_calls_list (l);
			end;
		end;

	replicate (ctxt: REP_CONTEXT): like Current is
			-- Adapt to replication
		do
			Result := clone (Current);
			Result.set_switch (switch.replicate (ctxt));
			if case_list /= void then
				Result.set_case_list (
					case_list.replicate (ctxt));
			end;
			if else_part /= void then
				Result.set_else_part (
					else_part.replicate (ctxt));
			end;
		end;

end -- class INSPECT_AS_B
