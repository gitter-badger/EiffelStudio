-- Enlarged node for external feature call in workbench mode

class EXTERNAL_BW 

inherit

	EXTERNAL_BL
		redefine
			check_dt_current, generate_access_on_type,
			need_invariant, set_need_invariant
		end

creation

	make
	
feature

	need_invariant: BOOLEAN;
			-- Does the call need an invariant check ?

	set_need_invariant (b: BOOLEAN) is
			-- Assign `b' to `need_invariant'.
		do
			need_invariant := b
		end;

	make is
		do
			need_invariant := True;
		end;

	check_dt_current (reg: REGISTRABLE) is
			-- Check whether we need to compute the dynamic type of current
			-- and call context.add_dt_current accordingly. The parameter
			-- `reg' is the entity on which the access is made.
		local
			class_type: CL_TYPE_I;
			type_i: TYPE_I;
			cond: BOOLEAN;
			access: ACCESS_B;
			void_register: REGISTER;
		do
			type_i := context_type;
			class_type ?= type_i;
			cond := not (type_i.is_basic or else class_type = Void);
			if reg.is_current and cond then
				context.add_dt_current;
			end;
			if not reg.is_predefined and cond then
					-- BEWARE!! The function call is polymorphic hence we'll
					-- need to evaluate `reg' twice: once to get its dynamic
					-- type and once as a parameter for Current. Hence we
					-- must make sure it is not held in a No_register--RAM.
			 	access ?= reg;	  -- Cannot fail
				if access.register = No_register then
					access.set_register (void_register);
					access.get_register;
				end;
			end;
		end;

	generate_access_on_type (reg: REGISTRABLE; typ: CL_TYPE_I) is
			-- Generate external call in a `typ' context
		local
			is_nested: BOOLEAN;
			r_id: ROUTINE_ID;
			rout_info: ROUT_INFO;
			is_boolean: BOOLEAN
			f: INDENT_FILE
		do
			is_nested := not is_first;
			f := generated_file

			is_boolean :=  type.is_boolean;
			if is_boolean then
				f.putstring ("EIF_TEST((");
			else
				f.putchar ('(');
			end;
			real_type (type).c_type.generate_function_cast (f, argument_types);
			if	
				Compilation_modes.is_precompiling or else
				typ.base_class.is_precompiled
			then
				if is_nested and need_invariant then
					f.putstring ("RTVPF(");
				else
					f.putstring ("RTWPF(");
				end;
				r_id := typ.base_class.feature_table.item
					(feature_name).rout_id_set.first;
				rout_info := System.rout_info_table.item (r_id);
				f.putstring (rout_info.origin.generated_id);
				f.putstring (gc_comma);
				f.putint (rout_info.offset);
			else
				if is_nested and need_invariant then
					f.putstring ("RTVF(");
				else
					f.putstring ("RTWF(");
				end;
				f.putint (typ.associated_class_type.id.id - 1);
				f.putstring (gc_comma);
				f.putint (real_feature_id);
			end;
			f.putstring (gc_comma);
			if not is_nested then
				context.generate_current_dtype;
			elseif need_invariant then
				f.putchar ('"');
				f.putstring (feature_name);
				f.putstring ("%", ");
				reg.print_register;
			else
				f.putstring (gc_upper_dtype_lparan);
				reg.print_register;
				f.putchar (')');
			end;
			f.putstring ("))");
		end;

end
