note
	description:
		"Action sequences for EV_PICK_AND_DROPABLE_IMP."
	legal: "See notice at end of class."
	status: "See notice at end of class."
	keywords: "event, action, sequence"
	date: "Generated!"
	revision: "Generated!"

deferred class
	 EV_PICK_AND_DROPABLE_ACTION_SEQUENCES_IMP

inherit
	EV_PICK_AND_DROPABLE_ACTION_SEQUENCES_I

feature -- Event handling

	create_pick_actions: EV_PND_START_ACTION_SEQUENCE
			-- Create a pick action sequence.
		do
			create Result
		end
		
	create_pick_ended_actions: EV_PND_FINISHED_ACTION_SEQUENCE
			-- Create a pick ended action sequence.
		do
			create Result
		end
		

	create_conforming_pick_actions: EV_NOTIFY_ACTION_SEQUENCE
			-- Create a conforming_pick action sequence.
		do
			create Result
		end

	create_drop_actions: EV_PND_ACTION_SEQUENCE
			-- Create a drop action sequence.
		do
			create Result
		end

note
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"




end

