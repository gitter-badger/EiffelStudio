using System;
using System.Collections;
using System.Reflection;
using System.Reflection.Emit;
using System.IO;
using ISE.Reflection;
using System.Runtime.InteropServices;

[ClassInterfaceAttribute (ClassInterfaceType.AutoDual)]

public class EiffelClassGenerator: Globals
{
	// Initialize instance
	public EiffelClassGenerator()
	{
	}


/*
 * When the emitter is used as an executable file
 */
	// Generate Eiffel code an Xml files in `Pathname' corresponding to assembly in `Filename'.
	// Filename: Name of file to be analyzed
	// Pathname: Path to folder where Eiffel code should be generated
	virtual internal void Emit( String FileName, String PathName )
	{
		Assembly assembly;
		String Path;
		ArrayList Dependencies;
		int i;
		
		assembly = Assembly.LoadFrom( FileName );
		if( PathName == null )
		{
			Path = Environment.CurrentDirectory;
			EmitFromAssembly( assembly, Path );
		}
		else
		{
			if( PathName.Length == 0 )
			{
				Path = Environment.CurrentDirectory;
				EmitFromAssembly( assembly, Path );
			}
			else
				EmitFromAssembly( assembly, PathName );
		}
		Done = new ArrayList();
		Dependencies = LoadExternalAssemblies( assembly );
		for( i = 0; i < Dependencies.Count; i ++ )
			ImportAssemblyWithoutDependancies( ( Assembly )Dependencies [i], PathName, NameFormatter.EiffelFormatting );
	}	
	
	
/*
 * When the emitter is used as a .NET assembly from ISE assembly manager
 */
 
	// Import `assembly' without any dependancies.
	virtual public void ImportAssemblyWithDependancies( Assembly assembly, String PathName, bool EiffelFormatting )
	{
		ArrayList Dependencies;
		int i;
		
		ImportAssemblyWithoutDependancies( assembly, PathName, EiffelFormatting );
		Done = new ArrayList();
		Dependencies = LoadExternalAssemblies( assembly );
		for( i = 0; i < Dependencies.Count; i ++ )
			ImportAssemblyWithoutDependancies( ( Assembly )Dependencies [i], PathName, EiffelFormatting );
	}
	
	// Import `assembly' without any dependancies.
	virtual public void ImportAssemblyWithoutDependancies( Assembly assembly, String PathName, bool EiffelFormatting )
	{
		Emitter emitter;
		String Path;
		
		if( !IsAssemblyImported( assembly ) || XmlGeneration ) 
		{
			emitter = new Emitter();
			Emitter.NameFormatter.EiffelFormatting = EiffelFormatting;
			emitter.PrepareEmitFromAssembly( assembly );		

			if( PathName == null )
			{
				Path = Environment.CurrentDirectory;
				EmitFromAssembly( assembly, Path );
			}
			else
			{
				if( PathName.Length == 0 )
				{
					Path = Environment.CurrentDirectory;
					EmitFromAssembly( assembly, Path );
				}
				else
					EmitFromAssembly( assembly, PathName );
			}
		}
	}


/*
 * Implementation
 */
 
	// Generate Eiffel code an Xml files for `assembly'.
	virtual protected void EmitFromAssembly( Assembly assembly, String PathName )
	{	
		if( !IsAssemblyImported( assembly ) )
		{
			if( XmlGeneration )
				EmitXmlFiles( assembly, PathName );
			EmitEiffelClasses( assembly, PathName );
		}
		else
		{
			if( XmlGeneration )
				EmitEiffelClassesFromXml( assembly, null );
		}
	}		

	// Has `assembly' already been imported to the Eiffel assembly cache?
	virtual public bool IsAssemblyImported( Assembly assembly )
	{
		AssemblyName assemblyName;
		ConversionSupport convert;
		AssemblyDescriptor assemblyDescriptor;
		ReflectionInterface reflectionInterface;
		
		assemblyName = assembly.GetName();
		convert = new ConversionSupport();
		assemblyDescriptor = convert.AssemblyDescriptorFromName( assemblyName );
		reflectionInterface = new ReflectionInterface();
		reflectionInterface.MakeReflectionInterface();
		reflectionInterface.Search( assemblyDescriptor );
		if( reflectionInterface.Found )
			EiffelAssemblyFound = reflectionInterface.SearchResult;
		else
			EiffelAssemblyFound = null;
		return( reflectionInterface.Found );		
	}
	
	// Is path to Eiffel sources of assembly `EiffelAssemblyFound' valid?
	virtual protected bool IsEiffelPathValid()
	{
		if( EiffelAssemblyFound == null )
			return false;
		else
		{
			if( EiffelAssemblyFound.EiffelClusterPath == null )
				return false;
			else
				return( Directory.Exists( EiffelAssemblyFound.EiffelClusterPath ) );
		}
	}
	
	// Generate Xml files for assemblies in `Dependancies' and set `EiffelClusterPath' of EiffelAssembly generated with `PathName'.
	// PathName: Path to folder where Eiffel code will be generated.
	virtual protected void EmitXmlFiles( Assembly assembly, String PathName )
	{	
		Module [] Modules;
		Type [] types;
		int  i, j, typesLength;
		EiffelClass GeneratedEiffelClass;
		EiffelAssemblyFactory AssemblyFactory = null;
		XmlCodeGenerator XmlGenerator = null;
		EiffelClassFactory ClassFactory;
		bool EiffelAssemblyGenerated = false;
		AssemblyDescriptor Descriptor = null;
		
		XmlGenerator = new XmlCodeGenerator();
		XmlGenerator.MakeXmlCodeGenerator();
		Descriptor = new AssemblyDescriptor();
	
		Modules = assembly.GetModules();
		EiffelAssemblyGenerated = false;
		for( i = 0; i < Modules.Length; i++ )
		{
			types = Modules [i].GetTypes();
			typesLength = types.Length;

			for( j = 0; j < typesLength; j++ )
			{				
				if( ClassIDTable [types [j]] != null )
				{	
					if( !EiffelAssemblyGenerated )
					{
						AssemblyFactory = GeneratedAssemblyFactory( types [j] );
						AssemblyFactory.SetEiffelClusterPath( EiffelPath( assembly, PathName ) );
						Descriptor.Make( AssemblyFactory.AssemblyName, AssemblyFactory.AssemblyVersion, AssemblyFactory.AssemblyCulture, AssemblyFactory.AssemblyPublicKey );
						XmlGenerator.StartAssemblyGeneration( AssemblyFactory );
						EiffelAssemblyGenerated = true;
					}
					ClassFactory = ( EiffelClassFactory )ClassTable [( int )ClassIDTable [types [j]]];
					GeneratedEiffelClass = GeneratedClass( ClassFactory );
					GeneratedEiffelClass.SetAssemblyDescriptor( Descriptor );
					AssemblyFactory.AddType( GeneratedEiffelClass );
					XmlGenerator.GenerateType( GeneratedEiffelClass );	
				}						
			}
		}
		if( EiffelAssemblyGenerated )
			XmlGenerator.EndAssemblyGeneration();
	}
	
	// Generate Eiffel code in `Pathname' corresponding to assemblies in `Dependancies'.
	// Pathname: Path to folder where Eiffel code should be generated	
	virtual protected void EmitEiffelClasses( Assembly assembly, String PathName )
	{	
		Module [] Modules;
		Type [] types;
		int  i, j, typesLength;
		EiffelClass GeneratedEiffelClass;
		EiffelAssemblyFactory AssemblyFactory = null;
		EiffelAssembly GeneratedAssembly = null;
		EiffelCodeGenerator EiffelGenerator = null;
		EiffelClassFactory ClassFactory;
		bool EiffelAssemblyGenerated = false;
		AssemblyDescriptor Descriptor = null;
		
		EiffelGenerator = new EiffelCodeGenerator();
		Descriptor = new AssemblyDescriptor();

		Modules = assembly.GetModules();
		EiffelAssemblyGenerated = false;

		for( i = 0; i < Modules.Length; i++ )
		{
			types = Modules [i].GetTypes();
			typesLength = types.Length;

			for( j = 0; j < typesLength; j++ )
			{				
				if( ClassIDTable [types [j]] != null )
				{	
					if( !EiffelAssemblyGenerated )
					{
						AssemblyFactory = GeneratedAssemblyFactory( types [j] );
						AssemblyFactory.SetEiffelClusterPath( EiffelPath( assembly, PathName ) );
						Descriptor.Make( AssemblyFactory.AssemblyName, AssemblyFactory.AssemblyVersion, AssemblyFactory.AssemblyCulture, AssemblyFactory.AssemblyPublicKey );
						GeneratedAssembly = new EiffelAssembly();
						GeneratedAssembly.Make( Descriptor, AssemblyFactory.EiffelClusterPath, AssemblyFactory.EmitterVersionNumber );
						EiffelGenerator.MakeFromInfo( GeneratedAssembly );
						EiffelAssemblyGenerated = true;
					}
					ClassFactory = ( EiffelClassFactory )ClassTable [( int )ClassIDTable [types [j]]];
					GeneratedEiffelClass = GeneratedClass( ClassFactory );	
					GeneratedEiffelClass.SetAssemblyDescriptor( Descriptor );

					EiffelGenerator.GenerateEiffelClass( GeneratedEiffelClass );
				}
			}
		}
	}

	// `EiffelPath' from `assembly' and `PathName'.
	virtual protected String EiffelPath( Assembly assembly, String PathName )
	{
		String Path, aPath;
		ReflectionSupport reflectionSupport;
		ConversionSupport conversionSupport;
		AssemblyDescriptor aDescriptor;
		
		reflectionSupport = new ReflectionSupport();
		reflectionSupport.Make();
		conversionSupport = new ConversionSupport();

		Path = String.Concat( PathName, "\\", assembly.GetName().Name ).ToLower();
		if( Path.IndexOf( String.Concat( reflectionSupport.EiffelDeliveryPath(), "\\library.net" ) ) > -1 )
			Path = Path.Replace( reflectionSupport.EiffelDeliveryPath(), reflectionSupport.EiffelKey() );

		if( !Directory.Exists( Path ) )
			return( Path );
		else
		{
			aDescriptor = conversionSupport.AssemblyDescriptorFromName( assembly.GetName() );
			aPath = String.Concat( PathName, "\\", reflectionSupport.AssemblyFolderPathFromInfo( aDescriptor ) );
			return( aPath );
		}
	}
	
	// Generate Eiffel code from XML files corresponding to assemblies in `ImportedAssemblies'.
	// Pathname: Path to folder where Eiffel code should be generated	
	virtual protected void EmitEiffelClassesFromXml( Assembly assembly, String PathName )
	{			
		Module[] Modules;
		Type [] types;
		int i, j, typesLength;
		EiffelAssemblyFactory AssemblyFactory = null;
		EiffelCodeGeneratorFromXml EiffelGeneratorFromXml = null;	
		ReflectionSupport GenerationSupport = null;
		String XmlAssemblyFilename, XmlTypeFilename;
		AssemblyDescriptor Descriptor = null;
		bool EiffelAssemblyGenerated = false;
		
		EiffelGeneratorFromXml = new EiffelCodeGeneratorFromXml();
		GenerationSupport = new ReflectionSupport();
		GenerationSupport.Make();
		Descriptor = new AssemblyDescriptor();
	
		Modules = assembly.GetModules();
		EiffelAssemblyGenerated = false;

		for( i = 0; i < Modules.Length; i++ )
		{
			types = Modules [i].GetTypes();
			typesLength = types.Length;

			for( j = 0; j < typesLength; j++ )
			{				
				if( ClassIDTable [types [j]] != null )
				{	
					if( !EiffelAssemblyGenerated )
					{
						AssemblyFactory = GeneratedAssemblyFactory( types [j] );
						Descriptor.Make( AssemblyFactory.AssemblyName, AssemblyFactory.AssemblyVersion, AssemblyFactory.AssemblyCulture, AssemblyFactory.AssemblyPublicKey );
						XmlAssemblyFilename = GenerationSupport.XmlAssemblyFilename( Descriptor );
						XmlAssemblyFilename = XmlAssemblyFilename.Replace( GenerationSupport.EiffelKey(), GenerationSupport.EiffelDeliveryPath() );
						if( PathName != null )
						{
							if( PathName.Length > 0 )
								EiffelGeneratorFromXml.MakeFromInfoAndPath( XmlAssemblyFilename, PathName );
							else
								EiffelGeneratorFromXml.MakeFromInfo( XmlAssemblyFilename );
						}
						else
							EiffelGeneratorFromXml.MakeFromInfo( XmlAssemblyFilename );
						EiffelAssemblyGenerated = true;
					}
					XmlTypeFilename = GenerationSupport.XmlTypeFilename( Descriptor, types [j].FullName );
					XmlTypeFilename = XmlTypeFilename.Replace( GenerationSupport.EiffelKey(), GenerationSupport.EiffelDeliveryPath() );
					if( PathName != null )
					{
						if( PathName.Length > 0 )
							EiffelGeneratorFromXml.GenerateEiffelCodeFromXmlAndPath( XmlTypeFilename, PathName );
						else
							EiffelGeneratorFromXml.GenerateEiffelCodeFromXml( XmlTypeFilename );
					}
					else
						EiffelGeneratorFromXml.GenerateEiffelCodeFromXml( XmlTypeFilename );
				}
			}
		}
	}



/*
 * Generation of `EiffelClass' and `EiffelAssembly' from `ClassFactory'
 */
 
	// Generate instance of `EiffelClass' from `ClassFactory'.
	virtual protected EiffelClass GeneratedClass( EiffelClassFactory ClassFactory )
	{
		EiffelClass GeneratedEiffelClass;
		String Parent;
		RenameClause Rename;
		UndefineClause Undefine;
		RedefineClause Redefine;
		SelectClause Select;
		System.Collections.ArrayList NewRenameClauses, NewUndefineClauses, NewRedefineClauses, NewSelectClauses;
		int i, j, ClauseAdded;
				
		GeneratedEiffelClass = new EiffelClass();
		GeneratedEiffelClass.Make();
		GeneratedEiffelClass.SetFrozen( ClassFactory.IsSealed );
		GeneratedEiffelClass.SetExpanded( ClassFactory.IsExpanded );
		GeneratedEiffelClass.SetDeferred( ClassFactory.IsDeferred );
		GeneratedEiffelClass.SetEiffelName( ClassFactory.Name );
		GeneratedEiffelClass.SetExternalNames( ClassFactory.TypeName );
		if( ClassFactory.UnderlyingType.IsEnum )
		{
			GeneratedEiffelClass.SetEnumType( NameFormatter.FormatArgumentTypeName( Enum.GetUnderlyingType( ClassFactory.UnderlyingType) ) );
				// Remove non-needed feature for enum types 
			ClassFactory.AccessFeatures.Remove( EiffelClassFactory.EnumValueName );	
		}
			// Add parents
		if( ClassFactory.Parents.Count > 1 || ClassFactory.Renames.HasClause( "ANY" ) || ClassFactory.Redefines.HasClause( "ANY" ) || ClassFactory.Undefines.HasClause( "ANY") || (( ClassFactory.Parents.Count == 1 )&&( !(( EiffelClassFactory )ClassTable [ClassFactory.Parents [0]]).Name.Equals( "ANY" ))))
		{
			for( i = 0; i < ClassFactory.Parents.Count; i++ )
			{
				Parent = (( EiffelClassFactory )ClassTable [ClassFactory.Parents [ i ]]).Name;

				if( ClassFactory.Renames.HasClause( Parent ))
				{
					NewRenameClauses = new System.Collections.ArrayList();
					for( j = 0; j < ClassFactory.Renames.Count( Parent ); j++ )
					{
						Rename = new RenameClause();
						Rename.Make( ClassFactory.Renames.RenameClauseSource( Parent, j ) );
						Rename.SetTargetName( ClassFactory.Renames.RenameClauseTarget( Parent, j ) );
						ClauseAdded = NewRenameClauses.Add( Rename );						
						if( ClauseAdded != ( NewRenameClauses.Count - 1 ) )
							throw new ApplicationException( "rename clause not added" );
					}
					if( NewRenameClauses.Count != ClassFactory.Renames.Count( Parent ) ) 
						throw new ApplicationException("invalid rename clauses");
				}
				else
					NewRenameClauses = new System.Collections.ArrayList();

				if( ClassFactory.Undefines.HasClause( Parent ))
				{
					NewUndefineClauses = new System.Collections.ArrayList();
					for( j = 0; j < ClassFactory.Undefines.Count( Parent ); j++ )
					{
						Undefine = new UndefineClause();
						Undefine.Make( ClassFactory.Undefines.UndefineFeature( Parent, j ) );
						ClauseAdded = NewUndefineClauses.Add( Undefine );
						if( ClauseAdded != ( NewUndefineClauses.Count - 1 ) )
							throw new ApplicationException( "undefine clause not added" );
					}
					if( NewUndefineClauses.Count != ClassFactory.Undefines.Count( Parent ) ) 
						throw new ApplicationException("invalid rename clauses");
				}
				else
					NewUndefineClauses = new System.Collections.ArrayList();

				if( ClassFactory.Redefines.HasClause( Parent ))
				{
					NewRedefineClauses = new System.Collections.ArrayList();
					for( j = 0; j < ClassFactory.Redefines.Count( Parent ); j++ )
					{
						Redefine = new RedefineClause();
						Redefine.Make( ClassFactory.Redefines.RedefineFeature( Parent, j ) );
						ClauseAdded = NewRedefineClauses.Add( Redefine );
						if( ClauseAdded != ( NewRedefineClauses.Count - 1 ) )
							throw new ApplicationException( "redefine clause not added" );
					}
					if( NewRedefineClauses.Count != ClassFactory.Redefines.Count( Parent ) ) 
						throw new ApplicationException("invalid rename clauses");
				}
				else
					NewRedefineClauses = new System.Collections.ArrayList();

				if( ClassFactory.Selects.HasClause( Parent ))
				{
					NewSelectClauses = new System.Collections.ArrayList();
					for( j = 0; j < ClassFactory.Selects.Count( Parent ); j++ )
					{
						Select = new SelectClause();
						Select.Make( ClassFactory.Selects.SelectFeature( Parent, j ) );
						ClauseAdded = NewSelectClauses.Add( Select );
						if( ClauseAdded != ( NewSelectClauses.Count - 1 ) )
							throw new ApplicationException( "select clause not added" );
					}
					if( NewSelectClauses.Count != ClassFactory.Selects.Count( Parent ) ) 
						throw new ApplicationException("invalid select clauses");
				}
				else
					NewSelectClauses = new System.Collections.ArrayList();

				if( !Parent.Equals( "ANY" ) || ClassFactory.Renames.HasClause( "ANY" ) || ClassFactory.Redefines.HasClause( "ANY" ) || ClassFactory.Undefines.HasClause( "ANY"))
					GeneratedEiffelClass.AddParent( Parent, NewRenameClauses, NewUndefineClauses, NewRedefineClauses, NewSelectClauses, new System.Collections.ArrayList() );
			}
		}

		
			// Do not generate creation clause for deferred classes or expanded classes.
		if(( ClassFactory.CreationRoutines.Count > 0 )&&( !ClassFactory.IsDeferred )&&( !EiffelClassFactory.SpecialClasses.ContainsKey( ClassFactory.Name ) ) )
		{
			if (!ClassFactory.IsExpanded) 
			{
				foreach( String CreationRoutine in ClassFactory.CreationRoutines.Keys )
					GeneratedEiffelClass.AddCreationRoutine( CreationRoutine );				
			}
			foreach( String CreationRoutine in ClassFactory.CreationRoutines.Keys )
				GeneratedEiffelClass.AddInitializationFeature( GeneratedFeature( ClassFactory, CreationRoutine, ClassFactory.CreationRoutines ) );
			
			GeneratedEiffelClass.SetCreateNone( false );
		}
		else
		{		
			if(( ClassFactory.CreationRoutines.Count == 0 )&&( !ClassFactory.IsDeferred ))
				GeneratedEiffelClass.SetCreateNone( true );
			else
				GeneratedEiffelClass.SetCreateNone( false );
		}
				
			// Set class features
		if( ClassFactory.AccessFeatures.Count > 0 )
		{
			foreach( String AccessFeature in ClassFactory.AccessFeatures.Keys )
				GeneratedEiffelClass.AddAccessFeature( GeneratedFeature( ClassFactory, AccessFeature, ClassFactory.AccessFeatures ) );
		}

		if( ClassFactory.ElementChangeFeatures.Count > 0 )
		{
			foreach( String ElementChangeFeature in ClassFactory.ElementChangeFeatures.Keys )
					GeneratedEiffelClass.AddElementChangeFeature( GeneratedFeature( ClassFactory, ElementChangeFeature, ClassFactory.ElementChangeFeatures ) );
		}

		if( ClassFactory.BasicOperations.Count > 0 )
		{
			foreach( String BasicOperation in ClassFactory.BasicOperations.Keys )
				GeneratedEiffelClass.AddBasicOperation( GeneratedFeature( ClassFactory, BasicOperation, ClassFactory.BasicOperations ) );
		}
		else
		{
			if (
				( ClassFactory.UnderlyingType.IsEnum )&&
				( ClassFactory.UnderlyingType.GetCustomAttributes( typeof( FlagsAttribute ), false ).Length > 0 )
			)
				GeneratedEiffelClass.SetBitOrInfix();			
		}

		if( ClassFactory.UnaryOperatorsFeatures.Count > 0 )
		{
			foreach( String UnaryOperatorsFeature in ClassFactory.UnaryOperatorsFeatures.Keys )
				GeneratedEiffelClass.AddUnaryOperator( GeneratedFeature( ClassFactory, UnaryOperatorsFeature, ClassFactory.UnaryOperatorsFeatures ) );
		}

		if( ClassFactory.BinaryOperatorsFeatures.Count > 0 )
		{
			foreach( String BinaryOperatorsFeature in ClassFactory.BinaryOperatorsFeatures.Keys )
				GeneratedEiffelClass.AddBinaryOperator( GeneratedFeature( ClassFactory, BinaryOperatorsFeature, ClassFactory.BinaryOperatorsFeatures ) );
		}

		if( ClassFactory.SpecialFeatures.Count > 0 )
		{
			foreach( String SpecialFeature in ClassFactory.SpecialFeatures.Keys )
				GeneratedEiffelClass.AddSpecialFeature( GeneratedFeature( ClassFactory, SpecialFeature, ClassFactory.SpecialFeatures ) );
		}

		if( ClassFactory.ImplementationFeatures.Count > 0 )
		{
			foreach( String ImplementationFeature in ClassFactory.ImplementationFeatures.Keys )
				GeneratedEiffelClass.AddImplementationFeature( GeneratedFeature( ClassFactory, ImplementationFeature, ClassFactory.ImplementationFeatures ) );
		}
		
			// Should set class invariant if any.	
			
		return GeneratedEiffelClass;
	}	
	
	// Generate instance of EiffelFeature corresponding to `FeatureName' in table `FeatureTable'.
	virtual protected EiffelFeature GeneratedFeature( EiffelClassFactory ClassFactory, String FeatureName, System.Collections.Hashtable FeatureTable )
	{
		EiffelFeature GeneratedEiffelFeature;
		EiffelMethodFactory MethodFactory;
		EiffelCreationRoutine CreationRoutine;
		String ArgumentType, ArgumentTypeFullName;
		String returnName;
		SignatureType ReturnType;
		String ArgumentName, ArgumentExternalName;
		NamedSignatureType Argument;
		Type returnType;
		ConstructorInfo ConstructorDescriptor = null;
		MethodInfo MethodDescriptor = null;
		FieldInfo FieldDescriptor  = null;
		ParameterInfo[] Arguments = new ParameterInfo[] {};
		Boolean IsField, IsMethod, IsCreationRoutine;
		bool IsUnaryOperator = false;
		bool IsBinaryOperator = false;
		bool IsEnumLiteral = false;
		bool IsLiteral = false;
		String PrefixName, Prefix, InfixName, Infix;
		int PrefixIndex, InfixIndex;
		int i;

		GeneratedEiffelFeature = new EiffelFeature();
		GeneratedEiffelFeature.Make();
		
		IsMethod = typeof( EiffelMethodFactory ).IsInstanceOfType( FeatureTable [FeatureName]);
		GeneratedEiffelFeature.SetMethod( IsMethod );
		
		if( IsMethod )
		{
			IsBinaryOperator = BinaryOperators().ContainsKey((( EiffelMethodFactory )FeatureTable [FeatureName]).Info.Name );
			IsUnaryOperator = UnaryOperators().ContainsKey((( EiffelMethodFactory )FeatureTable [FeatureName]).Info.Name );
			MethodFactory = ( EiffelMethodFactory )FeatureTable [FeatureName];
			if( MethodFactory.NewSlot )
				GeneratedEiffelFeature.SetNewSlot();
			MethodDescriptor =( MethodInfo )(MethodFactory.Info);
			GeneratedEiffelFeature.SetStatic( MethodDescriptor.IsStatic );
			GeneratedEiffelFeature.SetAbstract( MethodDescriptor.IsAbstract );
			Arguments = MethodDescriptor.GetParameters();
		}
		IsField = FieldInfoType.IsInstanceOfType( FeatureTable [FeatureName]);
		GeneratedEiffelFeature.SetField( IsField );
		if( IsField )
		{
			FieldDescriptor =(( FieldInfo )FeatureTable [FeatureName]);
			IsLiteral = FieldDescriptor.IsLiteral;
			if( IsLiteral )
				GeneratedEiffelFeature.SetLiteral();
			IsEnumLiteral = IsLiteral  && ClassFactory.UnderlyingType.IsEnum;
			if( IsEnumLiteral )
				GeneratedEiffelFeature.SetEnumLiteral();
			if( FieldDescriptor.DeclaringType.AssemblyQualifiedName.ToLower().Equals( ClassFactory.UnderlyingType.AssemblyQualifiedName.ToLower() ) )
				GeneratedEiffelFeature.SetNewSlot();
			GeneratedEiffelFeature.SetStatic( FieldDescriptor.IsStatic );
			
			//ReturnType = new SignatureType();
			//ReturnType.SetTypeFullExternalName( NameFormatter.FormatStrongName( FieldDescriptor.FieldType.FullName ) );
			//GeneratedEiffelFeature.SetReturnType( ReturnType );
		}
		if( !IsMethod && !IsField )
		{
			GeneratedEiffelFeature.SetCreationRoutine( true );
			CreationRoutine = (( EiffelCreationRoutine )FeatureTable [FeatureName]);
			ConstructorDescriptor = ( ConstructorInfo )CreationRoutine.Info;
			Arguments = ConstructorDescriptor.GetParameters();
			if( Arguments == null )
				throw new ApplicationException( "Not a valid name for a routine: " + FeatureName + " in type " + ClassFactory.Name );
		}

		if(
			( IsMethod &&( MethodDescriptor.IsFinal || !MethodDescriptor.IsVirtual || MethodDescriptor.IsStatic )) ||
			( IsField ) || 
			( !IsMethod && !IsField )
        	)
				// Frozen Eiffel features correspond to:
				// 1 - a feature which is final or not virtual
				// 2 - a static feature
				// 3 - an attribute
				// 4 - a constructor
			GeneratedEiffelFeature.SetFrozen( true );
		else
			GeneratedEiffelFeature.SetFrozen( false );

		if( IsUnaryOperator && (( EiffelMethodFactory )FeatureTable [FeatureName]).Name() == MethodDescriptor.Name )
		{
			PrefixName = ( ( String )UnaryOperators() [MethodDescriptor.Name] ).Trim();
			Prefix = "prefix";
			PrefixIndex = PrefixName.IndexOf( Prefix );
			if( PrefixIndex > -1 )
			{
				GeneratedEiffelFeature.SetPrefix( true );
				PrefixName = PrefixName.Substring( PrefixIndex + Prefix.Length );
				GeneratedEiffelFeature.SetEiffelName( PrefixName );
			}
			else
				throw new ApplicationException( "invalid prefix name" );
		}
		else
		{
			if( IsBinaryOperator && (( EiffelMethodFactory )FeatureTable [FeatureName]).Name() == MethodDescriptor.Name )
			{
				InfixName = ( ( String )BinaryOperators() [MethodDescriptor.Name] ).Trim();
				Infix = "infix";
				InfixIndex = InfixName.IndexOf( Infix );
				if( InfixIndex > -1 )
				{
					GeneratedEiffelFeature.SetInfix( true );
					InfixName = InfixName.Substring( InfixIndex + Infix.Length );
					GeneratedEiffelFeature.SetEiffelName( InfixName );
				}				
			}
			else
				GeneratedEiffelFeature.SetEiffelName( FeatureName );	
		}

		if( !IsUnaryOperator &&( Arguments.Length > 0 ))
		{
			for( i = 0; i < Arguments.Length; i++ )
			{
				if( IsBinaryOperator )
					i = 1;
				
				ArgumentType = NameFormatter.FormatArgumentTypeName( Arguments[i].ParameterType );
				ArgumentTypeFullName = NameFormatter.FormatStrongName( Arguments [i].ParameterType.FullName );
				if( IsMethod )
				{
					MethodFactory = ( EiffelMethodFactory )FeatureTable [FeatureName];
					ArgumentName = ( String )( MethodFactory.ArgumentsNames [i] );
					ArgumentExternalName = Arguments [i].Name;
				}
				else
				{
				 	ArgumentName = "";
				 	ArgumentExternalName = "";
					if( !IsField && !IsMethod)
					{
						IsCreationRoutine = typeof( EiffelCreationRoutine ).IsInstanceOfType( FeatureTable [FeatureName] );
						GeneratedEiffelFeature.SetCreationRoutine( IsCreationRoutine );
						if( IsCreationRoutine )
						{
							CreationRoutine = ( EiffelCreationRoutine )FeatureTable [FeatureName];
							ArgumentName = ( String )( CreationRoutine.ArgumentsNames [i] );
							ArgumentExternalName = Arguments [i].Name;
						}
						else
						{
							ArgumentName = "";
							throw new ApplicationException( "Not a valid feature (neither a method, nor a field nor a creation routine): " + FeatureName + " in type " + ClassFactory.Name );
						}
					}
				
				}
					
				Argument = new NamedSignatureType();
				Argument.SetEiffelName( ArgumentName );
				Argument.SetExternalName( ArgumentExternalName );
				Argument.SetTypeEiffelName( ArgumentType );
				Argument.SetTypeFullExternalName( ArgumentTypeFullName );
				GeneratedEiffelFeature.AddArgument( Argument );
			}
		}
		else
		{
			if( IsUnaryOperator &&( Arguments.Length > 0 ) )
			{
				for( i = 0; i < Arguments.Length; i++ )
				{	
					Argument = new NamedSignatureType();
					Argument.SetTypeFullExternalName( NameFormatter.FormatStrongName( Arguments [i].ParameterType.FullName ) );
					GeneratedEiffelFeature.AddArgument( Argument );
				}
			}			
		}

		if( IsMethod )
		{
			returnType =( Type )MethodDescriptor.ReturnType;
			if( !returnType.Name.ToLower().Equals( "void" ))
			{
				returnName = NameFormatter.FormatArgumentTypeName( returnType );
				ReturnType = new SignatureType();
				ReturnType.SetTypeEiffelName( returnName );
				ReturnType.SetTypeFullExternalName( NameFormatter.FormatStrongName( returnType.FullName ) ); 
				GeneratedEiffelFeature.SetReturnType( ReturnType );
			}
			else
			{
				ReturnType = new SignatureType();
				ReturnType.SetTypeFullExternalName( "System.Void" );
				GeneratedEiffelFeature.SetReturnType( ReturnType );
			}
		}

		if( IsField&& !FieldDescriptor.Name.StartsWith( EiffelClassFactory.PropertySetPrefix ))
		{
			ReturnType = new SignatureType();
			ReturnType.SetTypeEiffelName( NameFormatter.FormatArgumentTypeName( FieldDescriptor.FieldType ) );
			ReturnType.SetTypeFullExternalName( NameFormatter.FormatStrongName( FieldDescriptor.FieldType.FullName ) );
			GeneratedEiffelFeature.SetReturnType( ReturnType ); 
		}

		if( IsMethod || IsField )
		{
			if( IsMethod )
				GeneratedEiffelFeature.SetExternalName( MethodDescriptor.Name );
			else
			{
				if( IsEnumLiteral ) 
					GeneratedEiffelFeature.SetExternalName( System.Convert.ToInt32( FieldDescriptor.GetValue( ClassFactory.UnderlyingType ) ).ToString() );
				else
					GeneratedEiffelFeature.SetExternalName( FieldDescriptor.Name );
			}
		}

		if( IsField )
		{
			if( FieldDescriptor.IsStatic )
			{
				if( !IsEnumLiteral && IsLiteral ) 
				{
					Object value;
						/* We cannot just simply print out the value
						 * of the literal constants for System.Double
						 * and System.Single because of the Infinity(s)
						 * and NaN(s) values which do not express themselves
						 * as constants. Instead we don't generate them
						 *
						 * For character constants, we have to generate
						 * an escape sequence, but we cannot print the
						 * `MaxValue' and `MinValue' constants.
						 */
					value = FieldDescriptor.GetValue( ClassFactory.UnderlyingType );
					if( value is double ) 
					{
						double d = ( double )value;
						if( double.IsInfinity (d) || double.IsNaN (d) )
							GeneratedEiffelFeature.SetLiteralValue( "" );
						else
							GeneratedEiffelFeature.SetLiteralValue( " " + value );
					} 
					else if( value is float ) 
					{
						float s = ( float )value;
						if( float.IsInfinity (s) || float.IsNaN (s) )
							GeneratedEiffelFeature.SetLiteralValue( "" );
						else
							GeneratedEiffelFeature.SetLiteralValue( " " + value );
					} 
					else if( value is char ) 
					{
						char c = ( char )value;
						if( ( c == char.MaxValue )||( c == char.MinValue ) )
							GeneratedEiffelFeature.SetLiteralValue( "" );
						else
							GeneratedEiffelFeature.SetLiteralValue( " '" + value + "'" );
					} 
					else if( value is int ) 
					{
						int a_i = ( int )value;
						GeneratedEiffelFeature.SetLiteralValue( " 0x" + a_i.ToString ("x") );
					} 
					else if( value is byte ) 
					{
						byte b = ( byte )value;
						GeneratedEiffelFeature.SetLiteralValue( " 0x" + b.ToString ("x") );
					} 
					else if( value is short ) 
					{
						short s = ( short )value;
						GeneratedEiffelFeature.SetLiteralValue( " 0x" + s.ToString ("x") );
					} 
					else if( value is long ) 
					{
						long l = ( long )value;
						GeneratedEiffelFeature.SetLiteralValue( " 0x" + l.ToString ("x") );
					} 
					else if( value is string ) 
					{
						GeneratedEiffelFeature.SetLiteralValue( "" );
					}
					else
						GeneratedEiffelFeature.SetLiteralValue( " " + value );
				}
			}
		}
							
		return GeneratedEiffelFeature;	
	}

	// Generate EiffelAssembly. 
	// Does not set `EiffelClusterPath'.
	virtual protected EiffelAssemblyFactory GeneratedAssemblyFactory( Type AssemblyType )
	{
		EiffelAssemblyFactory AssemblyFactory;
		String DotNetStrongName, Version, Culture;
		int CommaIndex, EqualsIndex;
		
		AssemblyFactory = new EiffelAssemblyFactory();
		AssemblyFactory.Make();
		
		DotNetStrongName = AssemblyType.AssemblyQualifiedName.Trim();
		
		// Set `assembly_name'.
		CommaIndex = DotNetStrongName.IndexOf( ',' );
		DotNetStrongName = DotNetStrongName.Substring( CommaIndex + 1 ).Trim();
		CommaIndex = DotNetStrongName.IndexOf( ',' );
		AssemblyFactory.SetAssemblyName( DotNetStrongName.Substring( 0, CommaIndex ) );
		
		// Set `assembly_version'.
		DotNetStrongName = DotNetStrongName.Substring( CommaIndex + 1 ).Trim();
		CommaIndex = DotNetStrongName.IndexOf( ',' );
		Version = DotNetStrongName.Substring( 0, CommaIndex );
		EqualsIndex = Version.IndexOf( '=' );
		AssemblyFactory.SetAssemblyVersion( Version.Substring( EqualsIndex + 1 ) );

		// Set `assembly_culture'.
		DotNetStrongName = DotNetStrongName.Substring( CommaIndex + 1 ).Trim();
		CommaIndex = DotNetStrongName.IndexOf( ',' );
		Culture = DotNetStrongName.Substring( 0, CommaIndex );
		EqualsIndex = Culture.IndexOf( '=' );
		AssemblyFactory.SetAssemblyCulture( Culture.Substring( EqualsIndex + 1) );

		// Set `assembly_public_key'.
		DotNetStrongName = DotNetStrongName.Substring( CommaIndex + 1 ).Trim();
		EqualsIndex = DotNetStrongName.IndexOf( '=' );
		AssemblyFactory.SetAssemblyPublicKey( DotNetStrongName.Substring( EqualsIndex + 1 ) );
		
		// Set `emitter_version_number'.
		AssemblyFactory.SetEmitterVersionNumber( VersionNumber );
		
		return AssemblyFactory;
	}

	// Load dependencies of `assembly'.
	virtual protected System.Collections.ArrayList LoadExternalAssemblies( Assembly assembly )
	{
		AssemblyName [] assemblyNames;
		Assembly newAssembly;
		System.Collections.ArrayList assemblies;
		int i;

		assemblyNames = assembly.GetReferencedAssemblies();
		assemblies = new System.Collections.ArrayList();
		for( i = 0; i < assemblyNames.Length; i++ )
		{
			if( !Done.Contains( assemblyNames [i].FullName ) && !assemblyNames [i].FullName.Equals( "Microsoft.VisualC, Version=7.0.9249.59748, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" ) )
			{
				newAssembly = Assembly.Load( assemblyNames [i] );
				Done.Add( assemblyNames [i].FullName );
				assemblies.AddRange( LoadExternalAssemblies( newAssembly ));
				assemblies.Add( newAssembly );
			}
		}
		return assemblies;
	}
	
	// Loaded assemblies, used in `LoadExternalAssemblies'
	private static System.Collections.ArrayList Done;
	
	// Eiffel assembly found (result of `IsAssemblyImported')
	protected EiffelAssembly EiffelAssemblyFound;
}