indexing
	description: "Implemented `IEnumFeature' Interface."
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	IENUM_FEATURE_IMPL_STUB

inherit
	IENUM_FEATURE_INTERFACE

	ECOM_STUB

feature -- Access

	count: INTEGER is
			-- No description available.
		do
			-- Put Implementation here.
		end

feature -- Basic Operations

	next (pp_ieiffel_feature_descriptor: CELL [IEIFFEL_FEATURE_DESCRIPTOR_INTERFACE]; pul_fetched: INTEGER_REF) is
			-- No description available.
			-- `pp_ieiffel_feature_descriptor' [out].  
			-- `pul_fetched' [out].  
		do
			-- Put Implementation here.
		end

	skip (ul_count: INTEGER) is
			-- No description available.
			-- `ul_count' [in].  
		do
			-- Put Implementation here.
		end

	reset is
			-- No description available.
		do
			-- Put Implementation here.
		end

	clone1 (pp_ienum_feature: CELL [IENUM_FEATURE_INTERFACE]) is
			-- No description available.
			-- `pp_ienum_feature' [out].  
		do
			-- Put Implementation here.
		end

	ith_item (ul_index: INTEGER; pp_ieiffel_feature_descriptor: CELL [IEIFFEL_FEATURE_DESCRIPTOR_INTERFACE]) is
			-- No description available.
			-- `ul_index' [in].  
			-- `pp_ieiffel_feature_descriptor' [out].  
		do
			-- Put Implementation here.
		end

	create_item is
			-- Initialize `item'
		do
			item := ccom_create_item (Current)
		end

feature {NONE}  -- Externals

	ccom_create_item (eif_object: IENUM_FEATURE_IMPL_STUB): POINTER is
			-- Initialize `item'
		external
			"C++ [new ecom_EiffelComCompiler::IEnumFeature_impl_stub %"ecom_EiffelComCompiler_IEnumFeature_impl_stub.h%"](EIF_OBJECT)"
		end

end -- IENUM_FEATURE_IMPL_STUB

