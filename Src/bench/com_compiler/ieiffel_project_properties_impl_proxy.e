indexing
	description: "Implemented `IEiffelProjectProperties' Interface."
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	IEIFFEL_PROJECT_PROPERTIES_IMPL_PROXY

inherit
	IEIFFEL_PROJECT_PROPERTIES_INTERFACE

	ECOM_QUERIABLE

creation
	make_from_other,
	make_from_pointer

feature {NONE}  -- Initialization

	make_from_pointer (cpp_obj: POINTER) is
			-- Make from pointer
		do
			initializer := ccom_create_ieiffel_project_properties_impl_proxy_from_pointer(cpp_obj)
			item := ccom_item (initializer)
		end

feature -- Access

	system_name: STRING is
			-- System name.
		do
			Result := ccom_system_name (initializer)
		end

	root_class_name: STRING is
			-- Root class name.
		do
			Result := ccom_root_class_name (initializer)
		end

	creation_routine: STRING is
			-- Creation routine name.
		do
			Result := ccom_creation_routine (initializer)
		end

	compilation_type: INTEGER is
			-- Compilation type.
			-- See ECOM_X__EIF_COMPILATION_TYPES_ENUM for possible `Result' values.
		do
			Result := ccom_compilation_type (initializer)
		end

	console_application: BOOLEAN is
			-- Is console application?
		do
			Result := ccom_console_application (initializer)
		end

	evaluate_require: BOOLEAN is
			-- Should preconditions be evaluated?
		do
			Result := ccom_evaluate_require (initializer)
		end

	evaluate_ensure: BOOLEAN is
			-- Should postconditions be evaluated?
		do
			Result := ccom_evaluate_ensure (initializer)
		end

	evaluate_check: BOOLEAN is
			-- Should check assertions be evaluated?
		do
			Result := ccom_evaluate_check (initializer)
		end

	evaluate_loop: BOOLEAN is
			-- Should loop assertions be evaluated?
		do
			Result := ccom_evaluate_loop (initializer)
		end

	evaluate_invariant: BOOLEAN is
			-- Should class invariants be evaluated?
		do
			Result := ccom_evaluate_invariant (initializer)
		end

	debug_info: BOOLEAN is
			-- Generate debug info?
		do
			Result := ccom_debug_info (initializer)
		end

	clusters: IEIFFEL_SYSTEM_CLUSTERS_INTERFACE is
			-- Project Clusters.
		do
			Result := ccom_clusters (initializer)
		end

	externals: IEIFFEL_SYSTEM_EXTERNALS_INTERFACE is
			-- Externals.
		do
			Result := ccom_externals (initializer)
		end

	default_namespace: STRING is
			-- Default namespace.
		do
			Result := ccom_default_namespace (initializer)
		end

	assemblies: IEIFFEL_SYSTEM_ASSEMBLIES_INTERFACE is
			-- Assemblies.
		do
			Result := ccom_assemblies (initializer)
		end

	title: STRING is
			-- Project title.
		do
			Result := ccom_title (initializer)
		end

	description: STRING is
			-- Project description.
		do
			Result := ccom_description (initializer)
		end

	company: STRING is
			-- Project company.
		do
			Result := ccom_company (initializer)
		end

	product: STRING is
			-- Product.
		do
			Result := ccom_product (initializer)
		end

	version: STRING is
			-- Project version.
		do
			Result := ccom_version (initializer)
		end

	trademark: STRING is
			-- Project trademark.
		do
			Result := ccom_trademark (initializer)
		end

	copyright: STRING is
			-- Project copyright.
		do
			Result := ccom_copyright (initializer)
		end

	key_file_name: STRING is
			-- Asembly signing key file name.
		do
			Result := ccom_key_file_name (initializer)
		end

	culture: STRING is
			-- Asembly culture.
		do
			Result := ccom_culture (initializer)
		end

feature -- Status Report

	last_error_code: INTEGER is
			-- Last error code.
		do
			Result := ccom_last_error_code (initializer)
		end

	last_error_description: STRING is
			-- Last error description.
		do
			Result := ccom_last_error_description (initializer)
		end

	last_error_help_file: STRING is
			-- Last error help file.
		do
			Result := ccom_last_error_help_file (initializer)
		end

	last_source_of_exception: STRING is
			-- Last source of exception.
		do
			Result := ccom_last_source_of_exception (initializer)
		end

feature -- Basic Operations

	set_system_name (return_value: STRING) is
			-- System name.
			-- `return_value' [in].  
		do
			ccom_set_system_name (initializer, return_value)
		end

	set_root_class_name (return_value: STRING) is
			-- Root class name.
			-- `return_value' [in].  
		do
			ccom_set_root_class_name (initializer, return_value)
		end

	set_creation_routine (return_value: STRING) is
			-- Creation routine name.
			-- `return_value' [in].  
		do
			ccom_set_creation_routine (initializer, return_value)
		end

	set_compilation_type (return_value: INTEGER) is
			-- Compilation type.
			-- `return_value' [in]. See ECOM_X__EIF_COMPILATION_TYPES_ENUM for possible `return_value' values. 
		do
			ccom_set_compilation_type (initializer, return_value)
		end

	set_console_application (return_value: BOOLEAN) is
			-- Is console application?
			-- `return_value' [in].  
		do
			ccom_set_console_application (initializer, return_value)
		end

	set_evaluate_require (return_value: BOOLEAN) is
			-- Should preconditions be evaluated?
			-- `return_value' [in].  
		do
			ccom_set_evaluate_require (initializer, return_value)
		end

	set_evaluate_ensure (return_value: BOOLEAN) is
			-- Should postconditions be evaluated?
			-- `return_value' [in].  
		do
			ccom_set_evaluate_ensure (initializer, return_value)
		end

	set_evaluate_check (return_value: BOOLEAN) is
			-- Should check assertions be evaluated?
			-- `return_value' [in].  
		do
			ccom_set_evaluate_check (initializer, return_value)
		end

	set_evaluate_loop (return_value: BOOLEAN) is
			-- Should loop assertions be evaluated?
			-- `return_value' [in].  
		do
			ccom_set_evaluate_loop (initializer, return_value)
		end

	set_evaluate_invariant (return_value: BOOLEAN) is
			-- Should class invariants be evaluated?
			-- `return_value' [in].  
		do
			ccom_set_evaluate_invariant (initializer, return_value)
		end

	set_debug_info (return_value: BOOLEAN) is
			-- Generate debug info?
			-- `return_value' [in].  
		do
			ccom_set_debug_info (initializer, return_value)
		end

	set_default_namespace (return_value: STRING) is
			-- Default namespace.
			-- `return_value' [in].  
		do
			ccom_set_default_namespace (initializer, return_value)
		end

	set_title (return_value: STRING) is
			-- Project title.
			-- `return_value' [in].  
		do
			ccom_set_title (initializer, return_value)
		end

	set_description (return_value: STRING) is
			-- Project description.
			-- `return_value' [in].  
		do
			ccom_set_description (initializer, return_value)
		end

	set_company (return_value: STRING) is
			-- Project company.
			-- `return_value' [in].  
		do
			ccom_set_company (initializer, return_value)
		end

	set_product (return_value: STRING) is
			-- Product.
			-- `return_value' [in].  
		do
			ccom_set_product (initializer, return_value)
		end

	set_version (return_value: STRING) is
			-- Project version.
			-- `return_value' [in].  
		do
			ccom_set_version (initializer, return_value)
		end

	set_trademark (return_value: STRING) is
			-- Project trademark.
			-- `return_value' [in].  
		do
			ccom_set_trademark (initializer, return_value)
		end

	set_copyright (return_value: STRING) is
			-- Project copyright.
			-- `return_value' [in].  
		do
			ccom_set_copyright (initializer, return_value)
		end

	set_key_file_name (return_value: STRING) is
			-- Asembly signing key file name.
			-- `return_value' [in].  
		do
			ccom_set_key_file_name (initializer, return_value)
		end

	set_culture (return_value: STRING) is
			-- Asembly culture.
			-- `return_value' [in].  
		do
			ccom_set_culture (initializer, return_value)
		end

	apply is
			-- Apply changes
		do
			ccom_apply (initializer)
		end

feature {NONE}  -- Implementation

	delete_wrapper is
			-- Delete wrapper
		do
			ccom_delete_ieiffel_project_properties_impl_proxy(initializer)
		end

feature {NONE}  -- Externals

	ccom_system_name (cpp_obj: POINTER): STRING is
			-- System name.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_set_system_name (cpp_obj: POINTER; return_value: STRING) is
			-- System name.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_OBJECT)"
		end

	ccom_root_class_name (cpp_obj: POINTER): STRING is
			-- Root class name.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_set_root_class_name (cpp_obj: POINTER; return_value: STRING) is
			-- Root class name.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_OBJECT)"
		end

	ccom_creation_routine (cpp_obj: POINTER): STRING is
			-- Creation routine name.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_set_creation_routine (cpp_obj: POINTER; return_value: STRING) is
			-- Creation routine name.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_OBJECT)"
		end

	ccom_compilation_type (cpp_obj: POINTER): INTEGER is
			-- Compilation type.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_INTEGER"
		end

	ccom_set_compilation_type (cpp_obj: POINTER; return_value: INTEGER) is
			-- Compilation type.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_INTEGER)"
		end

	ccom_console_application (cpp_obj: POINTER): BOOLEAN is
			-- Is console application?
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_set_console_application (cpp_obj: POINTER; return_value: BOOLEAN) is
			-- Is console application?
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_BOOLEAN)"
		end

	ccom_evaluate_require (cpp_obj: POINTER): BOOLEAN is
			-- Should preconditions be evaluated?
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_set_evaluate_require (cpp_obj: POINTER; return_value: BOOLEAN) is
			-- Should preconditions be evaluated?
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_BOOLEAN)"
		end

	ccom_evaluate_ensure (cpp_obj: POINTER): BOOLEAN is
			-- Should postconditions be evaluated?
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_set_evaluate_ensure (cpp_obj: POINTER; return_value: BOOLEAN) is
			-- Should postconditions be evaluated?
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_BOOLEAN)"
		end

	ccom_evaluate_check (cpp_obj: POINTER): BOOLEAN is
			-- Should check assertions be evaluated?
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_set_evaluate_check (cpp_obj: POINTER; return_value: BOOLEAN) is
			-- Should check assertions be evaluated?
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_BOOLEAN)"
		end

	ccom_evaluate_loop (cpp_obj: POINTER): BOOLEAN is
			-- Should loop assertions be evaluated?
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_set_evaluate_loop (cpp_obj: POINTER; return_value: BOOLEAN) is
			-- Should loop assertions be evaluated?
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_BOOLEAN)"
		end

	ccom_evaluate_invariant (cpp_obj: POINTER): BOOLEAN is
			-- Should class invariants be evaluated?
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_set_evaluate_invariant (cpp_obj: POINTER; return_value: BOOLEAN) is
			-- Should class invariants be evaluated?
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_BOOLEAN)"
		end

	ccom_debug_info (cpp_obj: POINTER): BOOLEAN is
			-- Generate debug info?
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_set_debug_info (cpp_obj: POINTER; return_value: BOOLEAN) is
			-- Generate debug info?
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_BOOLEAN)"
		end

	ccom_clusters (cpp_obj: POINTER): IEIFFEL_SYSTEM_CLUSTERS_INTERFACE is
			-- Project Clusters.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_externals (cpp_obj: POINTER): IEIFFEL_SYSTEM_EXTERNALS_INTERFACE is
			-- Externals.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_default_namespace (cpp_obj: POINTER): STRING is
			-- Default namespace.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_set_default_namespace (cpp_obj: POINTER; return_value: STRING) is
			-- Default namespace.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_OBJECT)"
		end

	ccom_assemblies (cpp_obj: POINTER): IEIFFEL_SYSTEM_ASSEMBLIES_INTERFACE is
			-- Assemblies.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_title (cpp_obj: POINTER): STRING is
			-- Project title.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_set_title (cpp_obj: POINTER; return_value: STRING) is
			-- Project title.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_OBJECT)"
		end

	ccom_description (cpp_obj: POINTER): STRING is
			-- Project description.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_set_description (cpp_obj: POINTER; return_value: STRING) is
			-- Project description.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_OBJECT)"
		end

	ccom_company (cpp_obj: POINTER): STRING is
			-- Project company.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_set_company (cpp_obj: POINTER; return_value: STRING) is
			-- Project company.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_OBJECT)"
		end

	ccom_product (cpp_obj: POINTER): STRING is
			-- Product.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_set_product (cpp_obj: POINTER; return_value: STRING) is
			-- Product.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_OBJECT)"
		end

	ccom_version (cpp_obj: POINTER): STRING is
			-- Project version.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_set_version (cpp_obj: POINTER; return_value: STRING) is
			-- Project version.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_OBJECT)"
		end

	ccom_trademark (cpp_obj: POINTER): STRING is
			-- Project trademark.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_set_trademark (cpp_obj: POINTER; return_value: STRING) is
			-- Project trademark.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_OBJECT)"
		end

	ccom_copyright (cpp_obj: POINTER): STRING is
			-- Project copyright.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_set_copyright (cpp_obj: POINTER; return_value: STRING) is
			-- Project copyright.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_OBJECT)"
		end

	ccom_key_file_name (cpp_obj: POINTER): STRING is
			-- Asembly signing key file name.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_set_key_file_name (cpp_obj: POINTER; return_value: STRING) is
			-- Asembly signing key file name.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_OBJECT)"
		end

	ccom_culture (cpp_obj: POINTER): STRING is
			-- Asembly culture.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_set_culture (cpp_obj: POINTER; return_value: STRING) is
			-- Asembly culture.
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](EIF_OBJECT)"
		end

	ccom_apply (cpp_obj: POINTER) is
			-- Apply changes
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"]()"
		end

	ccom_delete_ieiffel_project_properties_impl_proxy (a_pointer: POINTER) is
			-- Release resource
		external
			"C++ [delete ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"]()"
		end

	ccom_create_ieiffel_project_properties_impl_proxy_from_pointer (a_pointer: POINTER): POINTER is
			-- Create from pointer
		external
			"C++ [new ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"](IUnknown *)"
		end

	ccom_item (cpp_obj: POINTER): POINTER is
			-- Item
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"]():EIF_POINTER"
		end

	ccom_last_error_code (cpp_obj: POINTER): INTEGER is
			-- Last error code
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"]():EIF_INTEGER"
		end

	ccom_last_error_description (cpp_obj: POINTER): STRING is
			-- Last error description
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"]():EIF_REFERENCE"
		end

	ccom_last_error_help_file (cpp_obj: POINTER): STRING is
			-- Last error help file
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"]():EIF_REFERENCE"
		end

	ccom_last_source_of_exception (cpp_obj: POINTER): STRING is
			-- Last source of exception
		external
			"C++ [ecom_eiffel_compiler::IEiffelProjectProperties_impl_proxy %"ecom_eiffel_compiler_IEiffelProjectProperties_impl_proxy_s.h%"]():EIF_REFERENCE"
		end

end -- IEIFFEL_PROJECT_PROPERTIES_IMPL_PROXY

