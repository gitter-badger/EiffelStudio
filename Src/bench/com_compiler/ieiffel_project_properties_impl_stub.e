indexing
	description: "Implemented `IEiffelProjectProperties' Interface."
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	IEIFFEL_PROJECT_PROPERTIES_IMPL_STUB

inherit
	IEIFFEL_PROJECT_PROPERTIES_INTERFACE

	ECOM_STUB

feature -- Access

	system_name: STRING is
			-- System name.
		do
			-- Put Implementation here.
		end

	root_class_name: STRING is
			-- Root class name.
		do
			-- Put Implementation here.
		end

	creation_routine: STRING is
			-- Creation routine name.
		do
			-- Put Implementation here.
		end

	namespace_generation: INTEGER is
			-- Namespace generation for cluster
		do
			-- Put Implementation here.
		end

	default_namespace: STRING is
			-- Default namespace.
		do
			-- Put Implementation here.
		end

	project_type: INTEGER is
			-- Project type
		do
			-- Put Implementation here.
		end

	dot_net_naming_convention: BOOLEAN is
			-- .NET Naming convention
		do
			-- Put Implementation here.
		end

	generate_debug_info: BOOLEAN is
			-- Generate debug info?
		do
			-- Put Implementation here.
		end

	precompiled_library: STRING is
			-- Precompiled file.
		do
			-- Put Implementation here.
		end

	assertions: INTEGER is
			-- Project assertions
		do
			-- Put Implementation here.
		end

	clusters: IEIFFEL_SYSTEM_CLUSTERS_INTERFACE is
			-- Project Clusters.
		do
			-- Put Implementation here.
		end

	externals: IEIFFEL_SYSTEM_EXTERNALS_INTERFACE is
			-- Externals.
		do
			-- Put Implementation here.
		end

	assemblies: IEIFFEL_SYSTEM_ASSEMBLIES_INTERFACE is
			-- Assemblies.
		do
			-- Put Implementation here.
		end

	title: STRING is
			-- Project title.
		do
			-- Put Implementation here.
		end

	description: STRING is
			-- Project description.
		do
			-- Put Implementation here.
		end

	company: STRING is
			-- Project company.
		do
			-- Put Implementation here.
		end

	product: STRING is
			-- Product.
		do
			-- Put Implementation here.
		end

	version: STRING is
			-- Project version.
		do
			-- Put Implementation here.
		end

	trademark: STRING is
			-- Project trademark.
		do
			-- Put Implementation here.
		end

	copyright: STRING is
			-- Project copyright.
		do
			-- Put Implementation here.
		end

	culture: STRING is
			-- Asembly culture.
		do
			-- Put Implementation here.
		end

	key_file_name: STRING is
			-- Asembly signing key file name.
		do
			-- Put Implementation here.
		end

	working_directory: STRING is
			-- Project working directory
		do
			-- Put Implementation here.
		end

feature -- Basic Operations

	set_system_name (pbstr_name: STRING) is
			-- System name.
			-- `pbstr_name' [in].  
		do
			-- Put Implementation here.
		end

	set_root_class_name (pbstr_class_name: STRING) is
			-- Root class name.
			-- `pbstr_class_name' [in].  
		do
			-- Put Implementation here.
		end

	set_creation_routine (pbstr_routine_name: STRING) is
			-- Creation routine name.
			-- `pbstr_routine_name' [in].  
		do
			-- Put Implementation here.
		end

	set_namespace_generation (penum_cluster_namespace_generation: INTEGER) is
			-- Namespace generation for cluster
			-- `penum_cluster_namespace_generation' [in]. See ECOM_EIF_CLUSTER_NAMESPACE_GENERATION_ENUM for possible `penum_cluster_namespace_generation' values. 
		do
			-- Put Implementation here.
		end

	set_default_namespace (pbstr_namespace: STRING) is
			-- Default namespace.
			-- `pbstr_namespace' [in].  
		do
			-- Put Implementation here.
		end

	set_project_type (penum_project_type: INTEGER) is
			-- Project type
			-- `penum_project_type' [in]. See ECOM_EIF_PROJECT_TYPES_ENUM for possible `penum_project_type' values. 
		do
			-- Put Implementation here.
		end

	set_dot_net_naming_convention (pvb_naming_convention: BOOLEAN) is
			-- .NET Naming convention
			-- `pvb_naming_convention' [in].  
		do
			-- Put Implementation here.
		end

	set_generate_debug_info (pvb_generate: BOOLEAN) is
			-- Generate debug info?
			-- `pvb_generate' [in].  
		do
			-- Put Implementation here.
		end

	set_precompiled_library (pbstr_path: STRING) is
			-- Precompiled file.
			-- `pbstr_path' [in].  
		do
			-- Put Implementation here.
		end

	set_assertions (pul_assertions: INTEGER) is
			-- Project assertions
			-- `pul_assertions' [in].  
		do
			-- Put Implementation here.
		end

	set_title (pbstr_title: STRING) is
			-- Project title.
			-- `pbstr_title' [in].  
		do
			-- Put Implementation here.
		end

	set_description (pbstr_description: STRING) is
			-- Project description.
			-- `pbstr_description' [in].  
		do
			-- Put Implementation here.
		end

	set_company (pbstr_company: STRING) is
			-- Project company.
			-- `pbstr_company' [in].  
		do
			-- Put Implementation here.
		end

	set_product (ppbstr_product: STRING) is
			-- Product.
			-- `ppbstr_product' [in].  
		do
			-- Put Implementation here.
		end

	set_version (pbstr_version: STRING) is
			-- Project version.
			-- `pbstr_version' [in].  
		do
			-- Put Implementation here.
		end

	set_trademark (pbstr_trademark: STRING) is
			-- Project trademark.
			-- `pbstr_trademark' [in].  
		do
			-- Put Implementation here.
		end

	set_copyright (pbstr_copyright: STRING) is
			-- Project copyright.
			-- `pbstr_copyright' [in].  
		do
			-- Put Implementation here.
		end

	set_culture (pbstr_cultre: STRING) is
			-- Asembly culture.
			-- `pbstr_cultre' [in].  
		do
			-- Put Implementation here.
		end

	set_key_file_name (pbstr_file_name: STRING) is
			-- Asembly signing key file name.
			-- `pbstr_file_name' [in].  
		do
			-- Put Implementation here.
		end

	set_working_directory (pbstr_working_directory: STRING) is
			-- Project working directory
			-- `pbstr_working_directory' [in].  
		do
			-- Put Implementation here.
		end

	apply is
			-- Apply changes
		do
			-- Put Implementation here.
		end

	create_item is
			-- Initialize `item'
		do
			item := ccom_create_item (Current)
		end

feature {NONE}  -- Externals

	ccom_create_item (eif_object: IEIFFEL_PROJECT_PROPERTIES_IMPL_STUB): POINTER is
			-- Initialize `item'
		external
			"C++ [new ecom_EiffelComCompiler::IEiffelProjectProperties_impl_stub %"ecom_EiffelComCompiler_IEiffelProjectProperties_impl_stub_s.h%"](EIF_OBJECT)"
		end

end -- IEIFFEL_PROJECT_PROPERTIES_IMPL_STUB

