indexing
	description: "Generate Eiffel class from emitter information"
	external_name: "ISE.Reflection.EiffelCodeGenerator"
--	attribute: create {SYSTEM_RUNTIME_INTEROPSERVICES_CLASSINTERFACEATTRIBUTE}.make_classinterfaceattribute (2) end
	
class
	EIFFEL_CODE_GENERATOR
	
inherit
	EIFFEL_CODE_GENERATOR_DICTIONARY
		export
			{NONE} all
		end

create
	make_eiffel_code_generator,
	make_from_info

feature {NONE} -- Initialization

	make_eiffel_code_generator is
			-- Creation routine
		indexing
			external_name: "MakeEiffelCodeGenerator"
		do
		end
		
	make_from_info (an_eiffel_assembly: like eiffel_assembly) is
			-- Set `eiffel_assembly' with `an_eiffel_assembly'.
		indexing
			external_name: "MakeFromInfo"
		require
			non_void_eiffel_assembly: an_eiffel_assembly /= Void
			non_void_eiffel_assembly_name: an_eiffel_assembly.assemblydescriptor.Name /= Void
			not_empty_eiffel_assembly_name: an_eiffel_assembly.AssemblyDescriptor.Name.Length > 0
			non_void_eiffel_cluster_path: an_eiffel_assembly.EiffelClusterPath.Length > 0
			non_void_emitter_version_number: an_eiffel_assembly.EmitterVersionNumber /= Void
			not_empty_emitter_version_number: an_eiffel_assembly.EmitterVersionNumber.Length > 0
		do
			eiffel_assembly := an_eiffel_assembly
			if not valid_path then
				create_assembly_folder
			end
		ensure
			eiffel_assembly_set: eiffel_assembly = an_eiffel_assembly
		end

feature -- Access

	eiffel_assembly: ISE_REFLECTION_EIFFELASSEMBLY
			-- Eiffel assembly generated by the emitter
		indexing
			external_name: "EiffelAssembly"
		end
			
	eiffel_class: ISE_REFLECTION_EIFFELCLASS
			-- Eiffel class generated by the emitter
		indexing
			external_name: "EiffelClass"
		end
				
	generated_code: STRING 
			-- Generated code
		indexing
			external_name: "GeneratedCode"
		end
			
feature -- Status Report

	valid_path: BOOLEAN is
			-- Is Eiffel cluster path valid?
		indexing
			external_name: "ValidPath"
		require
			non_void_eiffel_assembly: eiffel_assembly /= Void
			non_void_eiffel_cluster_path: eiffel_assembly.eiffelclusterpath /= Void
			not_empty_eiffel_cluster_path: eiffel_assembly.eiffelclusterpath.length > 0
		local
			dir: SYSTEM_IO_DIRECTORY
		do
			Result := dir.exists (eiffel_assembly.eiffelclusterpath)
		end

feature -- Basic Operations

	generate_eiffel_class (an_eiffel_class: like eiffel_class) is
			-- Generate Eiffel class from `eiffel_class'.
		indexing
			external_name: "GenerateEiffelClass"
		require
			non_void_eiffel_class: an_eiffel_class /= Void
			non_void_eiffel_class_name: an_eiffel_class.EiffelName /= Void
			not_empty_eiffel_class_name: an_eiffel_class.EiffelName.Length > 0
			non_void_eiffel_class_full_external_name: an_eiffel_class.FullExternalName /= Void
			not_empty_eiffel_class_full_external_name: an_eiffel_class.FullExternalName.Length > 0
			non_void_eiffel_assembly: eiffel_assembly /= Void
			non_void_eiffel_assembly_name: eiffel_assembly.AssemblyDescriptor.Name /= Void
			not_empty_eiffel_assembly_name: eiffel_assembly.AssemblyDescriptor.Name.Length > 0
			non_void_eiffel_cluster_path: eiffel_assembly.EiffelClusterPath.Length > 0
			non_void_emitter_version_number: eiffel_assembly.EmitterVersionNumber /= Void
			not_empty_emitter_version_number: eiffel_assembly.EmitterVersionNumber.Length > 0
			valid_path: valid_path
		local
			file_stream: SYSTEM_IO_STREAMWRITER
			eiffel_cluster_path: STRING
			full_external_name: STRING
			filename: STRING
			formatter: FORMATTER
			dir: SYSTEM_IO_DIRECTORY
			env: SYSTEM_ENVIRONMENT
			cluster_path: STRING
		do
			eiffel_class := an_eiffel_class
			create formatter.make_formatter
			eiffel_cluster_path := eiffel_assembly.EiffelClusterPath
			if eiffel_cluster_path.Length > 0 and then not eiffel_cluster_path.EndsWith ("\") then
				eiffel_cluster_path := eiffel_cluster_path.Concat_String_String (eiffel_cluster_path, "\")
			end
			full_external_name := eiffel_class.FullExternalName
			filename := eiffel_cluster_path.Concat_String_String_String (eiffel_cluster_path, formatter.FormatTypeName (full_external_name).ToLower, Eiffel_class_extension)
			create file_stream.make_streamwriter_5 (filename, False, create {SYSTEM_TEXT_ASCIIENCODING}.make_asciiencoding)

			create generated_code.make_2 ('%U', 0)
			
				-- indexing
				--  	Generator: "Eiffel Emitter Version number"
				-- 	external_name: "ClassName"
			generated_code := generated_code.Concat_String_String_String_String (generated_code, Indexing_keyword, New_line, Tab)
			generated_code := generated_code.Concat_String_String_String_String (generated_code, Generator_indexing_clause, Colon, Space) 
			generated_code := generated_code.Concat_String_String_String_String (generated_code, Inverted_comma, Generator_name, Space)
			generated_code := generated_code.Concat_String_String_String_String (generated_code, eiffel_assembly.EmitterVersionNumber, Inverted_comma, New_line)	
			generated_code := generated_code.Concat_String_String_String_String (generated_code, Tab, external_name_keyword, Colon)
			generated_code := generated_code.Concat_String_String_String_String (generated_code, Space, Inverted_comma, formatter.FormatStrongName (eiffel_class.FullExternalName))
			generated_code := generated_code.Concat_String_String_String_String (generated_code, Inverted_comma, New_line, New_line)

				-- frozen
			if eiffel_class.IsFrozen then
				generated_code := generated_code.Concat_String_String_String (generated_code, Frozen_keyword, Space)
			end
				
				-- expanded
			if eiffel_class.IsExpanded then
				generated_code := generated_code.Concat_String_String_String (generated_code, Expanded_keyword, Space)
			end

				-- deferred
			if eiffel_class.IsDeferred then
				generated_code := generated_code.Concat_String_String_String (generated_code, Deferred_keyword, Space)
			end
			
				-- external class
				-- 	CLASS_NAME
			generated_code := generated_code.Concat_String_String_String_String (generated_code, External_keyword, Space, Class_keyword)
			generated_code := generated_code.Concat_String_String_String_String (generated_code, New_line, Tab, eiffel_class.EiffelName.ToUpper)
			generated_code := generated_code.Concat_String_String_String (generated_code, New_line, New_line)

				-- inherit
				-- 	PARENT_NAME
				-- 		rename ...
				-- 		undefine ...
				-- 		redefine ...
				-- 		end
			generate_inherit_clause

				-- `create {NONE}' or `create make ...'
			generate_create_clause
			
				-- Generate class features (except initialization ones).
			generate_class_features

				-- `end -- class CLASS_NAME'
			generated_code := generated_code.Concat_String_String_String_String (generated_code, End_keyword, Space, Dashes)
			generated_code := generated_code.Concat_String_String_String_String (generated_code, Space, Class_keyword, Space)
			generated_code := generated_code.Concat_String_String_String (generated_code, eiffel_class.EiffelName.ToUpper, New_line)
		
			file_stream.Write_String (generated_code)
			file_stream.Close
			eiffel_class := Void
		ensure
			void_eiffel_class: eiffel_class = Void
		end

feature {NONE} -- Implementation

	create_assembly_folder is
			-- Create assembly folder where Eiffel code will be generated.
		indexing
			external_name: "CreateAssemblyFolder"
		require
			non_void_eiffel_assembly: eiffel_assembly /= Void
			non_void_eiffel_cluster_path: eiffel_assembly.eiffelclusterpath /= Void
			not_empty_eiffel_cluster_path: eiffel_assembly.eiffelclusterpath.length > 0		
		local
			i: INTEGER
			folder_names: SYSTEM_COLLECTIONS_ARRAYLIST
			a_folder_name: STRING
			folder_path: STRING
			path: STRING
			slash_index: INTEGER
			dir: SYSTEM_IO_DIRECTORY		
			info: SYSTEM_IO_DIRECTORYINFO
			path_exists: BOOLEAN
			added: INTEGER
		do
			create folder_names.make
			path := eiffel_assembly.eiffelclusterpath
			from
				slash_index := path.lastindexof ("\") 
			until
				path_exists or slash_index = -1
			loop
				added := folder_names.add (path.substring (slash_index + 1))
				path_exists := dir.exists (path.substring_int32_int32 (0, slash_index))
				path := path.substring_int32_int32 (0, slash_index)
				slash_index := path.lastindexof ("\") 
			end
			from
				i := folder_names.count - 1
			until
				i = - 1
			loop
				a_folder_name ?= folder_names.item (i)	
				if a_folder_name /= Void then
					folder_path := path.concat_string_string_string (path, "\", a_folder_name)
					info := dir.createdirectory (folder_path)
				end
				i := i - 1
			end
		ensure
			valid_path: valid_path
		end
		
	parents: SYSTEM_COLLECTIONS_HASHTABLE
			-- Class parents
			-- | Key: parent name
			-- | Value: inheritance clauses (ARRAY [SYSTEM_COLLECTIONS_ARRAYLIST [STRING]])
		indexing
			external_name: "Parents"
		end
		
	special_classes: ARRAY [STRING]
			-- Special classes 
			-- | ["ANY", "INTEGER", "INTEGER_64", "INTEGER_16", "INTEGER_8", "CHARACTER",  "DOUBLE", "REAL", "BOOLEAN"]
		indexing
			external_name: "SpecialClasses"
		end

	generate_inherit_clause is
			-- Generate inherit clause 
		indexing
			external_name: "GenerateInheritClause"
		require
			non_void_eiffel_class: eiffel_class /= Void
			non_void_class_name: eiffel_class.EiffelName /= Void
			not_empty_class_name: eiffel_class.EiffelName.Length > 0
		local			
			parents_names: SYSTEM_COLLECTIONS_ICOLLECTION
			enumerator: SYSTEM_COLLECTIONS_IENUMERATOR			
			a_parent: STRING
			inheritance_clauses: ARRAY [SYSTEM_COLLECTIONS_ARRAYLIST]
			rename_clauses: SYSTEM_COLLECTIONS_ARRAYLIST
			undefine_clauses: SYSTEM_COLLECTIONS_ARRAYLIST
			redefine_clauses: SYSTEM_COLLECTIONS_ARRAYLIST
			select_clauses: SYSTEM_COLLECTIONS_ARRAYLIST
			formatted_parents: ARRAY [STRING]
			i: INTEGER
		do
			parents := eiffel_class.Parents
			
			if parents.Count > 1 or has_any_rename or has_any_undefine or  has_any_redefine or (parents.Count = 1 and (not parents.Contains (Any_class))) then
				generated_code := generated_code.Concat_String_String (generated_code, Inherit_keyword)
				
				parents_names := parents.Keys
				enumerator := parents_names.GetEnumerator
				from
					create formatted_parents.make (parents.Count)
				until
					not enumerator.MoveNext
				loop
					a_parent ?= enumerator.Current_
					if a_parent /= Void then
						formatted_parents.put (i, a_parent)
					end
					i := i + 1
				end
				
				from
					i := formatted_parents.count - 1
				until
					i = -1
				loop
					a_parent := formatted_parents.item (i)
					if a_parent /= Void then
						if (not a_parent.Equals_String (Any_class)) or has_any_rename or has_any_redefine or has_any_undefine then
							generated_code := generated_code.Concat_String_String_String_String (generated_code, New_line, Tab, a_parent)
						end
					end
					
					inheritance_clauses ?= parents.Item (a_parent)
					if inheritance_clauses /= Void then
						-- rename clauses
						if inheritance_clauses.Item (0).Count > 0 then
							generated_code := generated_code.Concat_String_String_String_String (generated_code, New_line, Tab, Tab)
							generated_code := generated_code.Concat_String_String (generated_code, Rename_keyword)
							rename_clauses := inheritance_clauses.Item (0)					
							if rename_clauses /= Void and then rename_clauses.Count > 0 then
								generate_inheritance_clauses (rename_clauses)
							end
						end

							-- undefine clauses
						if inheritance_clauses.Item (1).Count > 0 then
							generated_code := generated_code.Concat_String_String_String_String (generated_code, New_line, Tab, Tab)
							generated_code := generated_code.Concat_String_String (generated_code, Undefine_keyword)						
							undefine_clauses := inheritance_clauses.Item (1)
							if undefine_clauses /= Void and then undefine_clauses.Count > 0 then
								generate_inheritance_clauses (undefine_clauses)
							end
						end

							-- redefine clauses
						if inheritance_clauses.Item (2).Count > 0 then
							generated_code := generated_code.Concat_String_String_String_String (generated_code, New_line, Tab, Tab)
							generated_code := generated_code.Concat_String_String (generated_code, Redefine_keyword)						
							redefine_clauses := inheritance_clauses.Item (2)
							if redefine_clauses /= Void and then redefine_clauses.Count > 0 then
								generate_inheritance_clauses (redefine_clauses)
							end
						end

							-- select clauses
						if inheritance_clauses.Item (3).Count > 0 then
							generated_code := generated_code.Concat_String_String_String_String (generated_code, New_line, Tab, Tab)
							generated_code := generated_code.Concat_String_String (generated_code, Select_keyword)						
							select_clauses := inheritance_clauses.Item (3)
							if select_clauses /= Void and then select_clauses.Count > 0 then
								generate_inheritance_clauses (select_clauses)
							end
						end
						
						-- Add `end' keyword at the end of inheritance clauses
						if inheritance_clauses.Item (0).Count > 0 or inheritance_clauses.Item (1).Count > 0 or inheritance_clauses.Item (2).Count > 0 or inheritance_clauses.Item (3).Count > 0 then
							generated_code := generated_code.Concat_String_String_String_String (generated_code, New_line, Tab, Tab)
							generated_code := generated_code.Concat_String_String (generated_code, End_keyword)
						end
					end
					i := i - 1
				end
				
				generated_code := generated_code.Concat_String_String_String (generated_code, New_line, New_line)
			end
		end
		
	generate_create_clause is
			-- Generate create clause.
			-- | Do not generate creation clause for deferred classes or expanded classes.
		indexing
			external_name: "GenerateCreateClause"
		require
			non_void_eiffel_class: eiffel_class /= Void
			non_void_class_name: eiffel_class.EiffelName /= Void
			not_empty_class_name: eiffel_class.EiffelName.Length > 0
		local	
			creation_routines: SYSTEM_COLLECTIONS_ARRAYLIST
			i: INTEGER
			a_routine: STRING
			a_feature: ISE_REFLECTION_EIFFELFEATURE
			initialization_features: SYSTEM_COLLECTIONS_ARRAYLIST
		do
			creation_routines := eiffel_class.CreationRoutines
			
			create special_classes.make (9)
			special_classes.put (0, Any_class)
			special_classes.put (1, Integer_class)
			special_classes.put (2, Integer_64_class)
			special_classes.put (3, Integer_16_class)
			special_classes.put (4, Integer_8_class)
			special_classes.put (5, Character_class)
			special_classes.put (6, Double_class)
			special_classes.put (7, Real_class)
			special_classes.put (8, Boolean_class)

			if eiffel_class.CreationRoutines.Count > 0 and not eiffel_class.IsDeferred and not is_special_class then			
					-- Do not generate creation clause for expanded classes
				if not eiffel_class.IsExpanded then
					generated_code := generated_code.Concat_String_String (generated_code, Create_keyword) 
					from
						i := 0
					until
						i = creation_routines.Count
					loop
						a_routine ?= creation_routines.Item (i)
						if a_routine /= Void and then a_routine.Length > 0 then
							generated_code := generated_code.Concat_String_String_String_String (generated_code, New_line, Tab, a_routine)
							if i < (creation_routines.Count - 1) then
								generated_code := generated_code.Concat_String_String (generated_code, Comma)
							end
						end
						i := i + 1
					end
				end				
			elseif eiffel_class.CreationRoutines.Count = 0 and not eiffel_class.IsDeferred and not eiffel_class.IsExpanded then--and eiffel_class.CreateNone then
				generated_code := generated_code.Concat_String_String_String_String (generated_code, Create_none, New_line, New_line)
			end
			
			if eiffel_class.InitializationFeatures.Count > 0 and not eiffel_class.IsDeferred and not is_special_class then
					-- Generate initialization feature clause.
				generated_code := generated_code.Concat_String_String_String_String (generated_code, New_line, New_line, Initialization_feature_clause)
				generated_code := generated_code.Concat_String_String_String (generated_code, New_line, New_line)
				initialization_features := eiffel_class.InitializationFeatures
				from
					i := 0
				until
					i = initialization_features.Count
				loop
					a_feature ?= initialization_features.Item (i)
					if a_feature /= Void then
						generate_eiffel_feature (a_feature)
					end
					i := i + 1
				end			
			end
		end		

	generate_class_features is
			-- Generate class features, except initialization ones.
		indexing
			external_name: "GenerateClassFeatures"
		require
			non_void_eiffel_class: eiffel_class /= Void
			non_void_class_name: eiffel_class.EiffelName /= Void
			not_empty_class_name: eiffel_class.EiffelName.Length > 0
		local
			access_features: SYSTEM_COLLECTIONS_ARRAYLIST
			element_change_features: SYSTEM_COLLECTIONS_ARRAYLIST
			basic_operations_features: SYSTEM_COLLECTIONS_ARRAYLIST
			unary_operators_features: SYSTEM_COLLECTIONS_ARRAYLIST
			binary_operators_features: SYSTEM_COLLECTIONS_ARRAYLIST
			specials_features: SYSTEM_COLLECTIONS_ARRAYLIST
			implementation_features: SYSTEM_COLLECTIONS_ARRAYLIST
		do		
				-- Generate access feature clause.
			access_features := eiffel_class.AccessFeatures
			if access_features.Count > 0 then
				generated_code := generated_code.Concat_String_String_String_String (generated_code, Access_feature_clause, New_line, New_line)
				intern_generate_class_features (access_features)
			end	
				
				-- Generate element change feature clause.
			element_change_features := eiffel_class.ElementChangeFeatures
			if element_change_features.Count > 0 then
				generated_code := generated_code.Concat_String_String_String_String (generated_code, Element_change_feature_clause, New_line, New_line)
				intern_generate_class_features (element_change_features)
			end					

				-- Generate basic operations feature clause.
			basic_operations_features := eiffel_class.BasicOperations
			if basic_operations_features.Count > 0 then
				generated_code := generated_code.Concat_String_String_String_String (generated_code, Basic_operations_feature_clause, New_line, New_line)
				intern_generate_class_features (basic_operations_features)
			end	

				-- Generate unary operators feature clause.
			unary_operators_features := eiffel_class.UnaryOperatorsFeatures
			if unary_operators_features.Count > 0 then
				generated_code := generated_code.Concat_String_String_String_String (generated_code, Unary_operators_feature_clause, New_line, New_line)
				intern_generate_class_features (unary_operators_features)
			end	

				-- Generate binary operators feature clause.
			binary_operators_features := eiffel_class.BinaryOperatorsFeatures
			if binary_operators_features.Count > 0 then
				generated_code := generated_code.Concat_String_String_String_String (generated_code, Binary_operators_feature_clause, New_line, New_line)
				intern_generate_class_features (binary_operators_features)
			end	

				-- Generate specials feature clause.
			specials_features := eiffel_class.SpecialFeatures
			if specials_features.Count > 0 then
				generated_code := generated_code.Concat_String_String_String_String (generated_code, Specials_feature_clause, New_line, New_line)
				intern_generate_class_features (specials_features)
			end	

				-- Generate implementation feature clause.
			implementation_features := eiffel_class.ImplementationFeatures
			if implementation_features.Count > 0 then
				generated_code := generated_code.Concat_String_String_String_String (generated_code, Implementation_feature_clause, New_line, New_line)
				intern_generate_class_features (implementation_features)
			end
		end

	generate_inheritance_clauses (clauses: SYSTEM_COLLECTIONS_ARRAYLIST) is
			-- Generate inheritance clauses from `clauses'.
			-- | clauses: SYSTEM_COLLECTIONS_ARRAYLIST [ISE_REFLECTION_INHERITANCECLAUSE]
		indexing
			external_name: "GenerateInheritanceClauses"
		require
			non_void_clauses: clauses /= Void
			not_empty_clauses: clauses.Count > 0
		local
			i: INTEGER
			a_clause: ISE_REFLECTION_INHERITANCECLAUSE
		do
			from
			until
				i = clauses.Count
			loop
				a_clause ?= clauses.Item (i)
				if a_clause /= Void then
					generated_code := generated_code.Concat_String_String_String_String (generated_code, New_line, Tab, Tab) 
					generated_code := generated_code.Concat_String_String_String (generated_code, Tab, a_clause.tostring) 
					if i < (clauses.Count - 1) then
						generated_code := generated_code.Concat_String_String (generated_code, Comma)
					end
				end
				i := i + 1
			end
		end
		
	is_special_class: BOOLEAN is
			-- Is class to be generated a special class?
		indexing
			external_name: "IsSpecialClass"
		require
			non_void_special_classes: special_classes /= Void
		local
			i: INTEGER
		do
			from
			until
				i = special_classes.Count or Result
			loop
				Result := eiffel_class.EiffelName.Equals_String (special_classes.item (i))
				i := i + 1
			end
		end

	intern_generate_class_features (a_list: SYSTEM_COLLECTIONS_ARRAYLIST) is
			-- Generate class features from `a_list'.
			-- | Call in loop `generate_eiffel_feature'.
		indexing
			external_name: "InternGenerateClassFeatures"
		local
			i: INTEGER
			a_feature: ISE_REFLECTION_EIFFELFEATURE
		do
			from
			until
				i = a_list.Count
			loop
				a_feature ?= a_list.Item (i)
				if a_feature /= Void and then (a_feature.EiffelName /= Void and a_feature.EiffelName.Length > 0) then
					generate_eiffel_feature (a_feature)
				end
				i := i + 1
			end		
		end
	
	generate_eiffel_feature (a_feature: ISE_REFLECTION_EIFFELFEATURE) is
			-- Generate Eiffel feature from `a_feature'.
		indexing
			external_name: "GenerateEiffelFeature"
		require
			non_void_feature: a_feature /= Void
			non_void_feature_name: a_feature.EiffelName /= Void
			not_empty_feature_name: a_feature.EiffelName.Length > 0
		local
			is_binary_operator: BOOLEAN
			is_unary_operator: BOOLEAN
			unary_operator: STRING
			binary_operator: STRING
			arguments: SYSTEM_COLLECTIONS_ARRAYLIST
			i: INTEGER
			an_argument: ISE_REFLECTION_NAMEDSIGNATURETYPE
			argument_name: STRING
			argument_type: STRING
			comments: SYSTEM_COLLECTIONS_ARRAYLIST
			a_comment: STRING
			preconditions: SYSTEM_COLLECTIONS_ARRAYLIST
			postconditions: SYSTEM_COLLECTIONS_ARRAYLIST
		do
			is_binary_operator := eiffel_class.BinaryOperatorsFeatures.Contains (a_feature)
			is_unary_operator := eiffel_class.UnaryOperatorsFeatures.Contains (a_feature)	
			
			generated_code := generated_code.Concat_String_String (generated_code, Tab)
			
				-- frozen
			if a_feature.IsFrozen then
				generated_code := generated_code.Concat_String_String_String (generated_code, Frozen_keyword, Space)
			end
				
				-- feature name
			if is_unary_operator and a_feature.IsPrefix then
				generated_code := generated_code.Concat_String_String_String_String (generated_code, Prefix_keyword, Space, a_feature.EiffelName)
			else
				--if is_binary_operator and a_feature.IsInfix then
				if a_feature.IsInfix then
					generated_code := generated_code.Concat_String_String_String_String (generated_code, Infix_keyword, Space, a_feature.EiffelName)
				else
					generated_code := generated_code.Concat_String_String (generated_code, a_feature.EiffelName)
				end
			end
			
				-- feature arguments
			arguments := a_feature.Arguments
			if not is_unary_operator and arguments.Count > 0 then
				generated_code := generated_code.Concat_String_String_String (generated_code, Space, Opening_round_bracket)
				from
					 i := 0
				until
					i = arguments.Count 
				loop
					an_argument ?= arguments.Item (i)
					if an_argument /= Void then
						argument_name := an_argument.eiffelname
						argument_type := an_argument.typeeiffelname
					end
					generated_code := generated_code.Concat_String_String_String_String (generated_code, argument_name, Colon, Space)
					generated_code := generated_code.Concat_String_String (generated_code, argument_type)
					if i < (arguments.Count - 1) then
						generated_code := generated_code.Concat_String_String_String (generated_code, Semi_colon, Space)						
					end
					i := i + 1
				end
				generated_code := generated_code.Concat_String_String (generated_code, Closing_round_bracket)
			end
		
				-- feature return type
			if a_feature.IsMethod and then a_feature.ReturnType /= Void and then a_feature.ReturnType.TypeEiffelName /= Void then
				generated_code := generated_code.Concat_String_String_String_String (generated_code, Colon, Space, a_feature.ReturnType.TypeEiffelName)
			end
			if a_feature.IsField and not a_feature.EiffelName.StartsWith (Property_set_prefix) then
				generated_code := generated_code.Concat_String_String_String_String (generated_code, Colon, Space, a_feature.ReturnType.TypeEiffelName)
			end

				-- `is' keyword
			generated_code := generated_code.Concat_String_String_String (generated_code, Space, Is_keyword)

				-- feature comments
			comments := a_feature.Comments
			from
				i := 0
			until
				i = comments.Count
			loop
				a_comment ?= comments.Item (i)
				if a_comment /= Void and then a_comment.Length > 0 then
					generated_code := generated_code.Concat_String_String_String_String (generated_code, New_line, Tab, Tab)
					generated_code := generated_code.Concat_String_String_String (generated_code, Tab, Dashes)
					--generated_code := generated_code.Concat_String_String_String_String (generated_code, Tab, Dashes, Space)
					--generated_code := generated_code.Concat_String_String (generated_code, a_comment)
				end
				i := i + 1
			end
			
				-- feature preconditions
			preconditions := a_feature.Preconditions
			if preconditions.Count > 0 then
				generate_feature_assertions (preconditions, Require_keyword)
			end
				
				-- `external' keyword
			generated_code := generated_code.Concat_String_String_String_String (generated_code, New_line, Tab, Tab)
			generated_code := generated_code.Concat_String_String_String_String (generated_code, External_keyword, New_line, Tab)
			generated_code := generated_code.Concat_String_String_String (generated_code, Tab, Tab)
			generate_external_clause (a_feature)

				-- feature alias
			if a_feature.IsMethod or a_feature.IsField then
				generated_code := generated_code.Concat_String_String_String_String (generated_code, New_line, Tab, Tab)
				generated_code := generated_code.Concat_String_String (generated_code, Alias_keyword)

				generated_code := generated_code.Concat_String_String_String_String (generated_code, New_line, Tab, Tab)
				generated_code := generated_code.Concat_String_String_String_String (generated_code, Tab, Inverted_comma, a_feature.ExternalName)
				generated_code := generated_code.Concat_String_String (generated_code, Inverted_comma)
			end

				-- feature postconditions
			postconditions := a_feature.Postconditions
			if postconditions.Count > 0 then
				generate_feature_assertions (postconditions, Ensure_keyword)
			end

--##TEMPORARY			
			if a_feature.postcondition then
				generated_code := generated_code.Concat_String_String_String_String (generated_code, New_line, Tab, Tab)
				generated_code := generated_code.Concat_String_String_String (generated_code, Tab, Dashes)
			end
--##

				-- `end' keyword
			generated_code := generated_code.Concat_String_String_String_String (generated_code, New_line, Tab,Tab)
			generated_code := generated_code.Concat_String_String_String_String (generated_code, End_keyword, New_line, New_line)
		end	

	generate_feature_assertions (assertions: SYSTEM_COLLECTIONS_ARRAYLIST; keyword: STRING) is
			-- Generate feature assertions from `assertions' (include `keyword').
		indexing
			external_name: "GenerateFeatureAssertions"
		require
			non_void_assertions: assertions /= Void
			not_empty_assertions: assertions.Count > 0
			non_void_keyword: keyword /= Void
			valid_keyword: keyword.Equals_String (Require_keyword) or keyword.Equals_String (Ensure_keyword)
		local
			i: INTEGER
			an_assertion: ARRAY [STRING]
			an_assertion_tag: STRING
			an_assertion_text: STRING
		do
			from
			until
				i = assertions.Count
			loop
				an_assertion ?= assertions.Item (i)
				if an_assertion /= Void and then an_assertion.Count >= 1 then
					if i = 0 then
						generated_code := generated_code.Concat_String_String_String_String (generated_code, New_line, Tab, Tab)
						generated_code := generated_code.Concat_String_String (generated_code, keyword)
					end
					an_assertion_tag := an_assertion.Item (0)
					an_assertion_text := an_assertion.Item (1)
					generated_code := generated_code.Concat_String_String_String_String (generated_code, New_line, Tab, Tab)
					generated_code := generated_code.Concat_String_String (generated_code, Tab)
					if an_assertion_tag /= Void and then an_assertion_tag.Length > 0 then
						generated_code := generated_code.Concat_String_String_String_String (generated_code, an_assertion_tag, Colon, Space)
					end
					generated_code := generated_code.Concat_String_String_String (generated_code, an_assertion_text, New_line)
				end
				i := i + 1
			end			
		end
	
	generate_external_clause (a_feature: ISE_REFLECTION_EIFFELFEATURE) is
			-- Generate `a_feature' external clause.
		indexing
			external_name: "GenerateExternalClause"
		require
			non_void_feature: a_feature /= Void
			non_void_feature_name: a_feature.EiffelName /= Void
			not_empty_feature_name: a_feature.EiffelName.Length > 0
		local
			signature: STRING
			is_binary_operator: BOOLEAN
			is_unary_operator: BOOLEAN
			formatter: FORMATTER
		do
			create formatter.make_formatter
			signature := feature_signature (a_feature)
			is_binary_operator := eiffel_class.BinaryOperatorsFeatures.Contains (a_feature)
			is_unary_operator := eiffel_class.UnaryOperatorsFeatures.Contains (a_feature)	
			
			if a_feature.IsMethod then
				if is_unary_operator or is_binary_operator then
						-- "IL operator `signature' use `alias' "
					generated_code := generated_code.Concat_String_String_String_String (generated_code, Inverted_comma, IL, Space)
					generated_code := generated_code.Concat_String_String_String_String (generated_code, Operator, signature, Use)
					generated_code := generated_code.Concat_String_String_String_String (generated_code, Space, formatter.FormatStrongName (eiffel_class.FullExternalName), Inverted_comma)
				else
					if a_feature.IsStatic then
							-- "IL static `signature' use `alias' "
						generated_code := generated_code.Concat_String_String_String_String (generated_code, Inverted_comma, IL, Space)
						generated_code := generated_code.Concat_String_String_String_String (generated_code, Static, signature, Use)
						generated_code := generated_code.Concat_String_String_String_String (generated_code, Space, formatter.FormatStrongName (eiffel_class.FullExternalName), Inverted_comma)
					else
						if a_feature.IsAbstract then
								-- "IL deferred `signature' use `alias' "
							generated_code := generated_code.Concat_String_String_String_String (generated_code, Inverted_comma, IL, Space)
							generated_code := generated_code.Concat_String_String_String_String (generated_code, Deferred_keyword, signature, Use)
							generated_code := generated_code.Concat_String_String_String_String (generated_code, Space, formatter.FormatStrongName (eiffel_class.FullExternalName), Inverted_comma)
						else
								-- "IL `signature' use `alias' "
							generated_code := generated_code.Concat_String_String_String_String (generated_code, Inverted_comma, IL, signature)
							generated_code := generated_code.Concat_String_String_String_String (generated_code, Use, Space, formatter.FormatStrongName (eiffel_class.FullExternalName))
							generated_code := generated_code.Concat_String_String (generated_code, Inverted_comma)
						end	
					end
				end
			else
				if a_feature.IsField then
					if a_feature.IsStatic then
							-- "IL static_field signature : `type_full_name' use `alias'.
						generated_code := generated_code.Concat_String_String_String_String (generated_code, Inverted_comma, IL, Space)
						generated_code := generated_code.Concat_String_String_String_String (generated_code, Static_field, Space, Signature_keyword)
						generated_code := generated_code.Concat_String_String_String_String (generated_code, Space, Colon, a_feature.ReturnType.TypeFullExternalName)				
						generated_code := generated_code.Concat_String_String_String_String (generated_code, Space, Use, Space)
						generated_code := generated_code.Concat_String_String_String (generated_code, formatter.FormatStrongName (eiffel_class.FullExternalName), Inverted_comma)
					else
							-- "IL field signature : `type_full_name' use `alias'.
						generated_code := generated_code.Concat_String_String_String_String (generated_code, Inverted_comma, IL, Space)
						generated_code := generated_code.Concat_String_String_String_String (generated_code, Field, Space, Signature_keyword)
						generated_code := generated_code.Concat_String_String_String_String (generated_code, Space, Colon, a_feature.ReturnType.TypeFullExternalName)				
						generated_code := generated_code.Concat_String_String_String_String (generated_code, Space, Use, Space)
						generated_code := generated_code.Concat_String_String_String (generated_code, formatter.FormatStrongName (eiffel_class.FullExternalName), Inverted_comma)
					end
				else
						-- "IL creator `signature' use `alias' "
					generated_code := generated_code.Concat_String_String_String_String (generated_code, Inverted_comma, IL, Space)
					generated_code := generated_code.Concat_String_String_String_String (generated_code, Creator, signature, Use)
					generated_code := generated_code.Concat_String_String_String_String (generated_code, Space, formatter.FormatStrongName (eiffel_class.FullExternalName), Inverted_comma)
				end
			end		
		end

	feature_signature (a_feature: ISE_REFLECTION_EIFFELFEATURE): STRING is
			-- Dot net assembly qualified signature of `a_feature'.
		indexing
			external_name: "FeatureSignature"
		require
			non_void_feature: a_feature /= Void
			non_void_feature_name: a_feature.EiffelName /= Void
			not_empty_feature_name: a_feature.EiffelName.Length > 0	
		local
			is_unary_operator: BOOLEAN
			is_binary_operator: BOOLEAN
			arguments: SYSTEM_COLLECTIONS_ARRAYLIST
			i: INTEGER
			an_argument: ISE_REFLECTION_NAMEDSIGNATURETYPE
			temp: STRING			
		do
			create Result.make_2 ('%U', 0)
			
			is_binary_operator := eiffel_class.BinaryOperatorsFeatures.Contains (a_feature)
			is_unary_operator := eiffel_class.UnaryOperatorsFeatures.Contains (a_feature)

			if a_feature.IsMethod then
				arguments := a_feature.Arguments
				if not is_unary_operator or arguments.Count > 0 then
					Result := Space
					Result := Result.Concat_String_String_String_String (Result, Signature_keyword, Space, Opening_round_bracket)
					from
						i := 0
					until
						i = arguments.Count
					loop
						an_argument ?= arguments.Item (i)
						if an_argument /= Void then
							if an_argument.IsEnum then
								Result := Result.concat_string_string_string (Result, Enum_keyword, Space)
							end
							Result := Result.Concat_String_String (Result, an_argument.TypeFullExternalName)
							if i < arguments.Count - 1 then
								Result := Result.Concat_String_String_String (Result, Comma, Space)
							end
						end
						i := i + 1
					end
					Result := Result.Concat_String_String_String_String (Result, Closing_round_bracket, Colon, Space)
					create temp.make_2 ('%U', 0)
				else
					temp := Signature_keyword
					temp := temp.Concat_String_String_String_String (temp, Space, Colon, Space)
				end
				
				if a_feature.ReturnType /= Void and then a_feature.ReturnType.IsEnum then
					temp := temp.concat_string_string_string (Enum_keyword, Space, temp)
				end
				if a_feature.ReturnType /= Void and then a_feature.ReturnType.TypeFullExternalName /= Void and then a_feature.ReturnType.TypeFullExternalName.length > 0 then
					Result := Result.Concat_String_String_String (Result, temp, a_feature.ReturnType.TypeFullExternalName)
				end
				Result := Result.Concat_String_String (Result, Space)
			end
			
			if not a_feature.IsMethod and not a_feature.IsField then
				arguments := a_feature.Arguments
				if arguments.Count > 0 then
					Result := Space
					Result := Result.Concat_String_String_String_String (Result, Signature_keyword, Space, Opening_round_bracket)
					from
						i := 0
					until
						i = arguments.Count
					loop
						an_argument ?= arguments.Item (i)
						if an_argument /= Void then
							if an_argument.IsEnum then
								Result := Result.concat_string_string_string (Result, Enum_keyword, Space)
							end
							Result := Result.Concat_String_String (Result, an_argument.TypeFullExternalName)
						end
						if i < arguments.Count - 1 then
							Result := Result.Concat_String_String_String (Result, Comma, Space)
						end
						i := i + 1
					end
					Result := Result.Concat_String_String (Result, Closing_round_bracket)
				end
				Result := Result.Concat_String_String (Result, Space)
			end
		ensure
			signature_built: Result /= Void
		end
	
	has_any_rename: BOOLEAN is
			-- Does class have rename clauses for parent `ANY'?
		indexing
			external_name: "HasAnyRename"
		require
			non_void_parents: parents /= Void
		local
			inheritance_clauses: ARRAY [SYSTEM_COLLECTIONS_ARRAYLIST]
		do
			if parents.ContainsKey (Any_class) then
				inheritance_clauses ?= parents.Item (Any_class)
				if inheritance_clauses /= Void then
					Result := inheritance_clauses.item (0).Count > 0
				end
			else
				Result := False
			end
		end

	has_any_undefine: BOOLEAN is
			-- Does class have undefine clauses for parent `ANY'?
		indexing
			external_name: "HasAnyUndefine"
		require
			non_void_parents: parents /= Void
		local
			inheritance_clauses: ARRAY [SYSTEM_COLLECTIONS_ARRAYLIST]
		do
			if parents.ContainsKey (Any_class) then
				inheritance_clauses ?= parents.Item (Any_class)
				if inheritance_clauses /= Void then
					Result := inheritance_clauses.item (1).Count > 0
				end
			else
				Result := False
			end
		end

	has_any_redefine: BOOLEAN is
			-- Does class have redefine clauses for parent `ANY'?
		indexing
			external_name: "HasAnyRedefine"
		require
			non_void_parents: parents /= Void
		local
			inheritance_clauses: ARRAY [SYSTEM_COLLECTIONS_ARRAYLIST]
		do
			if parents.ContainsKey (Any_class) then
				inheritance_clauses ?= parents.Item (Any_class)
				if inheritance_clauses /= Void then
					Result := inheritance_clauses.item (2).Count > 0
				end
			else
				Result := False
			end
		end
	
end -- class EIFFEL_CODE_GENERATOR
