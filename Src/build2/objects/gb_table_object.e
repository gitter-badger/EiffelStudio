indexing
	description: "Objects that ..."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	GB_TABLE_OBJECT
		--| FIXME these really are not supported yet.

	-- Replace ANY below by the name of parent class if any (adding more parents
	-- if necessary); otherwise you can remove inheritance clause altogether.
inherit
	GB_CONTAINER_OBJECT
		redefine
			object,add_child_object
		end

create
	make_with_type,
	make_with_type_and_object

feature -- Initialization

feature -- Access

	object: EV_TABLE

feature -- Basic operation

	add_child_object (an_object: GB_OBJECT; position: INTEGER) is
			--
		do
--		local
--			widget: EV_WIDGET
--		do
--			widget ?= an_object.object
--			check
--				object_is_a_widget: widget /= Void
--			end
--			object.extend (widget)
--			widget ?= an_object.display_object
--			check
--				display_object_is_a_widget: widget /= Void
--			end
--			display_object.extend (widget)
--			layout_item.extend (an_object.layout_item)
		end

end -- class GB_TABLE_OBJECT