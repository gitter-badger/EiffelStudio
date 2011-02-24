note
	description: "[
					This class is generated by EiffelRibbon Tool
					Don't modify it manually, since it would be generated again
																					]"
	date: "$Date$"
	revision: "$Revision$"

deferred class
	EV_RIBBON

inherit
	EV_ANY_HANDLER

feature -- Command

	init_with_window (a_window: EV_WINDOW)
			-- Creation method
		local
			l_resources: EV_RIBBON_RESOURCES
		do
			if attached {EV_WINDOW_IMP} a_window.implementation as l_imp then
				com_initialize
				item := create_ribbon_com_framework (l_imp.wel_item)
				command_handler := get_command_handler
				create l_resources
				l_resources.ribbon_list.extend (Current)
			end
		end

	set_modes (a_mode: INTEGER)
			-- Set application mode for current ribbon framework
		require
			exists: exists
		do
			c_set_modes (a_mode, item)
		end

	set_background_color (a_color: EV_RIBBON_HSB_COLOR)
			-- Set global background color with `a_color'
		require
			exists: exists
			not_void: a_color /= Void
		local
			l_key: EV_PROPERTY_KEY
		do
			create l_key.make_global_background_color
			c_set_ribbon_color (item, l_key.item, a_color.value)
		end

	set_highlight_color (a_color: EV_RIBBON_HSB_COLOR)
			-- Set global highlight color with `a_color'
		require
			not_void: a_color /= Void
		local
			l_key: EV_PROPERTY_KEY
		do
			create l_key.make_global_highlight_color
			c_set_ribbon_color (item, l_key.item, a_color.value)
		end

	set_text_color (a_color: EV_RIBBON_HSB_COLOR)
			-- Set global text color with `a_color'
		require
			not_void: a_color /= Void
		local
			l_key: EV_PROPERTY_KEY
		do
			create l_key.make_global_text_color
			c_set_ribbon_color (item, l_key.item, a_color.value)
		end

	destroy
			-- Clean up all ribbon related COM objects and resources
		require
			exists: exists
		do
			destroy_ribbon_com_framwork (item)
			item := default_pointer
			com_uninitialize
		end

feature {EV_RIBBON_BUTTON, EV_RIBBON_CHECKBOX} -- Commands

	get_command_property (a_command_id: NATURAL_32; a_key: EV_PROPERTY_KEY; a_variant: EV_PROPERTY_VARIANT)
		require
			exists: exists
			a_key_not_void: a_key /= Void
			a_key_exists: a_key.exists
			a_variant_not_void: a_variant /= Void
		do
			c_get_ui_command_property (item, a_command_id, a_key.item, a_variant.item)
		end

	set_command_property (a_command_id: NATURAL_32; a_key: EV_PROPERTY_KEY; a_variant: EV_PROPERTY_VARIANT)
		require
			exists: exists
			a_key_not_void: a_key /= Void
			a_key_exists: a_key.exists
			a_variant_not_void: a_variant /= Void
		do
			c_set_ui_command_property (item, a_command_id, a_key.item, a_variant.item)
		end

	invalidate (a_command_id: NATURAL_32; a_flags: INTEGER_32; a_key: EV_PROPERTY_KEY)
		require
			exists: exists
			a_key_not_void: a_key /= Void
			a_key_exists: a_key.exists
		do
			c_invalidate_ui_command (item, a_command_id, a_flags, a_key.item)
		end

feature -- Status Report

	tabs: ARRAYED_LIST [EV_RIBBON_TAB]
			-- All tabs in current tool bar

	height: INTEGER
			-- Get current ribbon height
		require
			exists: exists
		do
			Result := c_height (item)
		end

	exists: BOOLEAN
			-- Does current still exist?
		do
			Result := item /= default_pointer
		end

feature -- Status Report

	item: POINTER
			-- Ribbon framework object

	command_handler: POINTER
			-- Command handler C object

feature {EV_RIBBON_TITLED_WINDOW_IMP} -- Externals

	com_initialize
			-- Initialize COM
		external
			"C inline use %"Objbase.h%""
		alias
			"CoInitialize (0);"
		end

	com_uninitialize
			-- Clean up COM resources
		external
			"C inline use %"Objbase.h%""
		alias
			"CoUninitialize();"
		end

	create_ribbon_com_framework (a_hwnd: POINTER): POINTER
			-- Create Ribbon framework, attach ribbon to `a_hwnd'
		external
			"C++ inline use <ribbon.h>"
		alias
			"return InitializeFramework ((HWND) $a_hwnd);"
		end

	destroy_ribbon_com_framwork (a_framework: POINTER)
			-- Destroy ribbon framwork
		require
			a_framework_exists: a_framework /= default_pointer
		external
			"C++ inline use <ribbon.h>"
		alias
			"{
				HRESULT hr = S_OK;
				hr = ((IUIFramework *) $a_framework)->Destroy ();
			}"
		end

	c_height (a_framework: POINTER): INTEGER
			-- Get ribbon height
		require
			a_framework_exists: a_framework /= default_pointer
		external
			"C++ inline use <ribbon.h>"
		alias
			"{
				UINT32 val;
				HRESULT hr = S_OK;

				IUIRibbon* pRibbon = NULL;
				if (SUCCEEDED(((IUIFramework *) $a_framework)->GetView(0, IID_IUIRIBBON, (void **) &pRibbon))) {
					hr = pRibbon->GetHeight(&val);
					pRibbon->Release();
				}
				return (EIF_INTEGER) val;
			}"
		end

	c_set_modes (a_mode: INTEGER; a_framework: POINTER)
			-- Set application mode
		require
			a_framework_exists: a_framework /= default_pointer
		external
			"C++ inline use <ribbon.h>"
		alias
			"{
				HRESULT hr = S_OK;
				hr = ((IUIFramework *) $a_framework)->SetModes(UI_MAKEAPPMODE((INT32) $a_mode));
			}"
		end

	get_command_handler: POINTER
			-- Get Ribbon command handler C object
		external
			"C inline use <ribbon.h>"
		alias
			"return GetCommandHandler ();"
		end

feature {NONE} -- Implementation

	c_get_ui_command_property (a_framework: POINTER; a_command_id: NATURAL_32; a_key, a_variant: POINTER)
		require
			a_framework_not_null: a_framework /= default_pointer
			a_key_not_null: a_key /= default_pointer
			a_variant_not_null: a_variant /= default_pointer
		external
			"C++ inline use <ribbon.h>"
		alias
			"{
				HRESULT hr = S_OK;
				hr = ((IUIFramework *) $a_framework)->GetUICommandProperty(
					(UINT32) $a_command_id,
					(REFPROPERTYKEY) *(PROPERTYKEY *) $a_key,
					(PROPVARIANT *) $a_variant);
			}"
		end

	c_set_ui_command_property (a_framework: POINTER; a_command_id: NATURAL_32; a_key, a_variant: POINTER)
			--
		require
			a_framework_exists: a_framework /= default_pointer
		external
			"C++ inline use <ribbon.h>"
		alias
			"{
				HRESULT hr = S_OK;
				hr = ((IUIFramework *) $a_framework)->SetUICommandProperty(
					(UINT32) $a_command_id,
					(REFPROPERTYKEY) *(PROPERTYKEY *)$a_key,
					(REFPROPVARIANT) *(PROPVARIANT *)$a_variant);
			}"
		end

	c_invalidate_ui_command (a_framework: POINTER; a_command_id: NATURAL_32; a_flags: INTEGER; a_key: POINTER)
			--
		require
			a_framework_exists: a_framework /= default_pointer
		external
			"C++ inline use <ribbon.h>"
		alias
			"{
				HRESULT hr = S_OK;
				hr = ((IUIFramework *) $a_framework)->InvalidateUICommand(
					(UINT32) $a_command_id,
					(UI_INVALIDATIONS) $a_flags,
					(PROPERTYKEY *) $a_key);
			}"
		end

	c_set_ribbon_color (a_ribbon_framework: POINTER; a_key: POINTER; a_color_value: NATURAL_32)
			-- Set ribbon color
		external
			"C++ inline use <Propvarutil.h>"
		alias
			"[
			{			
				IPropertyStore *l_spPropertyStore;
				IUIFramework *l_framework = (IUIFramework *) $a_ribbon_framework;

				PROPVARIANT propvarBackground;
				PROPERTYKEY *property_key = (PROPERTYKEY *)$a_key;
				UI_HSBCOLOR BackgroundColor = (UI_HSBCOLOR) $a_color_value;
				InitPropVariantFromUInt32(BackgroundColor, &propvarBackground);

				if (SUCCEEDED(l_framework->QueryInterface(__uuidof(IPropertyStore), (void **)&l_spPropertyStore)))
				{
					 l_spPropertyStore->SetValue(*(property_key), propvarBackground);
 					 l_spPropertyStore->Commit();
 					 l_spPropertyStore->Release();
				}

			}
			]"
		end
end

