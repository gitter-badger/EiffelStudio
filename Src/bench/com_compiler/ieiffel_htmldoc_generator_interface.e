indexing
	description: "Eiffel Project HTML Document generator.  Help file: "
	Note: "Automatically generated by the EiffelCOM Wizard."

deferred class
	IEIFFEL_HTMLDOC_GENERATOR_INTERFACE

inherit
	ECOM_INTERFACE

feature -- Status Report

	add_excluded_cluster_user_precondition (cluster_to_exclude: STRING): BOOLEAN is
			-- User-defined preconditions for `add_excluded_cluster'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	remove_excluded_cluster_user_precondition (excluded_cluster: STRING): BOOLEAN is
			-- User-defined preconditions for `remove_excluded_cluster'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	is_incompatible_user_precondition: BOOLEAN is
			-- User-defined preconditions for `is_incompatible'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	is_corrupted_user_precondition: BOOLEAN is
			-- User-defined preconditions for `is_corrupted'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	last_error_user_precondition: BOOLEAN is
			-- User-defined preconditions for `last_error'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	load_project_user_precondition (project_dir: STRING): BOOLEAN is
			-- User-defined preconditions for `load_project'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	generate_user_precondition (generation_dir: STRING): BOOLEAN is
			-- User-defined preconditions for `generate'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

feature -- Basic Operations

	add_excluded_cluster (cluster_to_exclude: STRING) is
			-- Add excluded cluster
			-- `cluster_to_exclude' [in].  
		require
			add_excluded_cluster_user_precondition: add_excluded_cluster_user_precondition (cluster_to_exclude)
		deferred

		end

	remove_excluded_cluster (excluded_cluster: STRING) is
			-- Remove excluded cluster
			-- `excluded_cluster' [in].  
		require
			remove_excluded_cluster_user_precondition: remove_excluded_cluster_user_precondition (excluded_cluster)
		deferred

		end

	is_incompatible: BOOLEAN is
			-- is the project incompatible?
		require
			is_incompatible_user_precondition: is_incompatible_user_precondition
		deferred

		end

	is_corrupted: BOOLEAN is
			-- is the project corrupted?
		require
			is_corrupted_user_precondition: is_corrupted_user_precondition
		deferred

		end

	last_error: STRING is
			-- the last error
		require
			last_error_user_precondition: last_error_user_precondition
		deferred

		end

	load_project (project_dir: STRING): BOOLEAN is
			-- Load a compiled project
			-- `project_dir' [in].  
		require
			load_project_user_precondition: load_project_user_precondition (project_dir)
		deferred

		end

	generate (generation_dir: STRING) is
			-- Generate the documentation.
			-- `generation_dir' [in].  
		require
			generate_user_precondition: generate_user_precondition (generation_dir)
		deferred

		end

end -- IEIFFEL_HTMLDOC_GENERATOR_INTERFACE

