indexing

	description: 
		"Internal representation of a class. Instance of CLASS_I represent%
		%non-compiled classes, but instance of CLASS_C already compiled%
		%classes.";
	date: "$Date$";
	revision: "$Revision $"

class CLASS_I 

inherit

	SHARED_ASSERTION_LEVEL;
	SHARED_OPTION_LEVEL;
	SHARED_OPTIMIZE_LEVEL;
	SHARED_DEBUG_LEVEL;
	SHARED_VISIBLE_LEVEL;
	SHARED_DYNAMIC_CALLS;
	SHARED_WORKBENCH;
	SYSTEM_CONSTANTS;
	COMPARABLE
		undefine
			is_equal
		end;
	COMPILER_EXPORTER

creation

	make

feature -- Properties

	class_name: STRING;
			-- Class name

	cluster: CLUSTER_I;
			-- Cluster to which the class belongs to

	base_name: STRING;
			-- Base file name of the class

	hidden: BOOLEAN;
			-- Is the class hidden in the precompilation sets?

	file_name: STRING is
			-- Full file name of the class
		local
			fn: FILE_NAME
		do
			!!fn.make_from_string (cluster.path);
			fn.set_file_name (base_name);
			Result := fn
		end;

	date: INTEGER;
			-- Date of the file

	compiled_class: CLASS_C is
			-- Compiled class
		local
			ec: E_CLASS
		do
			ec := compiled_eclass;
			if ec /= Void then
				Result := ec.compiled_info
			end
		end;

	compiled_eclass: E_CLASS 
			-- Compiled class

	assertion_level: ASSERTION_I;
			-- Assertion checking level

	trace_level: OPTION_I;
			-- Tracing level

	profile_level: OPTION_I;
			-- Profile level

	optimize_level: OPTIMIZE_I;
			-- Optimization level

	debug_level: DEBUG_I;
			-- Debug level

	visible_level: VISIBLE_I;
			-- Visible level

	make is
			-- initialization
		do
			reset_options;
			if not System.first_compilation then
					-- Time check and genericity (a generic parameter cannot
					-- have the same name as a class)
				System.record_new_class_i (Current)
			end;
		end;

	set_base_name (s: STRING) is
			-- Assign `s' to `file_name'.
		do
			base_name := s;	
		end;

	text: STRING is
			-- Text of the Current lace file.
			-- Void if unreadable file
		require
			valid_file_name: file_name /= Void
		local
			a_file: RAW_FILE
		do
			!! a_file.make (file_name);
			if a_file.exists and then a_file.is_readable then
				a_file.open_read;
				a_file.readstream (a_file.count);
				a_file.close;
				Result := clone (a_file.laststring)
			end
		end

feature -- Access

	compiled: BOOLEAN is
			-- Is the class already compiled ?
		do
			Result := compiled_class /= Void;
		ensure
			compiled: Result implies compiled_class /= Void
		end; 

	date_has_changed: BOOLEAN is
		local
			str: ANY;
			new_date: INTEGER
		do
			str := file_name.to_c;
			new_date := eif_date ($str);
			Result := new_date /= date;
		end;

feature -- Setting

	set_class_name (s: like class_name) is
			-- Assign `s' to `class_name'.
		do
			class_name := s;
		ensure
			set: class_name = s
		end;

feature -- Comparison

	infix "<" (other: like Current): BOOLEAN is
			-- Class name alphabetic order
		do
			Result := class_name < other.class_name
		end;

feature -- Output

	append_name (ow: OUTPUT_WINDOW) is
			-- Append the name ot the current class in `a_clickable'
		require
			non_void_ow: ow /= Void
		local
			c_name: STRING;
		do
			c_name := clone (class_name)
			c_name.to_upper;
			ow.put_classi (Current, c_name) 
		end;

feature {COMPILER_EXPORTER} -- Properties

	visible_name: STRING;
			-- Visible name

	changed: BOOLEAN;
			-- Must the class be recompiled ?

	pass2_done: BOOLEAN;
			-- Pass2 has been done?

	dynamic_calls: DYNAMIC_I;
			-- Feature calls that have to be dynamically bound

feature {COMPILER_EXPORTER} -- Setting

	reset_options is
			-- Reset the option values of the class
		do
debug
	io.error.putstring ("reset_options: ");
	if class_name /= Void then
		io.error.putstring (class_name);
	end;
	io.error.new_line;
end;
			assertion_level := Default_level;
			trace_level := No_option;
			profile_level := No_option;
			optimize_level := No_optimize;
			debug_level := No_debug;
			visible_level := Visible_default;
			dynamic_calls := No_dynamic;
			hidden := False
		end;

	set_changed (b: BOOLEAN) is
			-- Assign `b' to `changed'.
		do
			changed := b;
		end;

	set_compiled_class (c: CLASS_C) is
			-- Assign `c' to `compiled_class'.
		require
			non_void_c: c /= Void
		do
			compiled_eclass := c.e_class
		ensure
			compiled_eclass = c.e_class
		end;

	reset_compiled_class is
			-- Reset `compiled_class' to Void.
		do
			compiled_eclass := Void
		ensure
			void_compiled_eclass: compiled_eclass = Void
		end;

	set_date is
			-- Assign `d' to `date'
		local
			str: ANY;
		do
			str := file_name.to_c;
			date := eif_date ($str);
		end;

	set_cluster (c: like cluster) is
			-- Assign `c' to `cluster'.
		do
			cluster := c
		end;

feature {COMPILER_EXPORTER} -- Compiled class

	class_to_recompile: CLASS_C is
			-- Instance of a class to remcompile
		require
			class_name_exists: class_name /= Void;
		local
			local_system: SYSTEM_I;
			e_class: E_CLASS
		do
			!! e_class.make (Current);
			local_system := system;
			if Current = local_system.boolean_class then
				!BOOLEAN_B! Result.make (e_class)
			elseif Current = local_system.character_class then
				!CHARACTER_B! Result.make (e_class)
			elseif Current = local_system.integer_class then
				!INTEGER_B! Result.make (e_class)
			elseif Current = local_system.real_class then
				!REAL_B! Result.make (e_class)
			elseif Current = local_system.double_class then
				!DOUBLE_B! Result.make (e_class)
			elseif Current = local_system.pointer_class then
				!POINTER_B! Result.make (e_class)
			elseif Current = local_system.any_class then
				!ANY_B! Result.make (e_class)
			elseif Current = local_system.special_class then
				!SPECIAL_B! Result.make (e_class)
			elseif Current = local_system.to_special_class then
				!TO_SPECIAL_B! Result.make (e_class)
			elseif Current = local_system.array_class then
				!ARRAY_CLASS_B! Result.make (e_class)
			elseif Current = local_system.string_class then
				!STRING_CLASS_B! Result.make (e_class)
			elseif Current = local_system.character_ref_class then
				!CHARACTER_REF_B! Result.make (e_class)
			elseif Current = local_system.boolean_ref_class then
				!BOOLEAN_REF_B! Result.make (e_class)
			elseif Current = local_system.integer_ref_class then
				!INTEGER_REF_B! Result.make (e_class)
			elseif Current = local_system.real_ref_class then
				!REAL_REF_B! Result.make (e_class)
			elseif Current = local_system.double_ref_class then
				!DOUBLE_REF_B! Result.make (e_class)
			elseif Current = local_system.pointer_ref_class then
				!POINTER_REF_B! Result.make (e_class)
			else
				!! Result.make (e_class);
			end;
		ensure
			Result_exists: Result /= Void;
		end;

feature {COMPILER_EXPORTER} -- Setting

	set_assertion_level (l: ASSERTION_I) is
			-- Assign `l' to `assertion_level'.
		do
			assertion_level := l;
debug
	io.error.putstring ("set_assertion_level (");
	io.error.putstring (class_name);
	io.error.putstring ("): ");
	l.trace;
end;
		end;

	set_trace_level (t: like trace_level) is
			-- Assign `t' to `trace_level'.
		do
			trace_level := t;
		end;

	set_profile_level (t: like profile_level) is
			-- Assign `t' to `trace_level'.
		do
			profile_level := t;
		end;

	set_hide_level (b: BOOLEAN) is
			-- Assign `b' to `hidden'.
		do
			hidden := b
debug ("HIDE_OPTION")
	io.error.putstring ("class name: ");
	io.error.putstring (class_name);
	io.error.putstring (" is_hidden: ");
	io.error.putbool (hidden);
	io.error.new_line;
end;
		end;

	set_optimize_level (o: OPTIMIZE_I) is
			-- Assign `o' to `optimize_level'.
		do
			optimize_level := o;
		end;

	set_debug_level (d: DEBUG_I) is
			-- Assign `d' to `debug_level'.
		local
			other_partial, partial: DEBUG_TAG_I;
			new_partial: DEBUG_TAG_I
		do
			if d.is_partial then
				if debug_level.is_partial then
					partial ?= debug_level;
					other_partial ?= d;
					!! new_partial.make;
					new_partial.merge (partial);
					new_partial.merge (other_partial);
					debug_level := new_partial;
				else
					debug_level := d;
				end;
			else
				debug_level := d;
			end;
		end;

	set_dynamic_calls (d: DYNAMIC_I) is
			-- Assign `d' to `dynamic_calls'.
		local
			other_partial, partial: DYNAMIC_FEAT_I;
			new_partial: DYNAMIC_FEAT_I
		do
			if not dynamic_calls.is_all then
				if d.is_all or dynamic_calls.is_no then
					dynamic_calls := d
				elseif dynamic_calls.is_partial and d.is_partial then
					partial ?= dynamic_calls;
					other_partial ?= d;
					!! new_partial.make;
					new_partial.merge (partial);
					new_partial.merge (other_partial);
					dynamic_calls := new_partial
				end
			end
		end;

	set_visible_level (v: VISIBLE_I) is
			-- Assign `v' to `visible_level'.
		do
			visible_level := v;
		end;

	set_visible_name (s: STRING) is
			-- Assign `s' to `visible_name'.
		do
			visible_name := s;
		end;

	external_name: STRING is
			-- Name of the class for the external environment
		do
			if visible_name = Void then
				Result := class_name;
			else
				Result := visible_name;
			end;
		end;

	copy_options (other: CLASS_I) is
			-- Copy compilation options from `other' into Current.
		require
			good_argument: not (other = Void);
		do
			debug_level := other.debug_level;
			trace_level := other.trace_level;
			profile_level := other.profile_level;
			optimize_level := other.optimize_level;
			assertion_level := other.assertion_level;
			visible_level := other.visible_level;
			visible_name := other.visible_name;
			dynamic_calls := other.dynamic_calls
			hidden := other.hidden;
		end;

feature {NONE} -- Externals

	eif_date (s: POINTER): INTEGER is
			-- Date of file of name `str'.
		external
			"C"
		end;

end
