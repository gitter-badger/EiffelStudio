indexing
	description: "Object File Enumeration. Eiffel language compiler library. Help file: "
	Note: "Automatically generated by the EiffelCOM Wizard."

deferred class
	IENUM_OBJECT_FILES_INTERFACE

inherit
	ECOM_INTERFACE

feature -- Status Report

	next_user_precondition (pbstr_object_file: CELL [STRING]; pul_fetched: INTEGER_REF): BOOLEAN is
			-- User-defined preconditions for `next'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	skip_user_precondition (ul_count: INTEGER): BOOLEAN is
			-- User-defined preconditions for `skip'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	reset_user_precondition: BOOLEAN is
			-- User-defined preconditions for `reset'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	clone1_user_precondition (pp_ienum_object_files: CELL [IENUM_OBJECT_FILES_INTERFACE]): BOOLEAN is
			-- User-defined preconditions for `clone1'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	ith_item_user_precondition (ul_index: INTEGER; pbstr_object_file: CELL [STRING]): BOOLEAN is
			-- User-defined preconditions for `ith_item'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

	count_user_precondition: BOOLEAN is
			-- User-defined preconditions for `count'.
			-- Redefine in descendants if needed.
		do
			Result := True
		end

feature -- Basic Operations

	next (pbstr_object_file: CELL [STRING]; pul_fetched: INTEGER_REF) is
			-- No description available.
			-- `pbstr_object_file' [out].  
			-- `pul_fetched' [out].  
		require
			non_void_pbstr_object_file: pbstr_object_file /= Void
			non_void_pul_fetched: pul_fetched /= Void
			next_user_precondition: next_user_precondition (pbstr_object_file, pul_fetched)
		deferred

		ensure
			valid_pbstr_object_file: pbstr_object_file.item /= Void
		end

	skip (ul_count: INTEGER) is
			-- No description available.
			-- `ul_count' [in].  
		require
			skip_user_precondition: skip_user_precondition (ul_count)
		deferred

		end

	reset is
			-- No description available.
		require
			reset_user_precondition: reset_user_precondition
		deferred

		end

	clone1 (pp_ienum_object_files: CELL [IENUM_OBJECT_FILES_INTERFACE]) is
			-- No description available.
			-- `pp_ienum_object_files' [out].  
		require
			non_void_pp_ienum_object_files: pp_ienum_object_files /= Void
			clone1_user_precondition: clone1_user_precondition (pp_ienum_object_files)
		deferred

		ensure
			valid_pp_ienum_object_files: pp_ienum_object_files.item /= Void
		end

	ith_item (ul_index: INTEGER; pbstr_object_file: CELL [STRING]) is
			-- No description available.
			-- `ul_index' [in].  
			-- `pbstr_object_file' [out].  
		require
			non_void_pbstr_object_file: pbstr_object_file /= Void
			ith_item_user_precondition: ith_item_user_precondition (ul_index, pbstr_object_file)
		deferred

		ensure
			valid_pbstr_object_file: pbstr_object_file.item /= Void
		end

	count: INTEGER is
			-- No description available.
		require
			count_user_precondition: count_user_precondition
		deferred

		end

end -- IENUM_OBJECT_FILES_INTERFACE

