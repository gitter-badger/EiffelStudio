-- This file has been generated by EWG. Do not edit. Changes will be lost!

class CFALLOCATOR_ALLOCATE_CALL_BACK_DISPATCHER

inherit

	ANY

	EWG_CARBON_CALLBACK_C_GLUE_CODE_FUNCTIONS_EXTERNAL
		export {NONE} all end

create

	make

feature {NONE}

	make (a_callback: CFALLOCATOR_ALLOCATE_CALL_BACK_CALLBACK) is
		require
			a_callback_not_void: a_callback /= Void
		do
			callback := a_callback
			set_cfallocator_allocate_call_back_entry_external (Current, $on_callback)
		end

feature {ANY}

	callback: CFALLOCATOR_ALLOCATE_CALL_BACK_CALLBACK

	c_dispatcher: POINTER is
		do
			Result := get_cfallocator_allocate_call_back_stub_external
		end

feature {NONE} -- Implementation

	frozen on_callback (a_allocsize: INTEGER; a_hint: INTEGER; a_info: POINTER): POINTER is 
		do
			Result := callback.on_callback (a_allocsize, a_hint, a_info) 
		end

invariant

	 callback_not_void: callback /= Void

end
