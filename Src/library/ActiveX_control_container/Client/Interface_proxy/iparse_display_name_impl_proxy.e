indexing
	description: "Implemented `IParseDisplayName' Interface."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	IPARSE_DISPLAY_NAME_IMPL_PROXY

inherit
	IPARSE_DISPLAY_NAME_INTERFACE

	ECOM_QUERIABLE

create
	make_from_other,
	make_from_pointer

feature {NONE}  -- Initialization

	make_from_pointer (cpp_obj: POINTER) is
			-- Make from pointer
		do
			initializer := ccom_create_iparse_display_name_impl_proxy_from_pointer(cpp_obj)
			item := ccom_item (initializer)
		end

feature -- Basic Operations

	parse_display_name (pbc: IBIND_CTX_INTERFACE; psz_display_name: STRING; pch_eaten: INTEGER_REF; ppmk_out: CELL [IMONIKER_INTERFACE]) is
			-- No description available.
			-- `pbc' [in].  
			-- `psz_display_name' [in].  
			-- `pch_eaten' [out].  
			-- `ppmk_out' [out].  
		local
			pbc_item: POINTER
			a_stub: ECOM_STUB
		do
			if pbc /= Void then
				if (pbc.item = default_pointer) then
					a_stub ?= pbc
					if a_stub /= Void then
						a_stub.create_item
					end
				end
				pbc_item := pbc.item
			end
			ccom_parse_display_name (initializer, pbc_item, psz_display_name, pch_eaten, ppmk_out)
		end

feature {NONE}  -- Implementation

	delete_wrapper is
			-- Delete wrapper
		do
			ccom_delete_iparse_display_name_impl_proxy(initializer)
		end

feature {NONE}  -- Externals

	ccom_parse_display_name (cpp_obj: POINTER; pbc: POINTER; psz_display_name: STRING; pch_eaten: INTEGER_REF; ppmk_out: CELL [IMONIKER_INTERFACE]) is
			-- No description available.
		external
			"C++ [ecom_control_library::IParseDisplayName_impl_proxy %"ecom_control_library_IParseDisplayName_impl_proxy_s.h%"](::IBindCtx *,EIF_OBJECT,EIF_OBJECT,EIF_OBJECT)"
		end

	ccom_delete_iparse_display_name_impl_proxy (a_pointer: POINTER) is
			-- Release resource
		external
			"C++ [delete ecom_control_library::IParseDisplayName_impl_proxy %"ecom_control_library_IParseDisplayName_impl_proxy_s.h%"]()"
		end

	ccom_create_iparse_display_name_impl_proxy_from_pointer (a_pointer: POINTER): POINTER is
			-- Create from pointer
		external
			"C++ [new ecom_control_library::IParseDisplayName_impl_proxy %"ecom_control_library_IParseDisplayName_impl_proxy_s.h%"](IUnknown *)"
		end

	ccom_item (cpp_obj: POINTER): POINTER is
			-- Item
		external
			"C++ [ecom_control_library::IParseDisplayName_impl_proxy %"ecom_control_library_IParseDisplayName_impl_proxy_s.h%"]():EIF_POINTER"
		end

indexing
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"




end -- IPARSE_DISPLAY_NAME_IMPL_PROXY

