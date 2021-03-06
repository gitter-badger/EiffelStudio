note
	description: "Text field with color validation"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class
	WIZARD_FIELD_BOX

inherit
	WIZARD_FIELD_BOX_IMP
		rename
			field_label as text_label,
			field_combo as text_combo
		end

	WIZARD_TEXT_BOX
		undefine
			default_create,
			is_equal,
			copy
		redefine
			on_mouse_leave
		end

feature -- Access

	focus_lost_actions: LIST [ROUTINE [ANY, TUPLE[]]]
			-- Focus lost actions
		do
			if internal_focus_lost_actions = Void then
				create {ARRAYED_LIST [ROUTINE [ANY, TUPLE[]]]} internal_focus_lost_actions.make (10)
			end
			Result := internal_focus_lost_actions
		ensure
			attached_actions: Result /= Void
		end

feature {NONE} -- Event Handling

	on_mouse_leave
			-- Call actions then precursor
		do
			if internal_focus_lost_actions /= Void then
				from
					internal_focus_lost_actions.start
				until
					internal_focus_lost_actions.after
				loop
					internal_focus_lost_actions.item.call (Void)
					internal_focus_lost_actions.forth
				end
			end
		end

feature {NONE} -- Implementation

		internal_focus_lost_actions: LIST [ROUTINE [ANY, TUPLE[]]];
			-- Focus lost actions cache

note
	copyright:	"Copyright (c) 1984-2006, Eiffel Software"
	license:	"GPL version 2 (see http://www.eiffel.com/licensing/gpl.txt)"
	licensing_options:	"http://www.eiffel.com/licensing"
	copying: "[
			This file is part of Eiffel Software's Eiffel Development Environment.
			
			Eiffel Software's Eiffel Development Environment is free
			software; you can redistribute it and/or modify it under
			the terms of the GNU General Public License as published
			by the Free Software Foundation, version 2 of the License
			(available at the URL listed under "license" above).
			
			Eiffel Software's Eiffel Development Environment is
			distributed in the hope that it will be useful,	but
			WITHOUT ANY WARRANTY; without even the implied warranty
			of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
			See the	GNU General Public License for more details.
			
			You should have received a copy of the GNU General Public
			License along with Eiffel Software's Eiffel Development
			Environment; if not, write to the Free Software Foundation,
			Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301  USA
		]"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"
end -- class WIZARD_FIELD_BOX


