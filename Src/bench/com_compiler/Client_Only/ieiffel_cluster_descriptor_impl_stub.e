indexing
	description: "Implemented `IEiffelClusterDescriptor' Interface."
	Note: "Automatically generated by the EiffelCOM Wizard."

class
	IEIFFEL_CLUSTER_DESCRIPTOR_IMPL_STUB

inherit
	IEIFFEL_CLUSTER_DESCRIPTOR_INTERFACE

	ECOM_STUB

feature -- Access

	name: STRING is
			-- Cluster name.
		do
			-- Put Implementation here.
		end

	description: STRING is
			-- Cluster description.
		do
			-- Put Implementation here.
		end

	tool_tip: STRING is
			-- Cluster Tool Tip.
		do
			-- Put Implementation here.
		end

	classes: IENUM_EIFFEL_CLASS_INTERFACE is
			-- List of classes in cluster.
		do
			-- Put Implementation here.
		end

	class_count: INTEGER is
			-- Number of classes in cluster.
		do
			-- Put Implementation here.
		end

	clusters: IENUM_CLUSTER_INTERFACE is
			-- List of subclusters in cluster.
		do
			-- Put Implementation here.
		end

	cluster_count: INTEGER is
			-- Number of subclusters in cluster.
		do
			-- Put Implementation here.
		end

	cluster_path: STRING is
			-- Full path to cluster.
		do
			-- Put Implementation here.
		end

	relative_path: STRING is
			-- Relative path to cluster.
		do
			-- Put Implementation here.
		end

	is_override_cluster: BOOLEAN is
			-- Should this cluster classes take priority over other classes with same name?
		do
			-- Put Implementation here.
		end

	is_library: BOOLEAN is
			-- Should this cluster be treated as library?
		do
			-- Put Implementation here.
		end

feature -- Basic Operations

	create_item is
			-- Initialize `item'
		do
			item := ccom_create_item (Current)
		end

feature {NONE}  -- Externals

	ccom_create_item (eif_object: IEIFFEL_CLUSTER_DESCRIPTOR_IMPL_STUB): POINTER is
			-- Initialize `item'
		external
			"C++ [new ecom_EiffelComCompiler::IEiffelClusterDescriptor_impl_stub %"ecom_EiffelComCompiler_IEiffelClusterDescriptor_impl_stub.h%"](EIF_OBJECT)"
		end

end -- IEIFFEL_CLUSTER_DESCRIPTOR_IMPL_STUB

