indexing
	description	: "COMPARABLE_CONSUMED_FIELD with comparaison on feature dotnet_name"
	author		: "Generated by the New Vision2 Application Wizard."
	date		: "$Date$"
	revision	: "1.0.0"

class
	COMPARABLE_CONSUMED_FIELD

inherit
	CONSUMED_FUNCTION
	
	COMPARABLE
		undefine
			default_create, is_equal, copy
		end

create
	make_with_consumed_field
	
feature -- Initialization
	
	make_with_consumed_field (a_consumed_field: CONSUMED_FIELD) is
		require
			non_void_a_consumed_field: a_consumed_field /= Void
		do
			eiffel_name := a_consumed_field.eiffel_name
			dotnet_name := a_consumed_field.dotnet_name
			arguments := a_consumed_field.arguments
			declared_type := a_consumed_field.declared_type
			return_type := a_consumed_field.return_type
			internal_flags := a_consumed_field.internal_flags
		ensure
			eiffel_name_set: eiffel_name = a_consumed_field.eiffel_name
			dotnet_name_set: dotnet_name = a_consumed_field.dotnet_name
			arguments_set: arguments = a_consumed_field.arguments
			declared_type_set: declared_type = a_consumed_field.declared_type
			return_type_set: return_type = a_consumed_field.return_type
			internal_flags_set: internal_flags = a_consumed_field.internal_flags
		end

feature -- Implementation
	
	infix "<" (other: like Current): BOOLEAN is
			-- Is current object less than `other'?
		do
			Result := dotnet_name < other.dotnet_name
		end

end -- class COMPARABLE_CONSUMED_FIELD