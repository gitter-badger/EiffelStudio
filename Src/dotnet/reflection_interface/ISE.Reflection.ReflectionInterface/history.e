indexing
	description: "Access to the Eiffel Assembly Cache history"
	external_name: "ISE.Reflection.History"
--	attribute: create {SYSTEM_RUNTIME_INTEROPSERVICES_CLASSINTERFACEATTRIBUTE}.make_classinterfaceattribute (2) end
	
class
	HISTORY
		
create
	make
	
feature {NONE} -- Initialization

	make is
		indexing
			description: "Initialize `assemblies_table' and `types_table'."
			external_name: "Make"
		do
			create assemblies_table.make
			create types_table.make
		ensure
			non_void_assemblies_table: assemblies_table /= Void
			non_void_types_table: types_table /= Void
		end

feature -- Access

	assemblies_table: SYSTEM_COLLECTIONS_HASHTABLE
			-- Key: ISE_REFLECTION_ASSEMBLYDESCRIPTOR
			-- Value: ISE_REFLECTION_EIFFELASSEMBLY
		indexing
			description: "Last 50 retrieved assemblies"
			external_name: "AssembliesTable"
		end

	types_table: SYSTEM_COLLECTIONS_HASHTABLE
			-- Key: SYSTEM_TYPE
			-- Value: ISE_REFLECTION_EIFFELCLASS
		indexing
			description: "Last 50 retrieved types"
			external_name: "TypesTable"
		end
	
	Maximum_count: INTEGER is 50
		indexing
			description: "Number of assemblies and types kept in the history"
			external_name: "MaximumCount"
		end
	
	search_for_assembly_result: ISE_REFLECTION_EIFFELASSEMBLY
		indexing
			description: "Assembly found during search: Result of `search_for_assembly'"
			external_name: "SearchForAssemblyResult"
		end

	search_for_type_result: ISE_REFLECTION_EIFFELCLASS
		indexing
			description: "Eiffel class found during search: Result of `search_for_type'"
			external_name: "SearchForTypeResult"
		end

feature -- Status Report

	assembly_found: BOOLEAN
		indexing
			description: "Has assembly be found? (Result of `search_for_assembly')"
			external_name: "AssemblyFound"
		end

	type_found: BOOLEAN
		indexing
			description: "Has type be found? (Result of `search_for_type')"
			external_name: "TypeFound"
		end

	has_assembly (a_descriptor: ISE_REFLECTION_ASSEMBLYDESCRIPTOR): BOOLEAN is
		indexing
			description: "Does `assemblies_table' contain `a_descriptor'?"
			external_name: "HasAssembly"
		require
			non_void_descriptor: a_descriptor /= Void
		local
			enumerator: SYSTEM_COLLECTIONS_IENUMERATOR
			current_descriptor: ISE_REFLECTION_ASSEMBLYDESCRIPTOR
		do
			enumerator := assemblies_table.keys.getenumerator
			from
			until
				not enumerator.movenext or Result 
			loop
				current_descriptor ?= enumerator.current_
				if current_descriptor /= Void then
					Result := current_descriptor.name.tolower.equals_string (a_descriptor.name.tolower) and
									current_descriptor.version.tolower.equals_string (a_descriptor.version.tolower) and
									current_descriptor.culture.tolower.equals_string (a_descriptor.culture.tolower) and
									current_descriptor.publickey.tolower.equals_string (a_descriptor.publickey.tolower)
				end
			end
		end

	has_type (a_type: SYSTEM_TYPE): BOOLEAN is
		indexing
			description: "Does `types_table' contain `a_type'?"
			external_name: "HasType"
		require
			non_void_type: a_type /= Void
		local
			enumerator: SYSTEM_COLLECTIONS_IENUMERATOR
			current_type: SYSTEM_TYPE
		do
			enumerator := types_table.keys.getenumerator
			from
			until
				not enumerator.movenext or Result 
			loop
				current_type ?= enumerator.current_
				if current_type /= Void then
					Result := current_type.assemblyqualifiedname.tolower.equals_string (a_type.assemblyqualifiedname.tolower)
				end
			end
		end
		
feature -- Basic Operations

	add_assembly (a_descriptor: ISE_REFLECTION_ASSEMBLYDESCRIPTOR; an_eiffel_assembly: ISE_REFLECTION_EIFFELASSEMBLY) is
		indexing
			description: "Add `an_eiffel_assembly' to `assemblies_table' with key `a_descriptor'."
			external_name: "AddAssembly"
		require
			not_added: not has_assembly (a_descriptor)
			non_void_descriptor: a_descriptor /= Void
			non_void_eiffel_assembly: an_eiffel_assembly /= Void
		local
			enumerator: SYSTEM_COLLECTIONS_IENUMERATOR
			first_key: ISE_REFLECTION_ASSEMBLYDESCRIPTOR
		do
			if assemblies_table.count > Maximum_count then
				enumerator := assemblies_table.keys.getenumerator
				first_key ?= enumerator.current_
				if first_key /= Void then
					assemblies_table.remove (first_key)
				end
			end
			assemblies_table.add (a_descriptor, an_eiffel_assembly)
		ensure
			assembly_added: assemblies_table.containskey (a_descriptor)
		end

	add_type (a_type: SYSTEM_TYPE; an_eiffel_class: ISE_REFLECTION_EIFFELCLASS) is
		indexing
			description: "Add `an_eiffel_class' to `types_table' with key `a_type'."
			external_name: "AddType"
		require
			not_added: not has_type (a_type)
			non_void_type: a_type /= Void
			non_void_eiffel_class: an_eiffel_class /= Void
		local
			enumerator: SYSTEM_COLLECTIONS_IENUMERATOR
			first_key: SYSTEM_TYPE
		do
			if types_table.count > Maximum_count then
				enumerator := types_table.keys.getenumerator
				first_key ?= enumerator.current_
				if first_key /= Void then
					types_table.remove (first_key)
				end
			end
			types_table.add (a_type, an_eiffel_class)
		ensure
			assembly_added: types_table.containskey (a_type)
		end
	
	search_for_assembly (a_descriptor: ISE_REFLECTION_ASSEMBLYDESCRIPTOR) is
		indexing
			description: "Does `assemblies_table' contain `a_descriptor'? Make found assembly available in `search_for_assembly_result'."
			external_name: "SearchForAssembly"
		require
			non_void_descriptor: a_descriptor /= Void
		local
			enumerator: SYSTEM_COLLECTIONS_IENUMERATOR
			current_descriptor: ISE_REFLECTION_ASSEMBLYDESCRIPTOR
			found: BOOLEAN
		do
			enumerator := assemblies_table.keys.getenumerator
			from
				assembly_found := False
			until
				not enumerator.movenext or found 
			loop
				current_descriptor ?= enumerator.current_
				if current_descriptor /= Void then
					assembly_found := current_descriptor.name.tolower.equals_string (a_descriptor.name.tolower) and
									current_descriptor.version.tolower.equals_string (a_descriptor.version.tolower) and
									current_descriptor.culture.tolower.equals_string (a_descriptor.culture.tolower) and
									current_descriptor.publickey.tolower.equals_string (a_descriptor.publickey.tolower)
					if assembly_found then
						search_for_assembly_result ?= assemblies_table.item (current_descriptor)
						found := True
					end
				end
			end
		end

	search_for_type (a_type: SYSTEM_TYPE) is
		indexing
			description: "Does `types_table' contain `a_type'? Make found class available in `search_for_type_result'."
			external_name: "SearchForType"
		require
			non_void_type: a_type /= Void
		local
			enumerator: SYSTEM_COLLECTIONS_IENUMERATOR
			current_type: SYSTEM_TYPE
			found: BOOLEAN
		do
			enumerator := types_table.keys.getenumerator
			from
				type_found := False
			until
				not enumerator.movenext or found 
			loop
				current_type ?= enumerator.current_
				if current_type /= Void then
					type_found := current_type.assemblyqualifiedname.tolower.equals_string (a_type.assemblyqualifiedname.tolower)
					if type_found then
						search_for_type_result ?= types_table.item (current_type)
						found := True
					end
				end
			end
		end
		
invariant
	non_void_assemblies_table: assemblies_table /= Void
	non_void_types_table: types_table /= Void	
	assemblies_table_count_under_maximum: assemblies_table.count <= 50
	types_table_count_under_maximum: types_table.count <= 50
	
end -- class HISTORY