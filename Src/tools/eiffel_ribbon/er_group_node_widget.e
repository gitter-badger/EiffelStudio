note
	description: "Objects that represent an EV_TITLED_WINDOW.%
		%The original version of this class was generated by EiffelBuild."
	generator: "EiffelBuild"
	date: "$Date$"
	revision: "$Revision$"

class
	ER_GROUP_NODE_WIDGET

inherit
	ER_GROUP_NODE_WIDGET_IMP
		redefine
			create_interface_objects
		end


feature {NONE} -- Initialization

	user_initialization
			-- Called by `initialize'.
			-- Any custom user initialization that
			-- could not be performed in `initialize',
			-- (due to regeneration of implementation class)
			-- can be added here.
		local
			l_list_item: EV_LIST_ITEM
		do
			create l_list_item.make_with_text ("OneButton")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("TwoButtons")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("ThreeButtons")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("ThreeButtons-OneBigAndTwoSmall")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("ThreeButtonsAndOneCheckBox")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("FourButtons")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("FiveButtons")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("FiveOrSixButtons")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("SixButtons")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("SixButtons-TwoColumns")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("SevenButtons")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("EightButtons")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("EightButtons-LastThreeSmall")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("NineButtons")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("TenButtons")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("ElevenButtons")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("OneFontControl")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("IntFontOnly")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("IntRichFont")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("IntFontWithColor")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("OneInRibbonGallery")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("BigButtonsAndSmallButtonsOrInputs")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("InRibbonGalleryAndBigButton")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("InRibbonGalleryAndButtons-GalleryScalesFirst")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("InRibbonGalleryAndThreeButtons")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("ButtonGroupsAndInputs")
			size_combo_box.extend (l_list_item)
			create l_list_item.make_with_text ("ButtonGroups")
			size_combo_box.extend (l_list_item)
		end

	create_interface_objects
			-- <Precursor>
		do
				-- Initialize before calling Precursor all the attached attributes
				-- from the current class.

				-- Proceed with vision2 objects creation.
			Precursor
		end

feature -- Command

	set_tree_node_data (a_data: detachable ER_TREE_NODE_GROUP_DATA)
			--
		do
			tree_node_data := a_data
			if attached a_data as l_data then
				if attached a_data.command_name as l_command_name then
					name.set_text (l_command_name)
				else
					name.remove_text
				end

				if attached a_data.size_definition as l_size_definition then
					size_combo_box.set_text (l_size_definition)
				else
					size_combo_box.remove_text
				end
			end
		end

feature {NONE} -- Implementation

	tree_node_data: detachable ER_TREE_NODE_GROUP_DATA
			--

	on_name_text_change
			-- <Precursor>
		do
			if attached tree_node_data as l_data then
				l_data.set_command_name (name.text)
			end
		end

	on_size_text_change is
			-- <Precursor>
		do
			if attached tree_node_data as l_data then
				l_data.set_size_definition (size_combo_box.text)
			end
		end

end
