indexing
	description: "CEIFFEL_COMPILER_COCLASS Implementation."
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	CEIFFEL_COMPILER_COCLASS_IMP

inherit
	CEIFFEL_COMPILER_COCLASS

creation
	make,
	make_from_pointer

feature {NONE}  -- Initialization

	make is
			-- Creation. Implement if needed.
		do
			
		end

	make_from_pointer (cpp_obj: POINTER) is
			-- Creation.
		do
			set_item (cpp_obj)
			make
		end

feature -- Access

	compiler_version: STRING is
			-- Compiler version.
		do
			-- Put Implementation here.
		end

	has_signable_generation: BOOLEAN is
			-- Is the compiler a trial version.
		do
			-- Put Implementation here.
		end

	can_run: BOOLEAN is
			-- Can product be run? (i.e. is it activated or was run less than 10 times)
		do
			-- Put Implementation here.
		end

	was_compilation_successful: BOOLEAN is
			-- Was last compilation successful?
		do
			-- Put Implementation here.
		end

	freezing_occurred: BOOLEAN is
			-- Did last compile warrant a call to finish_freezing?
		do
			-- Put Implementation here.
		end

	freeze_command_name: STRING is
			-- Eiffel Freeze command name
		do
			-- Put Implementation here.
		end

	freeze_command_arguments: STRING is
			-- Eiffel Freeze command arguments
		do
			-- Put Implementation here.
		end

feature -- Basic Operations

	create_item is
			-- Initialize `item'
		do
			item := ccom_create_item (Current)
		end

	compile (mode: INTEGER) is
			-- Compile.
			-- `mode' [out]. See ECOM_EIF_COMPILATION_MODE_ENUM for possible `mode' values. 
		do
			-- Put Implementation here.
		end

	compile_to_pipe (mode: INTEGER; bstr_pipe_name: STRING) is
			-- Compile to an already established named pipe.
			-- `mode' [out]. See ECOM_EIF_COMPILATION_MODE_ENUM for possible `mode' values. 
			-- `bstr_pipe_name' [out].  
		do
			-- Put Implementation here.
		end

	remove_file_locks is
			-- Remove file locks
		do
			-- Put Implementation here.
		end

	set_display_warnings (arg_1: BOOLEAN) is
			-- Should warning events be raised when compilation raises a warning?
			-- `arg_1' [in].  
		do
			-- Put Implementation here.
		end

	expand_path (bstr_path: STRING): STRING is
			-- Takes a path and expands it using the env vars.
			-- `bstr_path' [in].  
		do
			-- Put Implementation here.
		end

	generate_msil_key_file_name (bstr_file_name: STRING) is
			-- Generate a cyrptographic key filename.
			-- `bstr_file_name' [in].  
		do
			-- Put Implementation here.
		end

feature {NONE}  -- Externals

	ccom_create_item (eif_object: like Current): POINTER is
			-- Initialize `item'
		external
			"C++ [new ecom_EiffelComCompiler::CEiffelCompiler %"ecom_EiffelComCompiler_CEiffelCompiler_s.h%"](EIF_OBJECT)"
		end

end -- CEIFFEL_COMPILER_COCLASS_IMP

