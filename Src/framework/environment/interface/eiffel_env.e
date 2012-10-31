note

	description:
		"Environment for bitmaps, help, binaries, scripts...."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

deferred class EIFFEL_ENV

inherit
	ANY

	SHARED_COMPILER_PROFILE

	EIFFEL_CONSTANTS
		export
			{NONE} all
		end

feature -- Access

	application_name: STRING_8
			-- Name of the application.
		deferred
		ensure
			not_result_is_empty: not Result.is_empty
		end

	product_name: STRING_8
			-- Name of the product.
		once
			Result := "Eiffel"
		ensure
			not_result_is_empty: not Result.is_empty
		end

	unix_product_version_name: STRING_8
			-- Versioned name of the product.
		require
			is_unix_layout: is_unix_layout
		once
			create Result.make_from_string ("eiffelstudio" + release_suffix)
		ensure
			not_result_is_empty: not Result.is_empty
			result_is_lower_case: Result.as_lower ~ Result
		end

	product_version_name: STRING_8
			-- Versioned name of the product.
			-- I.e. Eiffel7x
		once
			create Result.make_from_string (product_name)
			Result.append_integer ({EIFFEL_CONSTANTS}.major_version)
			Result.append_integer ({EIFFEL_CONSTANTS}.minor_version)
			if is_unix_layout then
				Result.to_lower
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	environment_info: STRING_32
			-- Information about the environment.
		require
			is_valid_environment: is_valid_environment
		do
			create Result.make (100)
			if is_unix_layout then
				Result.append_string_general ("Base Path = ")
				Result.append (unix_layout_base_path.string_representation)
			else
				Result.append_string_general ("$ISE_EIFFEL = ")
				Result.append (install_path.string_representation)
				Result.append_string_general ("%N")
				Result.append_string_general ("$ISE_LIBRARY = ")
				Result.append (eiffel_library.string_representation)
				Result.append_string_general ("%N")
				Result.append_string_general ("$ISE_PLATFORM = ")
				Result.append_string_general (eiffel_platform)
				if {PLATFORM}.is_windows then
					Result.append_string_general ("%N")
					Result.append_string_general ("$ISE_C_COMPILER = ")
					Result.append_string_general (eiffel_c_compiler)
				end
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	copyright_year: STRING = "2012"
			-- Copyright year

feature -- Access

	executable_suffix: STRING_8
			-- Platform specific executable extension.
		once
			if {PLATFORM}.is_windows then
				Result := "exe"
			else
				create Result.make_empty
			end
		ensure
			executable_suffix_not_void: Result /= Void
			not_result_is_empty: {PLATFORM}.is_windows implies not Result.is_empty
		end

feature {NONE} -- Access

	required_environment_variables: ARRAYED_LIST [TUPLE [var: STRING_32; is_directory: BOOLEAN]]
			-- List of required environment variables.
		once
			create Result.make (4)
			if not is_unix_layout then
				Result.extend ([{EIFFEL_CONSTANTS}.ise_eiffel_env.as_string_32, True])
				Result.extend ([{EIFFEL_CONSTANTS}.ise_platform_env.as_string_32, False])
			end
			if {PLATFORM}.is_windows then
				Result.extend ([{EIFFEL_CONSTANTS}.ise_c_compiler_env.as_string_32, False])
			end
		end

	creatable_directories: ARRAYED_LIST [PATH]
			-- List of directories to be created at start up
		require
			is_valid_environment: is_valid_environment
		once
			if is_user_files_supported then
				create Result.make (3)
				Result.extend (user_files_path)
				Result.extend (hidden_files_path)
				Result.extend (projects_data_path)
			else
				create Result.make (0)
			end
		ensure
			result_contains: Result.for_all (agent (a_item: PATH): BOOLEAN do Result := not a_item.is_empty end)
		end

	release_suffix: STRING
			-- Suffix containing release version which is used for unix layout
		once
			if is_unix_layout then
				Result := "-" + {EIFFEL_CONSTANTS}.major_version.out + "." +
					{EIFFEL_CONSTANTS}.minor_version.out
			else
					-- No suffix in normal mode.
				Result := ""
			end
		end

feature -- Status update

	check_environment_variable
			-- Check if needed environment variables are set up.
		local
			l_product_names: PRODUCT_NAMES
			l_op_env: like operating_environment
			l_ise_library, l_eiffel_library,
			l_value: detachable STRING_32
			l_variables: like required_environment_variables
			l_variable: TUPLE [var: STRING_32; is_directory: BOOLEAN]
			l_is_valid: like is_valid_environment
			u: FILE_UTILITIES
		do
			initialize_from_arguments

			l_is_valid := True

			if {PLATFORM_CONSTANTS}.is_unix then
					-- On Unix platforms, if not ISE_EIFFEL is defined then it's probably the unix layout.
				l_value := get_environment_32 ({EIFFEL_CONSTANTS}.ise_eiffel_env)
				is_unix_layout := (l_value = Void) or else l_value.is_empty
			end

				-- Check environment variables
			create l_product_names
			l_op_env := operating_environment
			l_variables := required_environment_variables
			from l_variables.start until l_variables.after loop
				l_variable := l_variables.item
				l_value := get_environment_32 (l_variable.var)

				if
					l_value /= Void and then l_value.item (l_value.count) = l_op_env.directory_separator and then
					({PLATFORM}.is_windows or else not (l_value.is_equal ("/") or l_value.is_equal ("~/")))
				then
						-- Remove trailing directory separator
					l_value.prune_all_trailing (l_op_env.directory_separator)
				end

				if l_value = Void or else l_value.is_empty then
					io.error.put_string (l_product_names.workbench_name)
					io.error.put_string (": the environment variable " + l_variable.var + " has not been set!%N")
					l_is_valid := False
				elseif l_variable.is_directory and then not u.directory_exists (l_value) then
					io.error.put_string (l_product_names.workbench_name)
					io.error.put_string (": the environment variable " + {EIFFEL_CONSTANTS}.ise_eiffel_env + " points to a non-existing directory.%N")
					l_is_valid := False
				else
						-- Set the environment variable, as it may have come from the Windows registry.
					set_environment_32 (l_value, l_variable.var)
				end
				l_variables.forth
			end

			if not l_is_valid then
				on_check_environment_failure
			else
					-- The environment is valid
				is_valid_environment := True

					-- Set new ISE_EIFFEL variable. This is done to ensure that the workbench path is
					-- set correctly, or if in unix layout that ISE_EIFFEL is set
				if not is_unix_layout then
					set_environment_32 (shared_path.string_representation, {EIFFEL_CONSTANTS}.ise_eiffel_env)
				end

					-- Set Unix platform
				if is_unix_layout then
					l_value := get_environment_32 ({EIFFEL_CONSTANTS}.ise_platform_env)
					if l_value = Void or else l_value.is_empty then
							-- Set platform for Unix
						set_environment (unix_layout_platform, {EIFFEL_CONSTANTS}.ise_platform_env)
					end
				end

				if not directory_path_exists (bin_path) then
					io.error.put_string (l_product_names.workbench_name)
					io.error.put_string (": the path $" + {EIFFEL_CONSTANTS}.ise_eiffel_env + "/studio/spec/$" + {EIFFEL_CONSTANTS}.ise_platform_env + "/bin points to a non-existing directory!%N")
					on_check_environment_failure
				end
			end

				-- Make sure to define ISE_LIBRARY and EIFFEL_LIBRARY if not defined.
				--  if $ISE_LIBRARY not defined then
				--      $ISE_LIBRARY=$EIFFEL_LIBRARY
				--  end
				--  if $ISE_LIBRARY not defined then
				--      use ISE_EIFFEL to set ISE_LIBRARY
				--  else
				--      make sure ISE_LIBRARY supports compatible
				--  end
				--  if $EIFFEL_LIBRARY not defined then
				--      $EIFFEL_LIBRARY = $ISE_LIBRARY
				--  end
				--
				-- Note: if a value is set, we never change it (apart from "compatible" support))

			l_eiffel_library := get_environment_32 ({EIFFEL_CONSTANTS}.eiffel_library_env)
			l_ise_library := get_environment_32 ({EIFFEL_CONSTANTS}.ise_library_env)

				-- If ISE_LIBRARY is not defined, use EIFFEL_LIBRARY's value (if any)
			if l_ise_library = Void or else l_ise_library.is_empty then
				l_ise_library := l_eiffel_library
			end

				-- If ISE_LIBRARY is not defined, use the `lib_path'
			if l_ise_library = Void or else l_ise_library.is_empty then
				l_ise_library := lib_path.string_representation
			else
					-- To avoid editing value of ISE_LIBRARY when compiling against specific compiler profile
					-- modify the value of the ISE_LIBRARY environment variable.
				l_ise_library := path_under_compiler_profile (l_ise_library)
			end
			check ise_library_set: l_ise_library /= Void end

				-- If EIFFEL_LIBRARY is not defined, use ISE_LIBRARY
			if l_eiffel_library = Void or else l_eiffel_library.is_empty then
				l_eiffel_library := l_ise_library
			else
					-- To avoid editing value of EIFFEL_LIBRARY when compiling against specific compiler profile
					-- modify the value of the EIFFEL_LIBRARY environment variable.
				l_eiffel_library := path_under_compiler_profile (l_eiffel_library)
			end
			check eiffel_library_set: l_eiffel_library /= Void end

				-- Ensure environment variables are set
			set_environment_32 (l_ise_library, {EIFFEL_CONSTANTS}.ise_library_env)
			set_environment_32 (l_eiffel_library, {EIFFEL_CONSTANTS}.eiffel_library_env)

				-- Continue checking and initializing the environement
			if is_valid_environment then
				create_directories
				if is_user_files_supported then
					is_hidden_files_path_available := directory_path_exists (hidden_files_path)
				else
						-- No place for saving hidden files.
					is_hidden_files_path_available := False
				end
			end
		ensure
			is_valid_environment: is_valid_environment
		end

feature -- Status report

	is_valid_environment: BOOLEAN
			-- Have the needed environment variables been set?

	is_valid_precompile_environment: BOOLEAN
			-- Has the precompile environment been set correctly?

	is_hidden_files_path_available: BOOLEAN
			-- Is there a valid home directory?

	is_unix_layout: BOOLEAN
			-- Is eiffelstudio installed in the unix layout?

	is_user_files_supported: BOOLEAN
			-- Determines if user files are supported on the platform.
		require
			is_valid_environment: is_valid_environment
		once
			Result := attached user_directory_name as l_home and then not l_home.is_empty
		end

	is_workbench: BOOLEAN
			-- Are we running the workbench version of the compiler?
		external
			"C inline use %"eif_eiffel.h%""
		alias
			"EIF_IS_WORKBENCH"
		end

feature -- Status setting

	set_precompile (a_is_dotnet: BOOLEAN)
			-- Set up the ISE_PRECOMP environment variable, depending on `a_is_dotnet'.
		require
			is_valid_environment: is_valid_environment
		local
			l_precompilation_path, l_installation_precompilation_path: like precompilation_path
			l_dir: DIRECTORY
			l_source_file, l_target_file: detachable RAW_FILE
			l_path: PATH
			retried: BOOLEAN
			l_ecf_name: STRING
		do
			if not retried then
					-- Get the path for the precompiled libraries
				l_precompilation_path := precompilation_path (a_is_dotnet)

					-- Now we set the ISE_PRECOMP environment variable with that path.
					-- Note that if it was already set, the value stays the same.
				set_environment_32 (l_precompilation_path.string_representation, {EIFFEL_CONSTANTS}.ise_precomp_env)
				is_valid_precompile_environment := True

					-- Now if `l_precompilation_path' does not exist, we copy the content from
					-- the installation directory.
				create l_dir.make (l_precompilation_path.string_representation)
				if not l_dir.exists then
						-- Directory does not exist
					safe_recursive_create_dir (l_precompilation_path)
					l_installation_precompilation_path := installation_precompilation_path (a_is_dotnet)
					create l_dir.make_with_path (l_installation_precompilation_path)
					if l_dir.exists and attached l_dir.linear_representation as l_files then
						from
							l_files.start
						until
							l_files.after
						loop
							l_ecf_name := l_files.item
							if
								l_ecf_name.count > 3 and then
								l_ecf_name.substring (l_ecf_name.count - 3,
									l_ecf_name.count).is_case_insensitive_equal (".ecf")
							then
								create l_path.make_nested (l_precompilation_path, l_ecf_name)
								create l_target_file.make_with_path (l_path)
								if not l_target_file.exists then
									l_target_file.open_write
									create l_path.make_nested (l_installation_precompilation_path, l_ecf_name)
									create l_source_file.make_with_path (l_path)
									l_source_file.open_read
									l_source_file.copy_to (l_target_file)
									l_source_file.close
									l_target_file.close
								end
							end
							l_files.forth
						end
					else
							-- Installation directory is missing, we won't do anything
							-- and will let the compilation fails with a missing precompilation
							-- message if used.
					end
				end
			end
		ensure
			is_valid_precompile_environment: is_valid_precompile_environment
		rescue
				-- For some reasons, there was a failure, which most likely happened
				-- while trying to copy the precompilation ECFs over. We simply ignore
				-- the error and continue normally. A compilation error will be triggered
				-- later.
			retried := True
			if l_source_file /= Void and then not l_source_file.is_closed then
				l_source_file.close
			end
			if l_target_file /= Void and then not l_target_file.is_closed then
				l_target_file.close
			end
			retry
		end

feature {NONE} -- Helpers

	path_under_compiler_profile (a_path: STRING_32): STRING_32
			-- To avoid editing value of variable (like ISE_LIBRARY) when compiling against specific compiler profile
			-- modify the value of the related environment variable.
		local
			p: PATH
		do
			if is_compatible_mode and a_path.substring_index ("compatible", 1) = 0 then
				create p.make_from_string (a_path)
				p.extend ("compatible")
				Result := p.string_representation
			else
				Result := a_path
			end
		end

	environment: ENVIRONMENT_ACCESS
			-- Shared access to an instance of {ENVIRONMENT_ACCESS}.
		once
			create Result
		end

feature -- IL environment

	default_il_environment: IL_ENVIRONMENT
			-- Default il environment, using the newest available runtime.
		once
			create Result
		end

feature -- Query

	user_priority_file_name (a_file_path: PATH; a_must_exist: BOOLEAN): detachable PATH
			-- Retrieve a Eiffel installation file, taking a user replacement as priority
		require
			a_file_name_attached: a_file_path /= Void
			not_a_file_is_empty: not a_file_path.is_empty
		local
			l_install: STRING_32
			l_extension: STRING_32
			l_actual_file: RAW_FILE
			l_file_name: STRING_32
		do
			l_file_name := a_file_path.string_representation
			l_install := install_path.string_representation
			if l_install.count < l_file_name.count then
				if l_file_name.substring (1, l_install.count).is_equal (l_install) then
					l_extension := l_file_name.substring (l_install.count + 1, l_file_name.count)
					l_extension.prune_all_leading (operating_environment.directory_separator)
					create Result.make_nested (user_files_path, l_extension)
					create l_actual_file.make_with_name (Result.string_representation)
					if a_must_exist and then (not l_actual_file.exists or else (l_actual_file.is_device or l_actual_file.is_directory)) then
							-- The file does not exist or is not actually a file.
						Result := Void
					end
				end
			end
		ensure
			not_result_is_empty: Result /= Void implies not Result.is_empty
			result_exists: (Result /= Void and a_must_exist) implies file_path_exists (Result)
		end

	platform_priority_file_name (a_file_name: READABLE_STRING_GENERAL; a_use_simple: BOOLEAN; a_must_exist: BOOLEAN): detachable PATH
			-- Retrieve a Eiffel installation path, taking a platform specific path as a priority
			--
			-- `a_file_name': A base directory to affix with the platform name.
			-- `a_use_simple': True to use the Windows/Unix platform name; False to use ISE_PLATFORM.
			-- `a_must_exist': True if the directory must exist to return a result; False otherwise.
			-- `Result': A platform path or Void if the path does not exist.
		require
			a_file_name_attached: a_file_name /= Void
			not_a_file_name_is_empty: not a_file_name.is_empty
		local
			l_file: STRING_32
			l_path: like platform_priority_path
			i: INTEGER
		do
			create l_file.make_from_string (a_file_name.to_string_32)
			i := l_file.last_index_of (operating_environment.directory_separator, l_file.count)
			if i > 0 then
				l_path := platform_priority_path (l_file.substring (1, i - 1), a_use_simple, a_must_exist)
				if l_path /= Void then
					create Result.make_nested (l_path, l_file.substring (i + 1, l_file.count))
					if a_must_exist and then not file_path_exists (Result) then
							-- The directory does not exist
						Result := Void
					end
				end

			end
		ensure
			not_result_is_empty: Result /= Void implies not Result.is_empty
			result_exists: (Result /= Void and a_must_exist) implies file_path_exists (Result)
		end

	platform_priority_path (a_dir: READABLE_STRING_GENERAL; a_use_simple: BOOLEAN; a_must_exist: BOOLEAN): detachable PATH
			-- Retrieve a Eiffel installation path, taking a platform specific path as a priority
			--
			-- `a_dir': A base directory to affix with the platform name.
			-- `a_use_simple': True to use the Windows/Unix platform name; False to use ISE_PLATFORM.
			-- `a_must_exist': True if the directory must exist to return a result; False otherwise.
			-- `Result': A platform path or Void if the path does not exist.
		require
			a_dir_attached: a_dir /= Void
			not_a_dir_is_empty: not a_dir.is_empty
		local
			l_platform: like eiffel_platform
		do
			create Result.make_from_string (a_dir)
			if a_use_simple then
				if {PLATFORM}.is_windows then
					Result.extend (windows_name)
				else
					Result.extend (unix_name)
				end
			else
				l_platform := eiffel_platform
				if not l_platform.is_empty then
					Result.extend (l_platform)
				elseif a_must_exist then
					Result := Void
				else
				end
			end
			if a_must_exist and then Result /= Void and then not directory_path_exists (Result) then
					-- The directory does not exist
				Result := Void
			end
		ensure
			not_result_is_empty: Result /= Void implies not Result.is_empty
			result_exists: (Result /= Void and a_must_exist) implies directory_path_exists (Result)
		end

	docs_path: PATH
			-- Folder contains Eiffel documention.
		require
			is_valid_environment: is_valid_environment
		once
			if is_unix_layout then
				create Result.make_nested (unix_layout_share_path, docs_name)
				Result.extend (unix_product_version_name)
			else
				create Result.make_nested (install_path, docs_name)
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

feature -- Directories (top-level)

	install_path: PATH
			-- Absolute path to the Eiffel installation.
			--
			-- Note: This is the Eiffel installation location for most platforms but you should
			--       be using the platform independent `shared_path'.
		require
			is_valid_environment: is_valid_environment
		local
			l_name_wb: STRING_32
			u: FILE_UTILITIES
		once
			if is_unix_layout then
				Result := shared_path
			else
				Result := eiffel_install
			end
			check result_attached: Result /= Void end
			if is_workbench then
				l_name_wb := Result.string_representation
				l_name_wb.append_character ('_')
				l_name_wb.append (wkbench_suffix)
				if u.directory_exists (l_name_wb) then
						-- The workbench version exists, so use that directory instead.
					create Result.make_from_string (l_name_wb)
				end
			end
			check
				Result_not_void: Result /= Void
				not_result_is_empty: not Result.is_empty
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	dotnet_path: PATH
			-- Location of .NET specific data
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (install_path, dotnet_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	library_path: PATH
			-- Eiffel library path
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (eiffel_library, library_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	installation_precompilation_path (a_is_dotnet: BOOLEAN): PATH
			-- Eiffel path where the ECFs are located in the installation directory.
			-- With platform: $ISE_EIFFEL/precomp/spec/$ISE_PLATFORM
			-- Without: /usr/share/eiffelstudio-7.x/precomp/spec/unix
		require
			is_valid_environment: is_valid_environment
		local
			l_dn_name: STRING_32
		do
			if a_is_dotnet then
					-- Append '-dotnet' to platform name
				create l_dn_name.make (eiffel_platform.count + 7)
				l_dn_name.append (eiffel_platform)
				l_dn_name.append ("-dotnet")
			else
				l_dn_name := eiffel_platform
			end
			create Result.make_nested (shared_path, precomp_name)
			Result.extend (spec_name)
			Result.extend (l_dn_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	precompilation_path (a_is_dotnet: BOOLEAN): PATH
			-- Actual location of the precompiled libraries.
			-- When ISE_PRECOMP is defined:
			--   $ISE_PRECOMP
			-- Otherwise if `is_user_files_supported':
			--   On Windows: C:\Users\manus\Documents\Eiffel User Files\7.x\precomp\spec\$ISE_PLATFORM
			--   On Mac: ~/Eiffel User Files/7.x/precomp/spec/$ISE_PLATFORM
			--   On Unix: ~/.es/Eiffel User Files/7.x/precomp/spec/$ISE_PLATFORM
			-- Otherwise
			--   $ISE_EIFFEL/studio/spec/$ISE_PLATFORM
		require
			is_valid_environment: is_valid_environment
		local
			l_value: like get_environment_32
			l_dn_name: STRING_32
		do
			l_value := get_environment_32 ({EIFFEL_CONSTANTS}.ise_precomp_env)
			if l_value = Void or else l_value.is_empty then
				if is_user_files_supported then
					if a_is_dotnet then
							-- Append '-dotnet' to platform name
						create l_dn_name.make (eiffel_platform.count + 7)
						l_dn_name.append (eiffel_platform)
						l_dn_name.append ("-dotnet")
					else
						l_dn_name := eiffel_platform
					end
					create Result.make_nested (user_files_path, precomp_name)
					Result.extend (spec_name)
					Result.extend (l_dn_name)
				else
						-- No user file is specified, we use the installation
						-- directory and if this is not writable, users will
						-- get an error.
					Result := installation_precompilation_path (a_is_dotnet)
				end
			else
				create Result.make_from_string (l_value)
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

feature  -- Directories (dotnet)

	assemblies_path: PATH
			-- Location of Eiffel Assembly Cache.
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (dotnet_path, assemblies_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

feature -- Directories (distribution)

	bitmaps_path: PATH
			-- Path containing the bitmaps for the graphical environment.
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (shared_application_path, bitmaps_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	built_ins_path (a_is_platform_neutral, a_is_dotnet: BOOLEAN): PATH
			-- Path where implementation for `built_ins' are found.
		require
			is_valid_environment: is_valid_environment
		local
			n: READABLE_STRING_GENERAL
		do
			if a_is_platform_neutral then
				n := neutral_name
			else
				if a_is_dotnet then
					n := dotnet_name
				else
					n := classic_name
				end
			end
			create Result.make_nested (shared_application_path, built_ins_name)
			Result.extend (n)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	config_path: PATH
			-- Path containing the Eiffel compiler configuration files.
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (shared_application_path, "config")
		ensure
			not_result_is_empty: not Result.is_empty
		end

	generation_templates_path: PATH
			-- Path containing the Eiffel compiler code generation template files.
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (config_path, eiffel_platform)
			Result.extend (templates_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	eifinit_path: PATH
			-- Path containing the Eiffel initialization configuration files.
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (shared_application_path, "eifinit")
		ensure
			not_result_is_empty: not Result.is_empty
		end

	filter_path: PATH
			-- Path containing the documentation filters.
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (shared_application_path, filters_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	help_path: PATH
			-- Path containing the help files.
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (shared_application_path, help_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	error_path: PATH
			-- Path containing the compiler error description files.
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (help_path, errors_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	default_templates_path: PATH
			-- Path containing the default templates.
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (help_path, defaults_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	language_path: PATH
			-- Path containing the internationalized mo files.
		require
			is_valid_environment: is_valid_environment
		once
			if is_unix_layout then
				create Result.make_nested (unix_layout_locale_path, unix_product_version_name)
			else
				create Result.make_nested (shared_application_path, lang_name)
				Result.extend (mo_files_name)
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	metrics_path: PATH
			-- Location of the metric configuration files
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (shared_application_path, metrics_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	profile_path: PATH
			-- Location of the profiler configuration files
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (shared_application_path, profiler_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	templates_path: PATH
			-- Path to user code template, to merge with the ones from the installation.
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (shared_application_path, templates_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	template_default_path: PATH
			-- Path containing the templates for default Eiffel files.
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (templates_path, defaults_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	bin_path: PATH
			-- Location of binary compiler components.
		require
			is_valid_environment: is_valid_environment
		once
			if is_unix_layout then
				create Result.make_from_path (unix_layout_base_path)
			else
				create Result.make_nested (shared_application_path, spec_name)
				Result.extend (eiffel_platform)
			end
			Result.extend (bin_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	runtime_include_path: PATH
			-- Location of Eiffel runtime include files.
		require
			is_valid_environment: is_valid_environment
		once
			if is_unix_layout then
				create Result.make_nested (unix_layout_base_path, include_name)
				Result.extend (unix_product_version_name)
			else
				create Result.make_nested (shared_application_path, spec_name)
				Result.extend (eiffel_platform)
				Result.extend (include_name)
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	runtime_lib_path: PATH
			-- Location of Eiffel runtime lib files.
		require
			is_valid_environment: is_valid_environment
		once
			if is_unix_layout then
				Result := unix_layout_lib_path.twin
			else
				create Result.make_nested (shared_application_path, spec_name)
				Result.extend (eiffel_platform)
				Result.extend (lib_name)
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	wizards_path: PATH
			-- Location of new project wizards.
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (lib_application_path, wizards_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	new_project_wizards_path: PATH
			-- Location of new project wizards.
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (wizards_path, "new_projects")
		ensure
			not_result_is_empty: not Result.is_empty
		end

	precompilation_wizard_resources_path: PATH
			-- Location of precompiled wizard resources
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (wizards_path, "others")
			Result.extend ("precompile")
		ensure
			not_result_is_empty: not Result.is_empty
		end

	tools_path: PATH
			-- Path containing the modular files for Eiffel tools.
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (shared_application_path, "tools")
		ensure
			not_result_is_empty: not Result.is_empty
		end

	testing_tool_path: PATH
			-- Path containing testing tool files.
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (tools_path, "testing")
		end

	auto_test_path: PATH
			-- Path containing auto test specific files
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (testing_tool_path, "auto_test")
		ensure
			not_result_is_empty: not Result.is_empty
		end

feature -- Directories (top-level user)

	hidden_files_path: PATH
			-- Hidden application configuration Eiffel files.
			-- With ISE_APP_DATA defined:
			--   $ISE_APP_DATA
			-- When hidden files is available:
			--   On Windows: C:\Users\manus\AppData\Local\Eiffel Software\.es\7.x
			--   On Unix & Mac: ~/.es/7.x
			-- Otherwise we use a subdirectory of `user_files_path':
			--   `user_files_path'\settings
		require
			is_valid_environment: is_valid_environment
			is_user_files_supported: is_user_files_supported
		local
			l_dir: detachable STRING_32
			p_home: PATH
		once
			l_dir := get_environment_32 ({EIFFEL_CONSTANTS}.ise_app_data_env)
			if l_dir = Void or else l_dir.is_empty then
					-- Attempt to use home location.
				if
					operating_environment.home_directory_supported and then
					attached (create {EXECUTION_ENVIRONMENT_32}).home_directory_name as l_home
				then
					create p_home.make_from_string (l_home)
					safe_create_dir (p_home)

					if {PLATFORM}.is_windows then
						create Result.make_nested (p_home, eiffel_software_name)
						Result.extend (hidden_directory_name)
					else
						create Result.make_nested (p_home, hidden_directory_name)
					end
					safe_create_dir (Result)

					create l_dir.make (4)
					l_dir.append_integer ({EIFFEL_CONSTANTS}.major_version)
					l_dir.append_character ('.')
					l_dir.append_integer ({EIFFEL_CONSTANTS}.minor_version)
					create Result.make_nested (Result, l_dir)
					safe_create_dir (Result)
				else
						-- No user set variable or the home directory is not supported
					safe_create_dir (user_files_path)
					create Result.make_nested (user_files_path, settings_name)
					safe_create_dir (Result)
				end
			else
					-- Use environment variable
				create Result.make_from_string (l_dir)
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	user_files_path: PATH
			-- User based Eiffel files which are generally visible to the users
			-- With ISE_USER_FILES is defined:
			--   $ISE_USER_FILES
			-- Otherwise
			--   On Windows: C:\Users\manus\Documents\Eiffel User Files\7.x
			--   On Mac: ~/Eiffel User Files/7.x
			--   On Unix: ~/.es/Eiffel User Files/7.x
			-- When purge the ES stored configuration data, it will not erase the files
			-- under this path
		require
			is_valid_environment: is_valid_environment
			is_user_files_supported: is_user_files_supported
		local
			l_dir: detachable STRING_32
			l_needs_suffix: BOOLEAN
		once
				-- If user have set the ISE_USER_FILES environment variable, use it.
			l_dir := get_environment_32 ({EIFFEL_CONSTANTS}.ise_user_files_env)
			if l_dir = Void or else l_dir.is_empty then
				check attached user_directory_name as l_user_directory_name then
						-- On Unix platform only, the files will be located under the hidden directory
						-- where EiffelStudio stores settings, otherwise it is in the home directory
						-- of the user (i.e. not hidden).
					create Result.make_from_string (l_user_directory_name)
					if not {PLATFORM}.is_windows and then not {PLATFORM}.is_mac then
						Result.extend (hidden_directory_name)
						safe_create_dir (Result)
						l_needs_suffix := False
					else
							-- We need to add a suffix if we are in workbench mode
							-- as otherwise we would be using the same path as finalized.
						l_needs_suffix := True
					end

						-- Now we can freely create our directory structure for `user_files'.
					create l_dir.make (30)
						-- On Unix platform only, we use a lower case version of the directory
						-- without space.
					if not {PLATFORM}.is_windows and then not {PLATFORM}.is_mac then
						l_dir.append (product_name.as_lower)
						l_dir.append ("_user_files")
					else
						l_dir.append (product_name)
						l_dir.append (" User Files")
					end
					if is_workbench and l_needs_suffix then
						l_dir.append_character (' ')
						l_dir.append_character ('(')
						l_dir.append (wkbench_suffix)
						l_dir.append_character (')')
					end
					Result.extend (l_dir)
					safe_create_dir (Result)

						-- Per version directory structure to avoid clutter.
					create l_dir.make (4)
					l_dir.append_integer ({EIFFEL_CONSTANTS}.major_version)
					l_dir.append_character ('.')
					l_dir.append_integer ({EIFFEL_CONSTANTS}.minor_version)
					Result.extend (l_dir)
					safe_create_dir (Result)
				end
			else
					-- Use environment variable
				create Result.make_from_string (l_dir)
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

feature -- Private Settings Directories

	projects_data_path: PATH
			-- Path to settings for all projects loaded by EiffelStudio.
			--| This contains for each ECF file loaded by EiffelStudio the target
			--| and location where project is compiled.
			--| They are hidden by default to the user.
		require
			is_valid_environment: is_valid_environment
			is_user_files_supported: is_user_files_supported
		once
			create Result.make_nested (hidden_files_path, projects_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	docking_data_path: PATH
			-- Path to docking settings for EiffelStudio.
			--| They are hidden by default to the user.
		require
			is_valid_environment: is_valid_environment
			is_user_files_supported: is_user_files_supported
		once
			create Result.make_nested (hidden_files_path, docking_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	session_data_path: PATH
			-- Path to session data associated to a project loaded by EiffelStudio.
			--| They are hidden by default to the user.
		require
			is_valid_environment: is_valid_environment
			is_user_files_supported: is_user_files_supported
		once
			create Result.make_nested (hidden_files_path, session_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	temporary_path: PATH
			-- Path to temporary directory that EiffelStudio can use to store temporary files.
			--| They are hidden by default to the user.
		require
			is_valid_environment: is_valid_environment
			is_user_files_supported: is_user_files_supported
		once
				--| FIXME: Manu 2011/11/05: It might be a good idea to fix FILE_NAME
				--| and add a way to create a temporary file in FILE directory to avoid
				--| security issues if someone creates a file with the same file name
				--| as the one that will be used later by EiffelStudio.

			create Result.make_nested (hidden_files_path, "tmp")
		ensure
			not_result_is_empty: not Result.is_empty
		end

feature -- User Directories

	user_templates_path: PATH
				-- Path to user code template, to merge with the ones from the installation.
		require
			is_valid_environment: is_valid_environment
			is_user_files_supported: is_user_files_supported
		once
			create Result.make_nested (user_files_path, templates_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	user_projects_path: PATH
			-- Location of Eiffel projects.
		local
			l_var: detachable STRING_32
		once
			l_var := get_environment_32 ({EIFFEL_CONSTANTS}.ise_projects_env)
			if l_var = Void or else l_var.is_empty then
				if {PLATFORM}.is_windows or else {PLATFORM}.is_mac then
					create Result.make_nested (user_files_path, projects_name)
				elseif operating_environment.home_directory_supported and then attached environment.home_directory_name as l_home then
					create Result.make_from_string (l_home)
				else
						-- FIXME: What path should we put there?
					create Result.make_from_string (".") -- Invalid path
				end
			else
				create Result.make_from_string (l_var)
			end
--			remove_trailing_dir_separator (Result) -- useless with PATH
		ensure
			not_result_is_empty: not Result.is_empty
		end

feature -- Files

	default_config_file_name: PATH
			-- Default Eiffel confiration file name location
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (default_templates_path, default_config_file)
			if is_user_files_supported then
					-- Check user override file.
				if attached user_priority_file_name (Result, True) as l_user then
					Result := l_user
				end
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	predefined_metrics_file: PATH
			-- File to store predefined metrics
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_from_path (metrics_path)
			Result.extend ("predefined_metrics.xml")
			if is_user_files_supported then
					-- Check user override file.
				if attached user_priority_file_name (Result, True) as l_user then
					Result := l_user
				end
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	compiler_configuration: PATH
			-- Platform specific system level resource specification file
			-- ($ISE_EIFFEL/eifinit/application_name/spec/$ISE_PLATFORM)
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_from_path (eifinit_path)
			Result.extend ("general.cfg")
			if is_user_files_supported then
					-- Check user override file.
				if attached user_priority_file_name (Result, True) as l_user then
					Result := l_user
				end
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	msil_culture_name: PATH
			-- Culture specification file
		require
			is_valid_environment: is_valid_environment
			is_windows: {PLATFORM}.is_windows
		once
			create Result.make_from_path (eifinit_path)
			Result.extend (spec_name)
			Result.extend (Platform_abstraction)
			Result.extend ("culture")
			if is_user_files_supported then
					-- Check user override file.
				if attached user_priority_file_name (Result, True) as l_user then
					Result := l_user
				end
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	libraries_config_name: PATH
			-- Libraries lookup configuration file name
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (eifinit_path, "libraries")
			Result.extend ("cfg")
		ensure
			not_result_is_empty: not Result.is_empty
		end

	precompiles_config_name: PATH
			-- Precompiled libraries lookup configuration file name
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (eifinit_path, "precompiles")
			Result.extend ("cfg")
		ensure
			not_result_is_empty: not Result.is_empty
		end

feature -- Files (user)

	user_docking_file_name (a_file_name: STRING): PATH
			-- Path of standard docking layout.
		require
			is_valid_environment: is_valid_environment
			is_user_files_supported: is_user_files_supported
			a_file_name_attached: a_file_name /= Void
			not_a_file_name_is_empty: not a_file_name.is_empty
		do
			create Result.make_nested (docking_data_path, a_file_name)
			Result.extend (docking_file_extension)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	user_docking_standard_file_name (a_window_id: NATURAL_32): like user_docking_file_name
			-- Path of standard docking layout.
		require
			is_valid_environment: is_valid_environment
			is_user_files_supported: is_user_files_supported
			valid: a_window_id > 0
		do
			Result := user_docking_file_name (docking_standard_file + "_" + a_window_id.out)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	user_docking_debug_file_name (a_window_id: NATURAL_32): like user_docking_file_name
			-- Path of standard docking layout.
		require
			is_valid_environment: is_valid_environment
			is_user_files_supported: is_user_files_supported
			valid: a_window_id > 0
		do
			Result := user_docking_file_name (docking_debug_file + "_" + a_window_id.out)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	user_external_command_file_name (a_file_name: READABLE_STRING_GENERAL): PATH
			-- Path to external commands ini file
		require
			is_valid_environment: is_valid_environment
			is_user_files_supported: is_user_files_supported
			a_file_name_attached: a_file_name /= Void
			not_a_file_name_is_empty: not a_file_name.is_empty
		do
			create Result.make_nested (user_files_path, a_file_name)
			Result.add_extension ("ini")
		ensure
			not_result_is_empty: not Result.is_empty
		end

feature -- Directories (platform independent)

	shared_path: PATH
			-- Location of shared files (platform independent).
			-- With platform: $ISE_EIFFEL.
			-- Without: /usr/share/eiffelstudio-7.x
		require
			is_valid_environment: is_valid_environment
		local
			l_name_wb: STRING_32
			u: FILE_UTILITIES
		once
			if is_unix_layout then
				create Result.make_nested (unix_layout_share_path, unix_product_version_name)
			else
				Result := eiffel_install
			end
			if is_workbench then
				l_name_wb := Result.string_representation
				l_name_wb.append_character ('_')
				l_name_wb.append (wkbench_suffix)
				if u.directory_exists (l_name_wb) then
						-- The workbench version exists, so use that directory instead.
					create Result.make_from_string (l_name_wb)
				end
			end
			check
				not_result_is_empty: not Result.is_empty
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	shared_application_path: PATH
			-- Location of shared files specific for the current application (platform independent).
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (shared_path, distribution_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	lib_path: PATH
			-- Location of libs files (platform dependent).
		require
			is_valid_environment: is_valid_environment
		once
			if is_unix_layout then
				create Result.make_nested (unix_layout_lib_path, unix_product_version_name)
			else
				Result := install_path.twin
			end
			if is_experimental_mode then
				create Result.make_nested (Result, "experimental")
			elseif is_compatible_mode then
				create Result.make_nested (Result, "compatible")
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	lib_application_path: PATH
			-- Location of lib files specific for the current application (platform dependent).
		require
			is_valid_environment: is_valid_environment
		once
			if is_unix_layout then
				create Result.make_nested (unix_layout_lib_path, unix_product_version_name)
			else
				create Result.make_from_path (install_path)
			end
			Result.extend (distribution_name)
		ensure
			not_result_is_empty: not Result.is_empty
		end

feature -- Files (commands)

	estudio_command_name: PATH
			-- Complete path to `estudio'.
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (bin_path, estudio_name)
			if not executable_suffix.is_empty then
				Result.add_extension (executable_suffix)
			end
		ensure
			not_reuslt_is_empty: not Result.is_empty
		end

	ec_command_name: PATH
			-- Absolute path to `ec'.
		require
			is_valid_environment: is_valid_environment
		local
			l_args: ARGUMENTS
		once
			if is_workbench and application_name.same_string ("ec") then
					-- We have to launch ourself to perform a compilation that would make sense
					-- but only if we are the `ec' application, not if we are something else.
				create l_args
				create Result.make_from_string (l_args.command_name)
			else
				create Result.make_nested (bin_path, ec_name)
				if not executable_suffix.is_empty then
					Result.add_extension (executable_suffix)
				end
			end
		ensure
			not_reuslt_is_empty: not Result.is_empty
		end

	studio_command_line (a_ecf, a_target, a_project_path: detachable READABLE_STRING_GENERAL; a_is_gui, a_is_clean: BOOLEAN): STRING_32
			-- Build a proper command line to open/compile a project with EiffelStudio
			-- on a specific target `a_target' if specified, in a location `a_project_path' if specified.
			-- If `a_is_gui' is True, EiffelStudio is launched, otherwise the command line.
			-- If `a_is_clean' is True, the compiler will delete the existing project.
		local
			l_profile: STRING
		do
			create Result.make (256)
			Result.append_character ('%"')
			if a_is_gui then
					-- Because on Windows we have a console if launching `ec' we use the
					-- wrapper `estudio', but this is not needed in theory.
				Result.append (estudio_command_name.string_representation)
			else
				Result.append (ec_command_name.string_representation)
			end
			Result.append_character ('%"')
			l_profile := command_line_profile_option
			if not l_profile.is_empty then
				Result.append_character (' ')
				Result.append (l_profile)
			end
			if a_is_clean then
				Result.append (" -clean")
			end
			if a_ecf /= Void and then not a_ecf.is_empty then
				Result.append (" -config %"")
				Result.append_string_general (a_ecf)
				Result.append_character ('%"')
			end
			if a_target /= Void and then not a_target.is_empty then
				Result.append (" -target %"")
				Result.append_string_general (a_target)
				Result.append_character ('"')
			end
			if a_project_path /= Void and then not a_project_path.is_empty then
				Result.append (" -project_path %"")
				Result.append_string_general (a_project_path)
				Result.append_character ('"')
			end
		end

	freeze_command_name: PATH
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_nested (bin_path, finish_freezing_script)
			if not executable_suffix.is_empty then
				Result.add_extension (executable_suffix)
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	emake_command_name: PATH
			-- Complete path to `emake'.
		require
			is_valid_environment: is_valid_environment
		once
			if is_unix_layout then
				create Result.make_from_path (lib_application_path)
			else
				create Result.make_from_path (bin_path)
			end
			Result.extend (emake_name)
			if not executable_suffix.is_empty then
				Result.add_extension (executable_suffix)
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	quick_finalize_command_name: PATH
			-- Complete path to `quick_finalize'.
		require
			is_valid_environment: is_valid_environment
		once
			if is_unix_layout then
				create Result.make_from_path (lib_application_path)
			else
				create Result.make_from_path (bin_path)
			end
			Result.extend (quick_finalize_name)
			if not executable_suffix.is_empty then
				Result.add_extension (executable_suffix)
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	x2c_command_name: PATH
			-- Complete path to `x2c'.
		require
			is_valid_environment: is_valid_environment
		once
			if is_unix_layout then
				create Result.make_from_path (lib_application_path)
			else
				create Result.make_from_path (bin_path)
			end
			Result.extend (x2c_name)
			if not executable_suffix.is_empty then
				Result.add_extension (executable_suffix)
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	prelink_command_name: PATH
		require
			is_valid_environment: is_valid_environment
		once
			if is_unix_layout then
				create Result.make_from_path (lib_application_path)
			else
				create Result.make_from_path (bin_path)
			end
			Result.extend (prelink_name)
			if not executable_suffix.is_empty then
				Result.add_extension (executable_suffix)
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	ecdbgd_command_name: PATH
			-- Complete path to `ecdbgd'.
		require
			is_valid_environment: is_valid_environment
		once
			if is_unix_layout then
				create Result.make_from_path (lib_application_path)
			else
				create Result.make_from_path (bin_path)
			end
			Result.extend (ecdbg_name)
			if not executable_suffix.is_empty then
				Result.add_extension (executable_suffix)
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	compile_library_command_name: PATH
			-- Complete path to `compile_library.bat'.
		require
			is_valid_environment: is_valid_environment
			is_windows: {PLATFORM}.is_windows
		once
			create Result.make_from_path (bin_path)
			Result.extend ("compile_library.bat")
		ensure
			not_result_is_empty: not Result.is_empty
		end

	precompilation_wizard_command_name: PATH
			-- Command to be executed to launch the precompilation wizard.
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_from_path (precompilation_wizard_resources_path)
			Result.extend (spec_name)
			Result.extend (eiffel_platform)
			Result.extend ("wizard")
			if not executable_suffix.is_empty then
				Result.add_extension (executable_suffix)
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

feature -- Executable names

	estudio_name: STRING_8
			-- Name of estudio command
		once
			create Result.make_from_string ("estudio")
			Result.append (release_suffix)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	ec_name: STRING_8
			-- Full executable name of ec.
		local
			l_var: like get_environment
		once
			l_var := get_environment ({EIFFEL_CONSTANTS}.ec_name_env)
			if l_var /= Void then
				Result := l_var
			else
				create Result.make (6)
				Result.append ("ec")
				Result.append (release_suffix)
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	finish_freezing_script: STRING_32
			-- Name of post-eiffel compilation processing to launch C code.
		once
			Result := {STRING_32} "finish_freezing"
			Result.append_string_general (release_suffix)
		ensure
			not_result_is_empty: not Result.is_empty
		end

	quick_finalize_name: STRING_32 = "quick_finalize"
			-- Name of estudio command

	x2c_name: STRING_8 = "x2c"
			-- Complete path to `x2c'.

	emake_name: STRING_32 = "emake"
			-- Name of emake command.

	prelink_name: STRING_8 = "prelink"
			-- Name of estudio command.

	ecdbg_name: STRING_8 = "ecdbgd"
			-- Name of console line debugger command.

feature {NONE} -- Configuration of layout

	unix_layout_base_path: PATH
			-- Base for the unix layout. e.g. "/usr".
		once
			create Result.make_from_string ("/usr")
		ensure
			not_result_is_empty: not Result.is_empty
		end

	unix_layout_share_path: PATH
			-- share for the unix layout. e.g. "/usr/share".
		once
			create Result.make_nested (unix_layout_base_path, "share")
		ensure
			not_result_is_empty: not Result.is_empty
		end

	unix_layout_lib_path: PATH
			-- Directory name for lib. e.g. "/usr/lib".
		once
			create Result.make_nested (unix_layout_base_path, "lib")
		ensure
			not_result_is_empty: not Result.is_empty
		end

	unix_layout_locale_path: PATH
			-- Directory name for lib. e.g. "/usr/share/locale"
		once
			create Result.make_nested (unix_layout_share_path, "locale")
		ensure
			not_result_is_empty: not Result.is_empty
		end

	unix_layout_platform: STRING_8 = "unix";
			-- Platform to use for the unix layout.

feature -- Environment access

	get_environment (a_var: STRING_8): detachable STRING
			-- Get `a_var' from the environment, taking into account the `application_name' to lookup the defaults.
		require
			a_var_attached: a_var /= Void
			not_a_var_is_empty: not a_var.is_empty
		do
			if attached environment.get_from_application (a_var, application_name) as l_string then
				Result := l_string
			end
		end

	get_environment_32 (a_var: READABLE_STRING_GENERAL): detachable STRING_32
			-- Get `a_var' from the environment, taking into account the `application_name' to lookup the defaults.
		require
			a_var_attached: a_var /= Void
			not_a_var_is_empty: not a_var.is_empty
		do
			if {PLATFORM}.is_windows then
				Result := environment.get_from_application (a_var.to_string_32, application_name)
			elseif attached environment.get_from_application (a_var.to_string_8, application_name) as l_val then
				Result := l_val
			end
		end

feature -- Environment update

	set_environment (a_value, a_var: STRING_8)
			-- Update environment variable `a_key' to be `a_value'.
		require
			a_var_ok: a_var /= Void and then not a_var.is_empty and then not a_var.has ('%U')
			a_value_ok: a_value /= Void and then not a_value.has ('%U')
		do
			environment.put (a_value.string, a_var)
		ensure
			value_updated: get_environment (a_var) /= Void implies get_environment (a_var) ~ a_value.string
		end

	set_environment_32 (a_value, a_var: READABLE_STRING_32)
			-- Update environment variable `a_key' to be `a_value'.
		require
			a_var_ok: a_var /= Void and then not a_var.is_empty and then not a_var.has ('%U')
			a_value_ok: a_value /= Void and then not a_value.has ('%U')
		do
			environment.put (a_value, a_var)
		ensure
			value_updated: attached get_environment_32 (a_var) as e implies e.same_string_general (a_value)
		end

feature -- Version limitation

	has_diagram: BOOLEAN = True
			-- Does this version have the diagram tool?

	has_metrics: BOOLEAN = True
			-- Does this version have the metrics?

	has_profiler: BOOLEAN = True
			-- Does this version have the profiler?

	has_documentation_generation: BOOLEAN = True
			-- Does this version have the documentation generation?

	has_xmi_generation: BOOLEAN = True
			-- Does this version have the XMI generation?

	has_dll_generation: BOOLEAN = True
			-- Does this version have the DLL generation?

	has_signable_generation: BOOLEAN = True;
			-- Does this version allow the signing of .NET assemblies

feature {NONE} -- Basic operations

	create_directories
			-- Creates the default directories
		require
			is_valid_environment: is_valid_environment
		local
			l_directories: like creatable_directories
		do
			l_directories := creatable_directories
			l_directories.do_all (agent safe_create_dir)
		end

	safe_create_dir (a_dir: PATH)
			-- Try to create a directory `a_dir'.
		require
			a_dir_not_void: a_dir /= Void
		local
			u: FILE_UTILITIES
		do
			u.create_directory (a_dir.string_representation)
		end

	safe_recursive_create_dir (a_dir: PATH)
			-- Try to create a directory `a_dir'.
		require
			a_dir_not_void: a_dir /= Void
		local
			u: FILE_UTILITIES
		do
			u.create_directory (a_dir.string_representation)
		end

feature -- Environment variables

	eiffel_install: PATH
			-- ISE_EIFFEL name
		do
			if attached get_environment_32 ({EIFFEL_CONSTANTS}.ise_eiffel_env) as l_result then
				remove_trailing_dir_separator (l_result)
				create Result.make_from_string (l_result)
			else
				create Result.make_from_string (".") -- Current Working Directory
			end
		ensure
			not_result_is_empty: is_valid_environment implies not Result.is_empty
		end

	eiffel_c_compiler: STRING_8
			-- ISE_C_COMPILER name.
		require
			windows: {PLATFORM}.is_windows
		do
			if attached get_environment ({EIFFEL_CONSTANTS}.ise_c_compiler_env) as l_result then
				Result := l_result
			else
				Result := {STRING_32} ""
			end
		ensure
			not_result_is_empty: is_valid_environment implies not Result.is_empty
		end

	eiffel_c_compiler_version: STRING_8
			-- ISE_C_COMPILER_CODE name.
		require
			windows: {PLATFORM}.is_windows
		do
			if attached get_environment ({EIFFEL_CONSTANTS}.ise_c_compiler_ver_env) as l_result then
				Result := l_result
			else
				Result := {STRING_32} ""
			end
		end

	eiffel_platform: STRING_8
			-- ISE_PLATFORM name.
		do
			if attached get_environment ({EIFFEL_CONSTANTS}.ise_platform_env) as l_result then
				Result := l_result
			else
				Result := {STRING_32} ""
			end
		ensure
			not_result_is_empty: is_valid_environment implies not Result.is_empty
		end

	eiffel_library: PATH
			-- ISE_LIBRARY directory name.
		require
			is_valid_environment: is_valid_environment
		do
			if attached get_environment_32 ({EIFFEL_CONSTANTS}.ise_library_env) as l_result then
				remove_trailing_dir_separator (l_result) -- may be useless with PATH
				create Result.make_from_string (l_result)
			else
				create Result.make_from_string (".") -- Current Working Directory ...
			end
		ensure
			not_result_is_empty: is_valid_environment implies not Result.is_empty
		end

	platform_abstraction: STRING_8
			-- Abstraction between Windows and Unix.
		once
			if {PLATFORM}.is_windows then
				Result := windows_name
			else
				Result := unix_name
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

feature -- File constants

	default_config_file: STRING_8 = "default.ecf"
			-- Default ECF file name

	default_project_location_for_windows: PATH
			-- Default project location on windows.
		require
			is_windows: {PLATFORM}.is_windows
		once
			create Result.make_from_string ("C:\projects")
		ensure
			not_result_is_empty: not Result.is_empty
		end

feature -- Directory constants (platform)

	dotnet_name: STRING_32 = "dotnet"
			-- .NET folder name.

	neutral_name: STRING_32 = "neutral"
			-- Neutral platform folder name.

	classic_name: STRING_32 = "classic"
			-- Classic Eiffel folder name.

	windows_name: STRING_8 = "windows"
			-- Windows generic platform folder name.

	unix_name: STRING_8 = "unix"
			-- Unix generic platform folder name.

	wkbench_suffix: STRING_8 = "workbench"
			-- Workbench suffix for paths

feature -- Directory constants (top-level)

	distribution_name: STRING_8
			-- Name of compiler distribution.
			--
			--| Redefine for alternative compiler distributions.
		once
			Result := "studio"
		ensure
			not_result_is_empty: not Result.is_empty
		end

	docs_name: STRING = "docs"
			-- Documentation folder name.

	library_name: STRING = "library"
			-- Library folder name.

	precomp_name: STRING = "precomp"
			-- Precompile library location

feature -- Directory constants (dotnet)

	assemblies_name: STRING_8 = "assemblies"
			-- .NET assembly cache folder name.

feature -- Directory constants (distribution)

	bin_name: STRING_8 = "bin"
			-- Binary folder name

	bitmaps_name: STRING_8 = "bitmaps"
			-- Bitmpa folder name.

	borland_name: STRING_8 = "BCC55"
			-- Borland C compiler folder name.

	built_ins_name: STRING_32 = "built_ins"
			-- Built-in code classes folder name.

	defaults_name: STRING_8 = "defaults"
			-- Default templates folder name.

	errors_name: STRING_32 = "errors"
			-- Error file descriptions folder name.

	etc_name: STRING_8 = "etc"
			-- Etc library folder name

	filters_name: STRING_8 = "filters"
			-- Documentation filters folder name.

	help_name: STRING_32 = "help"
			-- Help files folder name.

	include_name: STRING_8 = "include"
			-- External include folder name

	lang_name: STRING_8 = "lang"
			-- Language folder name.

	lib_name: STRING_8 = "lib"
			-- External library folder name

	metrics_name: STRING_32 = "metrics"
			-- Metrics folder name.

	mo_files_name: STRING_8 = "mo_files"
			-- Language MO files folder name.

	profiler_name: STRING_8 = "profiler"
			-- Profiler folder name.

	templates_name: STRING_8 = "templates"
			-- Code templates folder name.

	spec_name: STRING_8 = "spec"
			-- Specific folder name

	wizards_name: STRING_8 = "wizards"
			-- Wizards folder name

feature -- Directory constants (user)

	docking_name: STRING_8 = "docking"
			-- User docking data folder name.

	projects_name: STRING_8 = "projects"
			-- Eiffel user projects folder name

	settings_name: STRING_8 = "settings"
			-- User settings folder name.

	session_name: STRING_8 = "session"
			-- User session data folder name.

	eiffel_software_name: STRING_8 = "Eiffel Software"
			-- Company folder name

feature -- File constants (user)

	docking_debug_file: STRING_8 = "debug"
			-- Debugger layout docking file name

	docking_standard_file: STRING_8 = "standard"
			-- Editor layout docking file name

	docking_file_extension: STRING_8 = "dck"

	eis_storage_file: STRING_8 = "eis_storage"
			-- EIS storage file name.

feature {NONE} -- Formatting

	remove_trailing_dir_separator (a_dir: STRING_GENERAL)
			-- Removes the trailing directory separator of a directory.
		require
			a_dir_attached: a_dir /= Void
		local
			l_count: INTEGER
			dirsep: NATURAL_32
		do
			if not a_dir.is_empty then
				l_count := a_dir.count
				dirsep := operating_environment.directory_separator.natural_32_code
				if
					l_count > 1 and then a_dir.code (l_count) = dirsep and then
					l_count > 2 and then a_dir.code (l_count - 1) /= dirsep
				then
					a_dir.keep_head (l_count - 1)
				end
			end
		end

feature {NONE} -- Implementation

	on_check_environment_failure
			-- Action to be taken when `check_environment_fails'.
		do
			(create {EXCEPTIONS}).die (-1)
		end

	hidden_directory_name: STRING_32
			-- Name of the hidden_directory where settings will be stored on unix based platforms.
		once
			Result := ".es"
			if is_workbench then
				Result.append_character ('_')
				Result.append (wkbench_suffix)
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	user_directory_name: detachable STRING_32
			-- Directory name corresponding to the user directory
			-- On Windows: C:\Users\manus\Documents
			-- On Unix & Mac: $HOME
		once
			Result := (create {EXECUTION_ENVIRONMENT_32}).user_directory_name
		end

feature -- Preferences

	Eiffel_preferences: STRING_32
			-- Preferences location
		require
			is_valid_environment: is_valid_environment
		local
			p: PATH
		once
			if {PLATFORM}.is_windows then
				create Result.make_from_string ("HKEY_CURRENT_USER\Software\ISE\" + product_version_name + "\" + application_name + "\Preferences")
				if is_workbench then
					Result.append_character ('_')
					Result.append (wkbench_suffix)
				end
			else
				create p.make_from_path (hidden_files_path)
				p.extend (application_name + "rc" + {EIFFEL_CONSTANTS}.major_version.out + {EIFFEL_CONSTANTS}.minor_version.out)
				Result := p.string_representation
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	general_preferences: PATH
			-- Platform independent preferences.
		require
			is_valid_environment: is_valid_environment
		once
			create Result.make_from_path (eifinit_path)
			Result.extend ("default.xml")
			if attached user_priority_file_name (Result, True) as l_fn then
				Result := l_fn
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

	platform_preferences: PATH
			-- Platform specific preferences.
		once
			create Result.make_from_path (eifinit_path)
			Result.extend (spec_name)
			Result.extend (platform_abstraction)
			Result.extend ("default")
			Result.add_extension ("xml")
			if attached user_priority_file_name (Result, True) as upf then
				Result := upf
			end
		ensure
			not_result_is_empty: not Result.is_empty
		end

feature {NONE} -- Helper

	directory_path_exists (p: PATH): BOOLEAN
			-- Directory path `p' exists?
		local
			u: FILE_UTILITIES
		do
			Result := u.directory_path_exists (p)
		end

	file_path_exists (p: PATH): BOOLEAN
			-- Path `p' exists?
		local
			u: FILE_UTILITIES
		do
			Result := u.file_path_exists (p)
		end

feature -- _8 to be replaced functions
---------------------------------------------------
---------------------------------------------------
--- REMOVE LATER _8 FUNCTION STEP BY STEP ---------
---------------------------------------------------
---------------------------------------------------
feature -- Env

	environment_info_8: STRING_8
		do
			check attached environment_info as v then
				Result := v
			end
		end

feature -- Query

	user_priority_file_name_8 (a_file_name: STRING_GENERAL; a_must_exist: BOOLEAN): detachable FILE_NAME
		do
			if attached user_priority_file_name (create {PATH}.make_from_string (a_file_name), a_must_exist) as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	platform_priority_file_name_8 (a_file_name: READABLE_STRING_GENERAL; a_use_simple: BOOLEAN; a_must_exist: BOOLEAN): detachable FILE_NAME
		do
			if attached platform_priority_file_name (a_file_name, a_use_simple, a_must_exist) as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	platform_priority_path_8 (a_dir: READABLE_STRING_GENERAL; a_use_simple: BOOLEAN; a_must_exist: BOOLEAN): detachable DIRECTORY_NAME
		do
			if attached platform_priority_path (a_dir, a_use_simple, a_must_exist) as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

feature -- Directories (top-level)

	install_path_8: DIRECTORY_NAME
		do
			check attached install_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	library_path_8: DIRECTORY_NAME
		do
			check attached library_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	installation_precompilation_path_8 (a_is_dotnet: BOOLEAN): DIRECTORY_NAME
		do
			check attached installation_precompilation_path (a_is_dotnet) as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	precompilation_path_8 (a_is_dotnet: BOOLEAN): DIRECTORY_NAME
		do
			check attached precompilation_path (a_is_dotnet) as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

feature -- Directories (distribution)

	bitmaps_path_8: DIRECTORY_NAME
		do
			check attached bitmaps_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	config_path_8: DIRECTORY_NAME
		do
			check attached config_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	generation_templates_path_8: DIRECTORY_NAME
		do
			check attached generation_templates_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	eifinit_path_8: DIRECTORY_NAME
		do
			check attached eifinit_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	filter_path_8: DIRECTORY_NAME
		do
			check attached filter_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	language_path_8: DIRECTORY_NAME
		do
			check attached language_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	metrics_path_8: DIRECTORY_NAME
		do
			check attached metrics_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	profile_path_8: DIRECTORY_NAME
		do
			check attached profile_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	templates_path_8: DIRECTORY_NAME
		do
			check attached templates_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	template_default_path_8: DIRECTORY_NAME
		do
			check attached template_default_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	bin_path_8: DIRECTORY_NAME
		do
			check attached bin_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	runtime_include_path_8: DIRECTORY_NAME
		do
			check attached runtime_include_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	runtime_lib_path_8: DIRECTORY_NAME
		do
			check attached runtime_lib_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	tools_path_8: DIRECTORY_NAME
		do
			check attached tools_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	testing_tool_path_8: DIRECTORY_NAME
		do
			check attached testing_tool_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	auto_test_path_8: DIRECTORY_NAME
		do
			check attached auto_test_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

feature -- Directories (top-level user)

	hidden_files_path_8: DIRECTORY_NAME
		do
			check attached hidden_files_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	user_files_path_8: DIRECTORY_NAME
		do
			check attached user_files_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

feature -- Private Settin Directories

	docking_data_path_8: DIRECTORY_NAME
		do
			check attached docking_data_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	session_data_path_8: DIRECTORY_NAME
		do
			check attached session_data_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	temporary_path_8: DIRECTORY_NAME
		do
			check attached temporary_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

feature -- User Directories

	user_templates_path_8: DIRECTORY_NAME
		do
			check attached user_templates_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	user_projects_path_8: DIRECTORY_NAME
		do
			check attached user_projects_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

feature -- Files

	predefined_metrics_file_8: FILE_NAME
		do
			check attached predefined_metrics_file as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	msil_culture_name_8: FILE_NAME
		do
			check attached msil_culture_name as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	libraries_config_name_8: FILE_NAME
		do
			check attached libraries_config_name as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	precompiles_config_name_8: FILE_NAME
		do
			check attached precompiles_config_name as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

feature -- Files (user)

	user_docking_file_name_8 (a_file_name: STRING): FILE_NAME
		do
			check attached user_docking_file_name (a_file_name) as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	user_docking_standard_file_name_8 (a_window_id: NATURAL_32): FILE_NAME
		do
			check attached user_docking_standard_file_name (a_window_id) as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	user_docking_debug_file_name_8 (a_window_id: NATURAL_32): FILE_NAME
		do
			check attached user_docking_debug_file_name (a_window_id) as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	user_external_command_file_name_8 (a_file_name: STRING): FILE_NAME
		do
			check attached user_external_command_file_name (a_file_name) as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

feature -- Directories (platform independent)

	shared_path_8: DIRECTORY_NAME
		do
			check attached shared_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	shared_application_path_8: DIRECTORY_NAME
		do
			check attached shared_application_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	lib_application_path_8: DIRECTORY_NAME
		do
			check attached lib_application_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

feature -- Files (commands)

	estudio_command_name_8: FILE_NAME
		do
			check attached estudio_command_name as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	ec_command_name_8: FILE_NAME
		do
			check attached ec_command_name as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	studio_command_line_8 (a_ecf, a_target, a_project_path: detachable READABLE_STRING_GENERAL; a_is_gui, a_is_clean: BOOLEAN): STRING_8
		do
			check attached studio_command_line (a_ecf, a_target, a_project_path, a_is_gui, a_is_clean) as v then
				Result := v
			end
		end

	x2c_command_name_8: FILE_NAME
		do
			check attached x2c_command_name as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	prelink_command_name_8: FILE_NAME
		do
			check attached prelink_command_name as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

feature {NONE} -- Configuration of layout

	unix_layout_base_path_8: DIRECTORY_NAME
		do
			check attached unix_layout_base_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	unix_layout_share_path_8: DIRECTORY_NAME
		do
			check attached unix_layout_share_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	unix_layout_lib_path_8: DIRECTORY_NAME
		do
			check attached unix_layout_lib_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	unix_layout_locale_path_8: DIRECTORY_NAME
		do
			check attached unix_layout_locale_path as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

feature -- Environment variables

	eiffel_install_8: STRING_8
		do
			check attached eiffel_install as v then
				Result := v.string_representation_8
			end
		end

	eiffel_library_8: STRING_8
		do
			check attached eiffel_library as v then
				Result := v.string_representation_8
			end
		end

feature -- File constants

	default_project_location_for_windows_8: STRING_8
		do
			check attached default_project_location_for_windows as v then
				Result := v.string_representation_8
			end
		end

feature {NONE} -- Implementation

	hidden_directory_name_8: STRING_8
		do
			check attached hidden_directory_name as v then
				Result := v
			end
		end

	user_directory_name_8: detachable STRING
		do
			if attached user_directory_name as v then
				Result := v
			end
		end

feature -- Preferences

	Eiffel_preferences_8: STRING_8
		do
			check attached Eiffel_preferences as v then
				Result := v.as_string_8
			end
		end

	general_preferences_8: FILE_NAME
		do
			check attached general_preferences as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

	platform_preferences_8: FILE_NAME
		do
			check attached platform_preferences as v then
				create Result.make_from_string (v.string_representation_8)
			end
		end

;note
	copyright: "Copyright (c) 1984-2012, Eiffel Software"
	license:   "GPL version 2 (see http://www.eiffel.com/licensing/gpl.txt)"
	licensing_options: "http://www.eiffel.com/licensing"
	copying: "[
			This file is part of Eiffel Software's Eiffel Development Environment.
			
			Eiffel Software's Eiffel Development Environment is free
			software; you can redistribute it and/or modify it under
			the terms of the GNU General Public License as published
			by the Free Software Foundation, version 2 of the License
			(available at the URL listed under "license" above).
			
			Eiffel Software's Eiffel Development Environment is
			distributed in the hope that it will be useful, but
			WITHOUT ANY WARRANTY; without even the implied warranty
			of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
			See the GNU General Public License for more details.
			
			You should have received a copy of the GNU General Public
			License along with Eiffel Software's Eiffel Development
			Environment; if not, write to the Free Software Foundation,
			Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
		]"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"

end
