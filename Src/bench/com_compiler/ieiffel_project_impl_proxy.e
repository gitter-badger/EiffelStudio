indexing
	description: "Implemented `IEiffelProject' Interface."
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	IEIFFEL_PROJECT_IMPL_PROXY

inherit
	IEIFFEL_PROJECT_INTERFACE

	ECOM_QUERIABLE

creation
	make_from_other,
	make_from_pointer

feature {NONE}  -- Initialization

	make_from_pointer (cpp_obj: POINTER) is
			-- Make from pointer
		do
			initializer := ccom_create_ieiffel_project_impl_proxy_from_pointer(cpp_obj)
			item := ccom_item (initializer)
		end

feature -- Access

	project_file_name: STRING is
			-- Full path to .epr file.
		do
			Result := ccom_project_file_name (initializer)
		end

	ace_file_name: STRING is
			-- Full path to Ace file.
		do
			Result := ccom_ace_file_name (initializer)
		end

	project_directory: STRING is
			-- Project directory.
		do
			Result := ccom_project_directory (initializer)
		end

	is_valid_project: BOOLEAN is
			-- Is project valid?
		do
			Result := ccom_is_valid_project (initializer)
		end

	last_exception: IEIFFEL_EXCEPTION_INTERFACE is
			-- Last exception raised
		do
			Result := ccom_last_exception (initializer)
		end

	compiler: IEIFFEL_COMPILER_INTERFACE is
			-- Compiler.
		do
			Result := ccom_compiler (initializer)
		end

	is_compiled: BOOLEAN is
			-- Has system been compiled?
		do
			Result := ccom_is_compiled (initializer)
		end

	project_has_updated: BOOLEAN is
			-- Has the project updated since last compilation?
		do
			Result := ccom_project_has_updated (initializer)
		end

	system_browser: IEIFFEL_SYSTEM_BROWSER_INTERFACE is
			-- System Browser.
		do
			Result := ccom_system_browser (initializer)
		end

	project_properties: IEIFFEL_PROJECT_PROPERTIES_INTERFACE is
			-- Project Properties.
		do
			Result := ccom_project_properties (initializer)
		end

	completion_information: IEIFFEL_COMPLETION_INFO_INTERFACE is
			-- Completion information
		do
			Result := ccom_completion_information (initializer)
		end

	html_documentation_generator: IEIFFEL_HTML_DOCUMENTATION_GENERATOR_INTERFACE is
			-- Help documentation generator
		do
			Result := ccom_html_documentation_generator (initializer)
		end

feature -- Basic Operations

	retrieve_eiffel_project (bstr_project_file_name: STRING) is
			-- Retrieve Eiffel Project
			-- `bstr_project_file_name' [in].  
		do
			ccom_retrieve_eiffel_project (initializer, bstr_project_file_name)
		end

	create_eiffel_project (bstr_ace_file_name: STRING; bstr_project_directory: STRING) is
			-- Create new Eiffel project from an existing ace file.
			-- `bstr_ace_file_name' [in].  
			-- `bstr_project_directory' [in].  
		do
			ccom_create_eiffel_project (initializer, bstr_ace_file_name, bstr_project_directory)
		end

	generate_new_eiffel_project (bstr_project_name: STRING; bstr_ace_file_name: STRING; bstr_root_class_name: STRING; bstr_creation_routine: STRING; bstr_project_directory: STRING) is
			-- Create new Eiffel project from scratch.
			-- `bstr_project_name' [in].  
			-- `bstr_ace_file_name' [in].  
			-- `bstr_root_class_name' [in].  
			-- `bstr_creation_routine' [in].  
			-- `bstr_project_directory' [in].  
		do
			ccom_generate_new_eiffel_project (initializer, bstr_project_name, bstr_ace_file_name, bstr_root_class_name, bstr_creation_routine, bstr_project_directory)
		end

feature {NONE}  -- Implementation

	delete_wrapper is
			-- Delete wrapper
		do
			ccom_delete_ieiffel_project_impl_proxy(initializer)
		end

feature {NONE}  -- Externals

	ccom_retrieve_eiffel_project (cpp_obj: POINTER; bstr_project_file_name: STRING) is
			-- Retrieve Eiffel Project
		external
			"C++ [ecom_EiffelComCompiler::IEiffelProject_impl_proxy %"ecom_EiffelComCompiler_IEiffelProject_impl_proxy_s.h%"](EIF_OBJECT)"
		end

	ccom_create_eiffel_project (cpp_obj: POINTER; bstr_ace_file_name: STRING; bstr_project_directory: STRING) is
			-- Create new Eiffel project from an existing ace file.
		external
			"C++ [ecom_EiffelComCompiler::IEiffelProject_impl_proxy %"ecom_EiffelComCompiler_IEiffelProject_impl_proxy_s.h%"](EIF_OBJECT,EIF_OBJECT)"
		end

	ccom_generate_new_eiffel_project (cpp_obj: POINTER; bstr_project_name: STRING; bstr_ace_file_name: STRING; bstr_root_class_name: STRING; bstr_creation_routine: STRING; bstr_project_directory: STRING) is
			-- Create new Eiffel project from scratch.
		external
			"C++ [ecom_EiffelComCompiler::IEiffelProject_impl_proxy %"ecom_EiffelComCompiler_IEiffelProject_impl_proxy_s.h%"](EIF_OBJECT,EIF_OBJECT,EIF_OBJECT,EIF_OBJECT,EIF_OBJECT)"
		end

	ccom_project_file_name (cpp_obj: POINTER): STRING is
			-- Full path to .epr file.
		external
			"C++ [ecom_EiffelComCompiler::IEiffelProject_impl_proxy %"ecom_EiffelComCompiler_IEiffelProject_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_ace_file_name (cpp_obj: POINTER): STRING is
			-- Full path to Ace file.
		external
			"C++ [ecom_EiffelComCompiler::IEiffelProject_impl_proxy %"ecom_EiffelComCompiler_IEiffelProject_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_project_directory (cpp_obj: POINTER): STRING is
			-- Project directory.
		external
			"C++ [ecom_EiffelComCompiler::IEiffelProject_impl_proxy %"ecom_EiffelComCompiler_IEiffelProject_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_is_valid_project (cpp_obj: POINTER): BOOLEAN is
			-- Is project valid?
		external
			"C++ [ecom_EiffelComCompiler::IEiffelProject_impl_proxy %"ecom_EiffelComCompiler_IEiffelProject_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_last_exception (cpp_obj: POINTER): IEIFFEL_EXCEPTION_INTERFACE is
			-- Last exception raised
		external
			"C++ [ecom_EiffelComCompiler::IEiffelProject_impl_proxy %"ecom_EiffelComCompiler_IEiffelProject_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_compiler (cpp_obj: POINTER): IEIFFEL_COMPILER_INTERFACE is
			-- Compiler.
		external
			"C++ [ecom_EiffelComCompiler::IEiffelProject_impl_proxy %"ecom_EiffelComCompiler_IEiffelProject_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_is_compiled (cpp_obj: POINTER): BOOLEAN is
			-- Has system been compiled?
		external
			"C++ [ecom_EiffelComCompiler::IEiffelProject_impl_proxy %"ecom_EiffelComCompiler_IEiffelProject_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_project_has_updated (cpp_obj: POINTER): BOOLEAN is
			-- Has the project updated since last compilation?
		external
			"C++ [ecom_EiffelComCompiler::IEiffelProject_impl_proxy %"ecom_EiffelComCompiler_IEiffelProject_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_system_browser (cpp_obj: POINTER): IEIFFEL_SYSTEM_BROWSER_INTERFACE is
			-- System Browser.
		external
			"C++ [ecom_EiffelComCompiler::IEiffelProject_impl_proxy %"ecom_EiffelComCompiler_IEiffelProject_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_project_properties (cpp_obj: POINTER): IEIFFEL_PROJECT_PROPERTIES_INTERFACE is
			-- Project Properties.
		external
			"C++ [ecom_EiffelComCompiler::IEiffelProject_impl_proxy %"ecom_EiffelComCompiler_IEiffelProject_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_completion_information (cpp_obj: POINTER): IEIFFEL_COMPLETION_INFO_INTERFACE is
			-- Completion information
		external
			"C++ [ecom_EiffelComCompiler::IEiffelProject_impl_proxy %"ecom_EiffelComCompiler_IEiffelProject_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_html_documentation_generator (cpp_obj: POINTER): IEIFFEL_HTML_DOCUMENTATION_GENERATOR_INTERFACE is
			-- Help documentation generator
		external
			"C++ [ecom_EiffelComCompiler::IEiffelProject_impl_proxy %"ecom_EiffelComCompiler_IEiffelProject_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_delete_ieiffel_project_impl_proxy (a_pointer: POINTER) is
			-- Release resource
		external
			"C++ [delete ecom_EiffelComCompiler::IEiffelProject_impl_proxy %"ecom_EiffelComCompiler_IEiffelProject_impl_proxy_s.h%"]()"
		end

	ccom_create_ieiffel_project_impl_proxy_from_pointer (a_pointer: POINTER): POINTER is
			-- Create from pointer
		external
			"C++ [new ecom_EiffelComCompiler::IEiffelProject_impl_proxy %"ecom_EiffelComCompiler_IEiffelProject_impl_proxy_s.h%"](IUnknown *)"
		end

	ccom_item (cpp_obj: POINTER): POINTER is
			-- Item
		external
			"C++ [ecom_EiffelComCompiler::IEiffelProject_impl_proxy %"ecom_EiffelComCompiler_IEiffelProject_impl_proxy_s.h%"]():EIF_POINTER"
		end

end -- IEIFFEL_PROJECT_IMPL_PROXY

