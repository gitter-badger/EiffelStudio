indexing
	description: "Control Site."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	CONTROL_SITE

inherit
	IAX_WIN_HOST_WINDOW_IMPL

	IOLE_CLIENT_SITE_IMPL

	IOLE_IN_PLACE_SITE_WINDOWLESS_IMPL

	IOLE_CONTROL_SITE_IMPL

	IOLE_CONTAINER_IMPL

	IOBJECT_WITH_SITE_IMPL

	IPROPERTY_NOTIFY_SINK_IMPL

	IAX_WIN_AMBIENT_DISPATCH_IMPL

	IDOC_HOST_UIHANDLER_IMPL
		rename
			translate_accelerator as idoc_host_uihandler_translate_accelerator1,
			translate_accelerator_user_precondition as idoc_host_uihandler_translate_accelerator1_user_precondition
		end

	IADVISE_SINK_IMPL

	ECOM_STUB

creation
	make,
	make_from_pointer

feature {NONE}  -- Initialization

	make is
			-- Creation. Implement if needed.
		do
			
		end

	make_from_pointer (cpp_obj: POINTER) is
			-- Creation.
		do
			set_item (cpp_obj)
			make
		end

feature -- Basic Operations

	create_item is
			-- Initialize `item'
		do
			item := ccom_create_item (Current)
		end
		
feature {NONE} -- Externals

	ccom_create_item (eif_object: like Current): POINTER is
			-- Initialize `item'
		external
			"C++ [new ecom_control_library::control_site %"ecom_control_library_control_site_s.h%"](EIF_OBJECT)"
		end

end -- CONTROL_SITE

