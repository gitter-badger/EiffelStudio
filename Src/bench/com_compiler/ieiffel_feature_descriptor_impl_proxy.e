indexing
	description: "Implemented `IEiffelFeatureDescriptor' Interface."
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	IEIFFEL_FEATURE_DESCRIPTOR_IMPL_PROXY

inherit
	IEIFFEL_FEATURE_DESCRIPTOR_INTERFACE

	ECOM_QUERIABLE

creation
	make_from_other,
	make_from_pointer

feature {NONE}  -- Initialization

	make_from_pointer (cpp_obj: POINTER) is
			-- Make from pointer
		do
			initializer := ccom_create_ieiffel_feature_descriptor_impl_proxy_from_pointer(cpp_obj)
			item := ccom_item (initializer)
		end

feature -- Access

	name: STRING is
			-- Feature name.
		do
			Result := ccom_name (initializer)
		end

	signature: STRING is
			-- Feature signature.
		do
			Result := ccom_signature (initializer)
		end

	external_name: STRING is
			-- Feature external name.
		do
			Result := ccom_external_name (initializer)
		end

	written_class: STRING is
			-- Name of class where feature is written in.
		do
			Result := ccom_written_class (initializer)
		end

	evaluated_class: STRING is
			-- Name of class where feature was evaluated in.
		do
			Result := ccom_evaluated_class (initializer)
		end

	description: STRING is
			-- Feature description.
		do
			Result := ccom_description (initializer)
		end

	parameters: IENUM_PARAMETER_INTERFACE is
			-- Feature parameters.
		do
			Result := ccom_parameters (initializer)
		end

	return_type: STRING is
			-- Feature return type.
		do
			Result := ccom_return_type (initializer)
		end

	all_callers: IENUM_FEATURE_INTERFACE is
			-- List of all feature callers, includding callers of ancestor and descendant versions.
		do
			Result := ccom_all_callers (initializer)
		end

	all_callers_count: INTEGER is
			-- Number of all callers.
		do
			Result := ccom_all_callers_count (initializer)
		end

	local_callers: IENUM_FEATURE_INTERFACE is
			-- List of feature callers.
		do
			Result := ccom_local_callers (initializer)
		end

	local_callers_count: INTEGER is
			-- Number of local callers.
		do
			Result := ccom_local_callers_count (initializer)
		end

	descendant_callers: IENUM_FEATURE_INTERFACE is
			-- List of feature callers, including callers of descendant versions.
		do
			Result := ccom_descendant_callers (initializer)
		end

	descendant_callers_count: INTEGER is
			-- Number of descendant callers.
		do
			Result := ccom_descendant_callers_count (initializer)
		end

	implementers: IENUM_FEATURE_INTERFACE is
			-- List of implementers.
		do
			Result := ccom_implementers (initializer)
		end

	implementer_count: INTEGER is
			-- Number of feature implementers.
		do
			Result := ccom_implementer_count (initializer)
		end

	ancestor_versions: IENUM_FEATURE_INTERFACE is
			-- List of ancestor versions.
		do
			Result := ccom_ancestor_versions (initializer)
		end

	ancestor_version_count: INTEGER is
			-- Number of ancestor versions.
		do
			Result := ccom_ancestor_version_count (initializer)
		end

	descendant_versions: IENUM_FEATURE_INTERFACE is
			-- List of descendant versions.
		do
			Result := ccom_descendant_versions (initializer)
		end

	descendant_version_count: INTEGER is
			-- Number of descendant versions.
		do
			Result := ccom_descendant_version_count (initializer)
		end

	exported_to_all: BOOLEAN is
			-- Is feature exported to all classes?
		do
			Result := ccom_exported_to_all (initializer)
		end

	is_once: BOOLEAN is
			-- Is once feature?
		do
			Result := ccom_is_once (initializer)
		end

	is_external: BOOLEAN is
			-- Is external feature?
		do
			Result := ccom_is_external (initializer)
		end

	is_deferred: BOOLEAN is
			-- Is deferred feature?
		do
			Result := ccom_is_deferred (initializer)
		end

	is_constant: BOOLEAN is
			-- Is constant?
		do
			Result := ccom_is_constant (initializer)
		end

	is_frozen: BOOLEAN is
			-- is frozen feature?
		do
			Result := ccom_is_frozen (initializer)
		end

	is_infix: BOOLEAN is
			-- Is infix?
		do
			Result := ccom_is_infix (initializer)
		end

	is_prefix: BOOLEAN is
			-- Is prefix?
		do
			Result := ccom_is_prefix (initializer)
		end

	is_attribute: BOOLEAN is
			-- Is attribute?
		do
			Result := ccom_is_attribute (initializer)
		end

	is_procedure: BOOLEAN is
			-- Is procedure?
		do
			Result := ccom_is_procedure (initializer)
		end

	is_function: BOOLEAN is
			-- Is function?
		do
			Result := ccom_is_function (initializer)
		end

	is_unique: BOOLEAN is
			-- Is unique?
		do
			Result := ccom_is_unique (initializer)
		end

	is_obsolete: BOOLEAN is
			-- Is obsolete feature?
		do
			Result := ccom_is_obsolete (initializer)
		end

	has_precondition: BOOLEAN is
			-- Does feature have precondition?
		do
			Result := ccom_has_precondition (initializer)
		end

	has_postcondition: BOOLEAN is
			-- Does feature have postcondition?
		do
			Result := ccom_has_postcondition (initializer)
		end

feature -- Basic Operations

	is_feature (return_value: BOOLEAN_REF) is
			-- Is entry a feature?
			-- `return_value' [out].  
		do
			ccom_is_feature (initializer, return_value)
		end

	feature_location (file_path: CELL [STRING]; line_number: INTEGER_REF) is
			-- Feature location, full path to file and line number
			-- `file_path' [in, out].  
			-- `line_number' [in, out].  
		do
			ccom_feature_location (initializer, file_path, line_number)
		end

feature {NONE}  -- Implementation

	delete_wrapper is
			-- Delete wrapper
		do
			ccom_delete_ieiffel_feature_descriptor_impl_proxy(initializer)
		end

feature {NONE}  -- Externals

	ccom_name (cpp_obj: POINTER): STRING is
			-- Feature name.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_signature (cpp_obj: POINTER): STRING is
			-- Feature signature.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_is_feature (cpp_obj: POINTER; return_value: BOOLEAN_REF) is
			-- Is entry a feature?
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](EIF_OBJECT)"
		end

	ccom_external_name (cpp_obj: POINTER): STRING is
			-- Feature external name.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_written_class (cpp_obj: POINTER): STRING is
			-- Name of class where feature is written in.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_evaluated_class (cpp_obj: POINTER): STRING is
			-- Name of class where feature was evaluated in.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_description (cpp_obj: POINTER): STRING is
			-- Feature description.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_parameters (cpp_obj: POINTER): IENUM_PARAMETER_INTERFACE is
			-- Feature parameters.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_return_type (cpp_obj: POINTER): STRING is
			-- Feature return type.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_feature_location (cpp_obj: POINTER; file_path: CELL [STRING]; line_number: INTEGER_REF) is
			-- Feature location, full path to file and line number
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](EIF_OBJECT,EIF_OBJECT)"
		end

	ccom_all_callers (cpp_obj: POINTER): IENUM_FEATURE_INTERFACE is
			-- List of all feature callers, includding callers of ancestor and descendant versions.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_all_callers_count (cpp_obj: POINTER): INTEGER is
			-- Number of all callers.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_INTEGER"
		end

	ccom_local_callers (cpp_obj: POINTER): IENUM_FEATURE_INTERFACE is
			-- List of feature callers.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_local_callers_count (cpp_obj: POINTER): INTEGER is
			-- Number of local callers.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_INTEGER"
		end

	ccom_descendant_callers (cpp_obj: POINTER): IENUM_FEATURE_INTERFACE is
			-- List of feature callers, including callers of descendant versions.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_descendant_callers_count (cpp_obj: POINTER): INTEGER is
			-- Number of descendant callers.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_INTEGER"
		end

	ccom_implementers (cpp_obj: POINTER): IENUM_FEATURE_INTERFACE is
			-- List of implementers.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_implementer_count (cpp_obj: POINTER): INTEGER is
			-- Number of feature implementers.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_INTEGER"
		end

	ccom_ancestor_versions (cpp_obj: POINTER): IENUM_FEATURE_INTERFACE is
			-- List of ancestor versions.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_ancestor_version_count (cpp_obj: POINTER): INTEGER is
			-- Number of ancestor versions.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_INTEGER"
		end

	ccom_descendant_versions (cpp_obj: POINTER): IENUM_FEATURE_INTERFACE is
			-- List of descendant versions.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_REFERENCE"
		end

	ccom_descendant_version_count (cpp_obj: POINTER): INTEGER is
			-- Number of descendant versions.
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_INTEGER"
		end

	ccom_exported_to_all (cpp_obj: POINTER): BOOLEAN is
			-- Is feature exported to all classes?
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_is_once (cpp_obj: POINTER): BOOLEAN is
			-- Is once feature?
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_is_external (cpp_obj: POINTER): BOOLEAN is
			-- Is external feature?
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_is_deferred (cpp_obj: POINTER): BOOLEAN is
			-- Is deferred feature?
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_is_constant (cpp_obj: POINTER): BOOLEAN is
			-- Is constant?
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_is_frozen (cpp_obj: POINTER): BOOLEAN is
			-- is frozen feature?
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_is_infix (cpp_obj: POINTER): BOOLEAN is
			-- Is infix?
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_is_prefix (cpp_obj: POINTER): BOOLEAN is
			-- Is prefix?
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_is_attribute (cpp_obj: POINTER): BOOLEAN is
			-- Is attribute?
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_is_procedure (cpp_obj: POINTER): BOOLEAN is
			-- Is procedure?
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_is_function (cpp_obj: POINTER): BOOLEAN is
			-- Is function?
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_is_unique (cpp_obj: POINTER): BOOLEAN is
			-- Is unique?
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_is_obsolete (cpp_obj: POINTER): BOOLEAN is
			-- Is obsolete feature?
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_has_precondition (cpp_obj: POINTER): BOOLEAN is
			-- Does feature have precondition?
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_has_postcondition (cpp_obj: POINTER): BOOLEAN is
			-- Does feature have postcondition?
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](): EIF_BOOLEAN"
		end

	ccom_delete_ieiffel_feature_descriptor_impl_proxy (a_pointer: POINTER) is
			-- Release resource
		external
			"C++ [delete ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"]()"
		end

	ccom_create_ieiffel_feature_descriptor_impl_proxy_from_pointer (a_pointer: POINTER): POINTER is
			-- Create from pointer
		external
			"C++ [new ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"](IUnknown *)"
		end

	ccom_item (cpp_obj: POINTER): POINTER is
			-- Item
		external
			"C++ [ecom_eiffel_compiler::IEiffelFeatureDescriptor_impl_proxy %"ecom_eiffel_compiler_IEiffelFeatureDescriptor_impl_proxy_s.h%"]():EIF_POINTER"
		end

end -- IEIFFEL_FEATURE_DESCRIPTOR_IMPL_PROXY

