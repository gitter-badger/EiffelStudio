indexing
	Generator: "Eiffel Emitter 2.5b2"
	external_name: "System.Diagnostics.SymbolStore.ISymbolWriter"

deferred external class
	SYSTEM_DIAGNOSTICS_SYMBOLSTORE_ISYMBOLWRITER

inherit
	ANY
		undefine
			finalize,
			get_hash_code,
			is_equal,
			to_string
		end

feature -- Basic Operations

	define_parameter (name: STRING; attributes: INTEGER; sequence: INTEGER; addr_kind: INTEGER; addr1: INTEGER; addr2: INTEGER; addr3: INTEGER) is
			-- Valid values for `addr_kind' are:
			-- ILOffset = 1
			-- NativeRVA = 2
			-- NativeRegister = 3
			-- NativeRegisterRelative = 4
			-- NativeOffset = 5
			-- NativeRegisterRegister = 6
			-- NativeRegisterStack = 7
			-- NativeStackRegister = 8
			-- BitField = 9
		require
			valid_sym_address_kind: addr_kind = 1 or addr_kind = 2 or addr_kind = 3 or addr_kind = 4 or addr_kind = 5 or addr_kind = 6 or addr_kind = 7 or addr_kind = 8 or addr_kind = 9
		external
			"IL deferred signature (System.String, enum System.Reflection.ParameterAttributes, System.Int32, enum System.Diagnostics.SymbolStore.SymAddressKind, System.Int32, System.Int32, System.Int32): System.Void use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"DefineParameter"
		end

	set_method_source_range (start_doc: SYSTEM_DIAGNOSTICS_SYMBOLSTORE_ISYMBOLDOCUMENTWRITER; start_line: INTEGER; start_column: INTEGER; end_doc: SYSTEM_DIAGNOSTICS_SYMBOLSTORE_ISYMBOLDOCUMENTWRITER; end_line: INTEGER; end_column: INTEGER) is
		external
			"IL deferred signature (System.Diagnostics.SymbolStore.ISymbolDocumentWriter, System.Int32, System.Int32, System.Diagnostics.SymbolStore.ISymbolDocumentWriter, System.Int32, System.Int32): System.Void use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"SetMethodSourceRange"
		end

	define_field (parent: SYSTEM_DIAGNOSTICS_SYMBOLSTORE_SYMBOLTOKEN; name: STRING; attributes: INTEGER; signature: ARRAY [INTEGER_8]; addr_kind: INTEGER; addr1: INTEGER; addr2: INTEGER; addr3: INTEGER) is
			-- Valid values for `addr_kind' are:
			-- ILOffset = 1
			-- NativeRVA = 2
			-- NativeRegister = 3
			-- NativeRegisterRelative = 4
			-- NativeOffset = 5
			-- NativeRegisterRegister = 6
			-- NativeRegisterStack = 7
			-- NativeStackRegister = 8
			-- BitField = 9
		require
			valid_sym_address_kind: addr_kind = 1 or addr_kind = 2 or addr_kind = 3 or addr_kind = 4 or addr_kind = 5 or addr_kind = 6 or addr_kind = 7 or addr_kind = 8 or addr_kind = 9
		external
			"IL deferred signature (System.Diagnostics.SymbolStore.SymbolToken, System.String, enum System.Reflection.FieldAttributes, System.Byte[], enum System.Diagnostics.SymbolStore.SymAddressKind, System.Int32, System.Int32, System.Int32): System.Void use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"DefineField"
		end

	open_method (method: SYSTEM_DIAGNOSTICS_SYMBOLSTORE_SYMBOLTOKEN) is
		external
			"IL deferred signature (System.Diagnostics.SymbolStore.SymbolToken): System.Void use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"OpenMethod"
		end

	set_scope_range (scope_id: INTEGER; start_offset: INTEGER; end_offset: INTEGER) is
		external
			"IL deferred signature (System.Int32, System.Int32, System.Int32): System.Void use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"SetScopeRange"
		end

	set_user_entry_point (entry_method: SYSTEM_DIAGNOSTICS_SYMBOLSTORE_SYMBOLTOKEN) is
		external
			"IL deferred signature (System.Diagnostics.SymbolStore.SymbolToken): System.Void use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"SetUserEntryPoint"
		end

	define_global_variable (name: STRING; attributes: INTEGER; signature: ARRAY [INTEGER_8]; addr_kind: INTEGER; addr1: INTEGER; addr2: INTEGER; addr3: INTEGER) is
			-- Valid values for `addr_kind' are:
			-- ILOffset = 1
			-- NativeRVA = 2
			-- NativeRegister = 3
			-- NativeRegisterRelative = 4
			-- NativeOffset = 5
			-- NativeRegisterRegister = 6
			-- NativeRegisterStack = 7
			-- NativeStackRegister = 8
			-- BitField = 9
		require
			valid_sym_address_kind: addr_kind = 1 or addr_kind = 2 or addr_kind = 3 or addr_kind = 4 or addr_kind = 5 or addr_kind = 6 or addr_kind = 7 or addr_kind = 8 or addr_kind = 9
		external
			"IL deferred signature (System.String, enum System.Reflection.FieldAttributes, System.Byte[], enum System.Diagnostics.SymbolStore.SymAddressKind, System.Int32, System.Int32, System.Int32): System.Void use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"DefineGlobalVariable"
		end

	close is
		external
			"IL deferred signature (): System.Void use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"Close"
		end

	using_namespace (full_name: STRING) is
		external
			"IL deferred signature (System.String): System.Void use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"UsingNamespace"
		end

	set_sym_attribute (parent: SYSTEM_DIAGNOSTICS_SYMBOLSTORE_SYMBOLTOKEN; name: STRING; data: ARRAY [INTEGER_8]) is
		external
			"IL deferred signature (System.Diagnostics.SymbolStore.SymbolToken, System.String, System.Byte[]): System.Void use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"SetSymAttribute"
		end

	define_sequence_points (document: SYSTEM_DIAGNOSTICS_SYMBOLSTORE_ISYMBOLDOCUMENTWRITER; offsets: ARRAY [INTEGER]; lines: ARRAY [INTEGER]; columns: ARRAY [INTEGER]; end_lines: ARRAY [INTEGER]; end_columns: ARRAY [INTEGER]) is
		external
			"IL deferred signature (System.Diagnostics.SymbolStore.ISymbolDocumentWriter, System.Int32[], System.Int32[], System.Int32[], System.Int32[], System.Int32[]): System.Void use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"DefineSequencePoints"
		end

	open_namespace (name: STRING) is
		external
			"IL deferred signature (System.String): System.Void use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"OpenNamespace"
		end

	set_underlying_writer (underlying_writer: INTEGER) is
		external
			"IL deferred signature (System.Int32): System.Void use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"SetUnderlyingWriter"
		end

	close_method is
		external
			"IL deferred signature (): System.Void use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"CloseMethod"
		end

	close_scope (end_offset: INTEGER) is
		external
			"IL deferred signature (System.Int32): System.Void use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"CloseScope"
		end

	define_document (url: STRING; language: SYSTEM_GUID; language_vendor: SYSTEM_GUID; document_type: SYSTEM_GUID): SYSTEM_DIAGNOSTICS_SYMBOLSTORE_ISYMBOLDOCUMENTWRITER is
		external
			"IL deferred signature (System.String, System.Guid, System.Guid, System.Guid): System.Diagnostics.SymbolStore.ISymbolDocumentWriter use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"DefineDocument"
		end

	close_namespace is
		external
			"IL deferred signature (): System.Void use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"CloseNamespace"
		end

	define_local_variable (name: STRING; attributes: INTEGER; signature: ARRAY [INTEGER_8]; addr_kind: INTEGER; addr1: INTEGER; addr2: INTEGER; addr3: INTEGER; start_offset: INTEGER; end_offset: INTEGER) is
			-- Valid values for `addr_kind' are:
			-- ILOffset = 1
			-- NativeRVA = 2
			-- NativeRegister = 3
			-- NativeRegisterRelative = 4
			-- NativeOffset = 5
			-- NativeRegisterRegister = 6
			-- NativeRegisterStack = 7
			-- NativeStackRegister = 8
			-- BitField = 9
		require
			valid_sym_address_kind: addr_kind = 1 or addr_kind = 2 or addr_kind = 3 or addr_kind = 4 or addr_kind = 5 or addr_kind = 6 or addr_kind = 7 or addr_kind = 8 or addr_kind = 9
		external
			"IL deferred signature (System.String, enum System.Reflection.FieldAttributes, System.Byte[], enum System.Diagnostics.SymbolStore.SymAddressKind, System.Int32, System.Int32, System.Int32, System.Int32, System.Int32): System.Void use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"DefineLocalVariable"
		end

	open_scope (start_offset: INTEGER): INTEGER is
		external
			"IL deferred signature (System.Int32): System.Int32 use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"OpenScope"
		end

	initialize (emitter: INTEGER; filename: STRING; f_full_build: BOOLEAN) is
		external
			"IL deferred signature (System.Int32, System.String, System.Boolean): System.Void use System.Diagnostics.SymbolStore.ISymbolWriter"
		alias
			"Initialize"
		end

end -- class SYSTEM_DIAGNOSTICS_SYMBOLSTORE_ISYMBOLWRITER
