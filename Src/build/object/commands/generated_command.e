indexing
	description: "Class representing a generated command that %
				% calls a feature on an application object."
	date: "$Date$"
	id: "$Id$"
	revision: "$Revision$"

class
	GENERATED_COMMAND [G]

inherit 

	BUILD_CMD

feature

	target: G

	set_target (t: G) is
			-- Make `t' the target for next execution
		require
			not_void: x /= Void
		do
			target := t
		ensure
			target_set: target_set
			set_by_argument: target = t
		end

end -- class GENERATED_COMMAND
