indexing
	description: "Eiffel Project Properties.  Help file: "
	Note: "Automatically generated by the EiffelCOM Wizard."

deferred class
	IEIFFEL_PROJECT_PROPERTIES_INTERFACE

inherit
	ECOM_INTERFACE

feature -- Status Report

	system_name_user_precondition: BOOLEAN is
			-- User-defined preconditions for `system_name'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_system_name_user_precondition (return_value: STRING): BOOLEAN is
			-- User-defined preconditions for `set_system_name'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	root_class_name_user_precondition: BOOLEAN is
			-- User-defined preconditions for `root_class_name'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_root_class_name_user_precondition (return_value: STRING): BOOLEAN is
			-- User-defined preconditions for `set_root_class_name'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	creation_routine_user_precondition: BOOLEAN is
			-- User-defined preconditions for `creation_routine'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_creation_routine_user_precondition (return_value: STRING): BOOLEAN is
			-- User-defined preconditions for `set_creation_routine'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	compilation_type_user_precondition: BOOLEAN is
			-- User-defined preconditions for `compilation_type'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_compilation_type_user_precondition (return_value: INTEGER): BOOLEAN is
			-- User-defined preconditions for `set_compilation_type'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	console_application_user_precondition: BOOLEAN is
			-- User-defined preconditions for `console_application'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_console_application_user_precondition (return_value: BOOLEAN): BOOLEAN is
			-- User-defined preconditions for `set_console_application'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	evaluate_require_user_precondition: BOOLEAN is
			-- User-defined preconditions for `evaluate_require'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_evaluate_require_user_precondition (return_value: BOOLEAN): BOOLEAN is
			-- User-defined preconditions for `set_evaluate_require'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	evaluate_ensure_user_precondition: BOOLEAN is
			-- User-defined preconditions for `evaluate_ensure'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_evaluate_ensure_user_precondition (return_value: BOOLEAN): BOOLEAN is
			-- User-defined preconditions for `set_evaluate_ensure'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	evaluate_check_user_precondition: BOOLEAN is
			-- User-defined preconditions for `evaluate_check'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_evaluate_check_user_precondition (return_value: BOOLEAN): BOOLEAN is
			-- User-defined preconditions for `set_evaluate_check'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	evaluate_loop_user_precondition: BOOLEAN is
			-- User-defined preconditions for `evaluate_loop'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_evaluate_loop_user_precondition (return_value: BOOLEAN): BOOLEAN is
			-- User-defined preconditions for `set_evaluate_loop'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	evaluate_invariant_user_precondition: BOOLEAN is
			-- User-defined preconditions for `evaluate_invariant'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_evaluate_invariant_user_precondition (return_value: BOOLEAN): BOOLEAN is
			-- User-defined preconditions for `set_evaluate_invariant'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	debug_info_user_precondition: BOOLEAN is
			-- User-defined preconditions for `debug_info'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	set_debug_info_user_precondition (return_value: BOOLEAN): BOOLEAN is
			-- User-defined preconditions for `set_debug_info'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	clusters_user_precondition: BOOLEAN is
			-- User-defined preconditions for `clusters'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	assemblies_user_precondition: BOOLEAN is
			-- User-defined preconditions for `assemblies'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	add_assembly_user_precondition (assembly_path: STRING): BOOLEAN is
			-- User-defined preconditions for `add_assembly'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	remove_assembly_user_precondition (assembly_path: STRING): BOOLEAN is
			-- User-defined preconditions for `remove_assembly'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	update_project_ace_file_user_precondition (project_ace_file_name: STRING): BOOLEAN is
			-- User-defined preconditions for `update_project_ace_file'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	synchronize_with_project_ace_file_user_precondition (project_ace_file_name: STRING): BOOLEAN is
			-- User-defined preconditions for `synchronize_with_project_ace_file'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	apply_user_precondition: BOOLEAN is
			-- User-defined preconditions for `apply'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

feature -- Basic Operations

	system_name: STRING is
			-- System name.
		require
			system_name_user_precondition: system_name_user_precondition
		deferred

		end

	set_system_name (return_value: STRING) is
			-- System name.
			-- `return_value' [in].  
		require
			set_system_name_user_precondition: set_system_name_user_precondition (return_value)
		deferred

		end

	root_class_name: STRING is
			-- Root class name.
		require
			root_class_name_user_precondition: root_class_name_user_precondition
		deferred

		end

	set_root_class_name (return_value: STRING) is
			-- Root class name.
			-- `return_value' [in].  
		require
			set_root_class_name_user_precondition: set_root_class_name_user_precondition (return_value)
		deferred

		end

	creation_routine: STRING is
			-- Creation routine name.
		require
			creation_routine_user_precondition: creation_routine_user_precondition
		deferred

		end

	set_creation_routine (return_value: STRING) is
			-- Creation routine name.
			-- `return_value' [in].  
		require
			set_creation_routine_user_precondition: set_creation_routine_user_precondition (return_value)
		deferred

		end

	compilation_type: INTEGER is
			-- Compilation type.
			-- See ECOM_X__EIF_COMPILATION_TYPES_ENUM for possible `Result' values.
		require
			compilation_type_user_precondition: compilation_type_user_precondition
		deferred

		end

	set_compilation_type (return_value: INTEGER) is
			-- Compilation type.
			-- `return_value' [in]. See ECOM_X__EIF_COMPILATION_TYPES_ENUM for possible `return_value' values. 
		require
			set_compilation_type_user_precondition: set_compilation_type_user_precondition (return_value)
		deferred

		end

	console_application: BOOLEAN is
			-- Is console application?
		require
			console_application_user_precondition: console_application_user_precondition
		deferred

		end

	set_console_application (return_value: BOOLEAN) is
			-- Is console application?
			-- `return_value' [in].  
		require
			set_console_application_user_precondition: set_console_application_user_precondition (return_value)
		deferred

		end

	evaluate_require: BOOLEAN is
			-- Should preconditions be evaluated?
		require
			evaluate_require_user_precondition: evaluate_require_user_precondition
		deferred

		end

	set_evaluate_require (return_value: BOOLEAN) is
			-- Should preconditions be evaluated?
			-- `return_value' [in].  
		require
			set_evaluate_require_user_precondition: set_evaluate_require_user_precondition (return_value)
		deferred

		end

	evaluate_ensure: BOOLEAN is
			-- Should postconditions be evaluated?
		require
			evaluate_ensure_user_precondition: evaluate_ensure_user_precondition
		deferred

		end

	set_evaluate_ensure (return_value: BOOLEAN) is
			-- Should postconditions be evaluated?
			-- `return_value' [in].  
		require
			set_evaluate_ensure_user_precondition: set_evaluate_ensure_user_precondition (return_value)
		deferred

		end

	evaluate_check: BOOLEAN is
			-- Should check assertions be evaluated?
		require
			evaluate_check_user_precondition: evaluate_check_user_precondition
		deferred

		end

	set_evaluate_check (return_value: BOOLEAN) is
			-- Should check assertions be evaluated?
			-- `return_value' [in].  
		require
			set_evaluate_check_user_precondition: set_evaluate_check_user_precondition (return_value)
		deferred

		end

	evaluate_loop: BOOLEAN is
			-- Should loop assertions be evaluated?
		require
			evaluate_loop_user_precondition: evaluate_loop_user_precondition
		deferred

		end

	set_evaluate_loop (return_value: BOOLEAN) is
			-- Should loop assertions be evaluated?
			-- `return_value' [in].  
		require
			set_evaluate_loop_user_precondition: set_evaluate_loop_user_precondition (return_value)
		deferred

		end

	evaluate_invariant: BOOLEAN is
			-- Should class invariants be evaluated?
		require
			evaluate_invariant_user_precondition: evaluate_invariant_user_precondition
		deferred

		end

	set_evaluate_invariant (return_value: BOOLEAN) is
			-- Should class invariants be evaluated?
			-- `return_value' [in].  
		require
			set_evaluate_invariant_user_precondition: set_evaluate_invariant_user_precondition (return_value)
		deferred

		end

	debug_info: BOOLEAN is
			-- Generate debug info?
		require
			debug_info_user_precondition: debug_info_user_precondition
		deferred

		end

	set_debug_info (return_value: BOOLEAN) is
			-- Generate debug info?
			-- `return_value' [in].  
		require
			set_debug_info_user_precondition: set_debug_info_user_precondition (return_value)
		deferred

		end

	clusters: IEIFFEL_SYSTEM_CLUSTERS_INTERFACE is
			-- Project Clusters.
		require
			clusters_user_precondition: clusters_user_precondition
		deferred

		end

	assemblies: ECOM_ARRAY [STRING] is
			-- Imported assemblies.
		require
			assemblies_user_precondition: assemblies_user_precondition
		deferred

		end

	add_assembly (assembly_path: STRING) is
			-- Add an assembly to the project.
			-- `assembly_path' [in].  
		require
			add_assembly_user_precondition: add_assembly_user_precondition (assembly_path)
		deferred

		end

	remove_assembly (assembly_path: STRING) is
			-- Remove an assembly from the project.
			-- `assembly_path' [in].  
		require
			remove_assembly_user_precondition: remove_assembly_user_precondition (assembly_path)
		deferred

		end

	update_project_ace_file (project_ace_file_name: STRING) is
			-- Update the project Ace file according to the current settings.
			-- `project_ace_file_name' [in].  
		require
			update_project_ace_file_user_precondition: update_project_ace_file_user_precondition (project_ace_file_name)
		deferred

		end

	synchronize_with_project_ace_file (project_ace_file_name: STRING) is
			-- Synchronize the current settings with the project Ace file.
			-- `project_ace_file_name' [in].  
		require
			synchronize_with_project_ace_file_user_precondition: synchronize_with_project_ace_file_user_precondition (project_ace_file_name)
		deferred

		end

	apply is
			-- Apply changes
		require
			apply_user_precondition: apply_user_precondition
		deferred

		end

end -- IEIFFEL_PROJECT_PROPERTIES_INTERFACE

