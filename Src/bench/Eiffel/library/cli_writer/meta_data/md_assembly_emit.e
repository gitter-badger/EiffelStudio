indexing
	description: "Encapsulation of IMetaDataAssemblyEmit"
	date: "$Date$"
	revision: "$Revision$"

class
	MD_ASSEMBLY_EMIT

inherit
	COM_OBJECT
	
create
	make_by_pointer

feature -- Access

	define_assembly_ref (assembly_name: UNI_STRING; assembly_info: MD_ASSEMBLY_INFO;
			public_key_token: MD_PUBLIC_KEY_TOKEN): INTEGER is
		require
			assembly_name_not_void: assembly_name /= Void
			assembly_info_not_void: assembly_info /= Void
		local
			null: POINTER
		do
			if public_key_token /= Void then
				last_call_success := c_define_assembly_ref (item, public_key_token.item.item,
					public_key_token.item.count,
					assembly_name.item, assembly_info.item, null, 0, 0, $Result)
			else
				last_call_success := c_define_assembly_ref (item, null, 0,
					assembly_name.item, assembly_info.item, null, 0, 0, $Result)
			end
		ensure
			success: last_call_success = 0
			valid_result: Result > 0
		end

feature -- Definition

	define_assembly (assembly_name: UNI_STRING; assembly_flags: INTEGER;
			assembly_info: MD_ASSEMBLY_INFO; public_key: MD_PUBLIC_KEY): INTEGER
		is
			-- Define a new assembly `assembly_name' with characteristics
			-- `assembly_flags' and `assembly_info', and if not void with
			-- a public key `public_key'.
			-- Possible values of `assembly_flags' are defined in MD_ASSEMBLY_FLAGS.
		require
			assembly_name_not_void: assembly_name /= Void
			assembly_info_not_void: assembly_info /= Void
			valid_flags: public_key /= Void implies assembly_flags &
				feature {MD_ASSEMBLY_FLAGS}.public_key = feature {MD_ASSEMBLY_FLAGS}.public_key
		do
			if public_key = Void then
				last_call_success := c_define_assembly (item, default_pointer, 0,
					feature {MD_HASH_IDS}.sha1, assembly_name.item, assembly_info.item,
					assembly_flags, $Result)
			else
				last_call_success := c_define_assembly (item, public_key.item.item, public_key.item.count,
					feature {MD_HASH_IDS}.sha1, assembly_name.item, assembly_info.item,
					assembly_flags, $Result)				
			end
		ensure
			success: last_call_success = 0
			valid_result: Result > 0
		end

feature {NONE} -- Implementation

	c_define_assembly (an_item: POINTER; public_key: POINTER; key_length: INTEGER;
			hash_alg: INTEGER; assembly_name: POINTER; assembly_metadata: POINTER;
			assembly_flags: INTEGER; assembly_token: POINTER): INTEGER
		is
			-- Call `IMetaDataAssemblyEmit->DefineAssembly'.
		external
			"C++ IMetaDataAssemblyEmit signature (void *, ULONG, ULONG, LPCWSTR, ASSEMBLYMETADATA *, DWORD, mdAssembly *): EIF_INTEGER use <cor.h>"
		alias
			"DefineAssembly"
		end
	
	c_define_assembly_ref (an_item: POINTER; public_key: POINTER; key_length: INTEGER;
			assembly_name: POINTER; assembly_metadata: POINTER; hash_value: POINTER;
			hash_length: INTEGER; assembly_flags: INTEGER; assembly_token: POINTER): INTEGER
		is
			-- Call `IMetaDataAssemblyEmit->DefineAssemblyRef'.
		external
			"[
				C++ IMetaDataAssemblyEmit signature
					(void *, ULONG, LPCWSTR, ASSEMBLYMETADATA *,
					void *, ULONG, DWORD, mdAssembly *): EIF_INTEGER
				use <cor.h>
			]"
		alias
			"DefineAssemblyRef"
		end

end -- class MD_ASSEMBLY_EMIT
