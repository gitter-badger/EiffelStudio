indexing
	description: "Implemented `IEiffelCompiler' Interface."
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	IEIFFEL_COMPILER_IMPL_PROXY

inherit
	IEIFFEL_COMPILER_INTERFACE

	ECOM_QUERIABLE

creation
	make_from_other,
	make_from_pointer

feature {NONE}  -- Initialization

	make_from_pointer (cpp_obj: POINTER) is
			-- Make from pointer
		do
			initializer := ccom_create_ieiffel_compiler_impl_proxy_from_pointer(cpp_obj)
			item := ccom_item (initializer)
		end

feature -- Access

	compiler_version: STRING is
			-- Compiler version.
		do
			Result := ccom_compiler_version (initializer)
		end

	has_signable_generation: BOOLEAN is
			-- Is the compiler a trial version.
		do
			Result := ccom_has_signable_generation (initializer)
		end

	can_run: BOOLEAN is
			-- Can product be run? (i.e. is it activated or was run less than 10 times)
		do
			Result := ccom_can_run (initializer)
		end

	was_compilation_successful: BOOLEAN is
			-- Was last compilation successful?
		do
			Result := ccom_was_compilation_successful (initializer)
		end

	freezing_occurred: BOOLEAN is
			-- Did last compile warrant a call to finish_freezing?
		do
			Result := ccom_freezing_occurred (initializer)
		end

	freeze_command_name: STRING is
			-- Eiffel Freeze command name
		do
			Result := ccom_freeze_command_name (initializer)
		end

	freeze_command_arguments: STRING is
			-- Eiffel Freeze command arguments
		do
			Result := ccom_freeze_command_arguments (initializer)
		end

feature -- Basic Operations

	compile (mode: INTEGER) is
			-- Compile.
			-- `mode' [out]. See ECOM_EIF_COMPILATION_MODE_ENUM for possible `mode' values. 
		do
			ccom_compile (initializer, mode)
		end

	compile_to_pipe (mode: INTEGER; bstr_pipe_name: STRING) is
			-- Compile to an already established named pipe.
			-- `mode' [out]. See ECOM_EIF_COMPILATION_MODE_ENUM for possible `mode' values. 
			-- `bstr_pipe_name' [out].  
		do
			ccom_compile_to_pipe (initializer, mode, bstr_pipe_name)
		end

	remove_file_locks is
			-- Remove file locks
		do
			ccom_remove_file_locks (initializer)
		end

	set_display_warnings (arg_1: BOOLEAN) is
			-- Should warning events be raised when compilation raises a warning?
			-- `arg_1' [in].  
		do
			ccom_set_display_warnings (initializer, arg_1)
		end

	expand_path (bstr_path: STRING): STRING is
			-- Takes a path and expands it using the env vars.
			-- `bstr_path' [in].  
		do
			Result := ccom_expand_path (initializer, bstr_path)
		end

	generate_msil_key_file_name (bstr_file_name: STRING) is
			-- Generate a cyrptographic key filename.
			-- `bstr_file_name' [in].  
		do
			ccom_generate_msil_key_file_name (initializer, bstr_file_name)
		end

feature {NONE}  -- Implementation

	delete_wrapper is
			-- Delete wrapper
		do
			ccom_delete_ieiffel_compiler_impl_proxy(initializer)
		end

feature {NONE}  -- Externals

	ccom_compiler_version (cpp_obj: POINTER): STRING is
			-- Compiler version.
		external
			"C++ [ecom_EiffelComCompiler::IEiffelCompiler_impl_proxy %"ecom_EiffelComCompiler_IEiffelCompiler_impl_proxy.h%"](): EIF_REFERENCE"
		end

	ccom_has_signable_generation (cpp_obj: POINTER): BOOLEAN is
			-- Is the compiler a trial version.
		external
			"C++ [ecom_EiffelComCompiler::IEiffelCompiler_impl_proxy %"ecom_EiffelComCompiler_IEiffelCompiler_impl_proxy.h%"](): EIF_BOOLEAN"
		end

	ccom_can_run (cpp_obj: POINTER): BOOLEAN is
			-- Can product be run? (i.e. is it activated or was run less than 10 times)
		external
			"C++ [ecom_EiffelComCompiler::IEiffelCompiler_impl_proxy %"ecom_EiffelComCompiler_IEiffelCompiler_impl_proxy.h%"](): EIF_BOOLEAN"
		end

	ccom_compile (cpp_obj: POINTER; mode: INTEGER) is
			-- Compile.
		external
			"C++ [ecom_EiffelComCompiler::IEiffelCompiler_impl_proxy %"ecom_EiffelComCompiler_IEiffelCompiler_impl_proxy.h%"](EIF_INTEGER)"
		end

	ccom_compile_to_pipe (cpp_obj: POINTER; mode: INTEGER; bstr_pipe_name: STRING) is
			-- Compile to an already established named pipe.
		external
			"C++ [ecom_EiffelComCompiler::IEiffelCompiler_impl_proxy %"ecom_EiffelComCompiler_IEiffelCompiler_impl_proxy.h%"](EIF_INTEGER,EIF_OBJECT)"
		end

	ccom_was_compilation_successful (cpp_obj: POINTER): BOOLEAN is
			-- Was last compilation successful?
		external
			"C++ [ecom_EiffelComCompiler::IEiffelCompiler_impl_proxy %"ecom_EiffelComCompiler_IEiffelCompiler_impl_proxy.h%"](): EIF_BOOLEAN"
		end

	ccom_freezing_occurred (cpp_obj: POINTER): BOOLEAN is
			-- Did last compile warrant a call to finish_freezing?
		external
			"C++ [ecom_EiffelComCompiler::IEiffelCompiler_impl_proxy %"ecom_EiffelComCompiler_IEiffelCompiler_impl_proxy.h%"](): EIF_BOOLEAN"
		end

	ccom_freeze_command_name (cpp_obj: POINTER): STRING is
			-- Eiffel Freeze command name
		external
			"C++ [ecom_EiffelComCompiler::IEiffelCompiler_impl_proxy %"ecom_EiffelComCompiler_IEiffelCompiler_impl_proxy.h%"](): EIF_REFERENCE"
		end

	ccom_freeze_command_arguments (cpp_obj: POINTER): STRING is
			-- Eiffel Freeze command arguments
		external
			"C++ [ecom_EiffelComCompiler::IEiffelCompiler_impl_proxy %"ecom_EiffelComCompiler_IEiffelCompiler_impl_proxy.h%"](): EIF_REFERENCE"
		end

	ccom_remove_file_locks (cpp_obj: POINTER) is
			-- Remove file locks
		external
			"C++ [ecom_EiffelComCompiler::IEiffelCompiler_impl_proxy %"ecom_EiffelComCompiler_IEiffelCompiler_impl_proxy.h%"]()"
		end

	ccom_set_display_warnings (cpp_obj: POINTER; arg_1: BOOLEAN) is
			-- Should warning events be raised when compilation raises a warning?
		external
			"C++ [ecom_EiffelComCompiler::IEiffelCompiler_impl_proxy %"ecom_EiffelComCompiler_IEiffelCompiler_impl_proxy.h%"](EIF_BOOLEAN)"
		end

	ccom_expand_path (cpp_obj: POINTER; bstr_path: STRING): STRING is
			-- Takes a path and expands it using the env vars.
		external
			"C++ [ecom_EiffelComCompiler::IEiffelCompiler_impl_proxy %"ecom_EiffelComCompiler_IEiffelCompiler_impl_proxy.h%"](EIF_OBJECT): EIF_REFERENCE"
		end

	ccom_generate_msil_key_file_name (cpp_obj: POINTER; bstr_file_name: STRING) is
			-- Generate a cyrptographic key filename.
		external
			"C++ [ecom_EiffelComCompiler::IEiffelCompiler_impl_proxy %"ecom_EiffelComCompiler_IEiffelCompiler_impl_proxy.h%"](EIF_OBJECT)"
		end

	ccom_delete_ieiffel_compiler_impl_proxy (a_pointer: POINTER) is
			-- Release resource
		external
			"C++ [delete ecom_EiffelComCompiler::IEiffelCompiler_impl_proxy %"ecom_EiffelComCompiler_IEiffelCompiler_impl_proxy.h%"]()"
		end

	ccom_create_ieiffel_compiler_impl_proxy_from_pointer (a_pointer: POINTER): POINTER is
			-- Create from pointer
		external
			"C++ [new ecom_EiffelComCompiler::IEiffelCompiler_impl_proxy %"ecom_EiffelComCompiler_IEiffelCompiler_impl_proxy.h%"](IUnknown *)"
		end

	ccom_item (cpp_obj: POINTER): POINTER is
			-- Item
		external
			"C++ [ecom_EiffelComCompiler::IEiffelCompiler_impl_proxy %"ecom_EiffelComCompiler_IEiffelCompiler_impl_proxy.h%"]():EIF_POINTER"
		end

end -- IEIFFEL_COMPILER_IMPL_PROXY

