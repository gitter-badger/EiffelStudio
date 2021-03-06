indexing
	description: "Objects that ..."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	MY_TREE3

inherit
	LINKED_TREE [INTEGER]
		rename
			make as tree_make
		redefine
			node_is_equal, child_cursor
		end

create
	make

create {MY_TREE3}
	tree_make

feature {NONE} -- Initialization

	make is
		do
			tree_make (5)
		end

feature -- Access

	foo: STRING

	child_cursor: MY_TREE3_CURSOR
			-- Current cursor position
		do
			create Result.make (child, child_after, child_before)
		end

feature -- Comparison

	node_is_equal (other: like Current): BOOLEAN is
		do
			Result := equal (foo, other.foo) and then Precursor {LINKED_TREE} (other)
		end

feature -- Element change

	set_foo (s: STRING) is
		do
			foo := s
		ensure
			foo_set: foo = s
		end

end -- class MY_TREE3
