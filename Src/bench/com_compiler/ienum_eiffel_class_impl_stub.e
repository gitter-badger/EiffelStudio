indexing
	description: "Implemented `IEnumEiffelClass' Interface."
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	IENUM_EIFFEL_CLASS_IMPL_STUB

inherit
	IENUM_EIFFEL_CLASS_INTERFACE

	ECOM_STUB

feature -- Access

	count: INTEGER is
			-- No description available.
		do
			-- Put Implementation here.
		end

feature -- Basic Operations

	next (rgelt: CELL [IEIFFEL_CLASS_DESCRIPTOR_INTERFACE]; pcelt_fetched: INTEGER_REF) is
			-- No description available.
			-- `rgelt' [out].  
			-- `pcelt_fetched' [out].  
		do
			-- Put Implementation here.
		end

	skip (celt: INTEGER) is
			-- No description available.
			-- `celt' [in].  
		do
			-- Put Implementation here.
		end

	reset is
			-- No description available.
		do
			-- Put Implementation here.
		end

	clone1 (ppenum: CELL [IENUM_EIFFEL_CLASS_INTERFACE]) is
			-- No description available.
			-- `ppenum' [out].  
		do
			-- Put Implementation here.
		end

	ith_item (an_index: INTEGER; rgelt: CELL [IEIFFEL_CLASS_DESCRIPTOR_INTERFACE]) is
			-- No description available.
			-- `an_index' [in].  
			-- `rgelt' [out].  
		do
			-- Put Implementation here.
		end

	create_item is
			-- Initialize `item'
		do
			item := ccom_create_item (Current)
		end

feature {NONE}  -- Externals

	ccom_create_item (eif_object: IENUM_EIFFEL_CLASS_IMPL_STUB): POINTER is
			-- Initialize `item'
		external
			"C++ [new ecom_eiffel_compiler::IEnumEiffelClass_impl_stub %"ecom_eiffel_compiler_IEnumEiffelClass_impl_stub_s.h%"](EIF_OBJECT)"
		end

end -- IENUM_EIFFEL_CLASS_IMPL_STUB

