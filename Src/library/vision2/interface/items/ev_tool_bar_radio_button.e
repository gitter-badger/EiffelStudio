indexing
	description:
		"Toggle button for use with EV_TOOL_BAR.%N%
		%`is_selected' is mutualy exclusive with respect to other tool bar%
		%radio buttons between separators in a tool bar."
	status: "See notice at end of class."
	keywords: "toggle, button, tool, bar"
	date: "$Date$"
	revision: "$Revision$"

class
	EV_TOOL_BAR_RADIO_BUTTON

inherit
	EV_TOOL_BAR_BUTTON
		redefine
			implementation,
			create_implementation,
			is_in_default_state
		end

	EV_RADIO_PEER
		redefine
			implementation,
			is_in_default_state
		end

	EV_SELECTABLE
		redefine
			implementation,
			is_in_default_state
		end

create
	default_create,
	make_with_text

feature -- Contract support

	is_in_default_state: BOOLEAN is
			-- Is `Current' in its default state?
			-- Radio buttons are selected by default.
		do
			Result := {EV_RADIO_PEER} Precursor
			and then {EV_TOOL_BAR_BUTTON} Precursor
		end

feature {EV_ANY_I, EV_RADIO}-- Implementation

	implementation: EV_TOOL_BAR_RADIO_BUTTON_I
			-- Responsible for interaction with the native graphics toolkit.

feature {NONE} -- Implementation

	create_implementation is
			-- See `{EV_ANY}.create_implementation'.
		do
			create {EV_TOOL_BAR_RADIO_BUTTON_IMP} implementation.make (Current)
		end

end -- class EV_TOOL_BAR_RADIO_BUTTON

--!-----------------------------------------------------------------------------
--! EiffelVision2: library of reusable components for ISE Eiffel.
--! Copyright (C) 1986-2000 Interactive Software Engineering Inc.
--! All rights reserved. Duplication and distribution prohibited.
--! May be used only with ISE Eiffel, under terms of user license. 
--! Contact ISE for any other use.
--!
--! Interactive Software Engineering Inc.
--! ISE Building, 2nd floor
--! 270 Storke Road, Goleta, CA 93117 USA
--! Telephone 805-685-1006, Fax 805-685-6869
--! Electronic mail <info@eiffel.com>
--! Customer support e-mail <support@eiffel.com>
--! For latest info see award-winning pages: http://www.eiffel.com
--!-----------------------------------------------------------------------------

--|-----------------------------------------------------------------------------
--| CVS log
--|-----------------------------------------------------------------------------
--|
--| $Log$
--| Revision 1.13  2000/06/07 17:28:05  oconnor
--| merged from DEVEL tag MERGED_TO_TRUNK_20000607
--|
--| Revision 1.4.2.2  2000/05/09 21:12:43  king
--| Integrated changes to selectable/deselectable
--|
--| Revision 1.4.2.1  2000/05/03 19:09:58  oconnor
--| mergred from HEAD
--|
--| Revision 1.12  2000/04/24 23:51:43  rogers
--| Fixed is_in_default_state.
--|
--| Revision 1.11  2000/04/04 17:03:01  rogers
--| Now inherits EV_TOOL_BAR_SELECT_BUTTON and EV_RADIO_PEER.
--| Added is_in_default_state, which needs to be fixed.
--|
--| Revision 1.10  2000/03/24 03:10:22  oconnor
--| formatting and comments
--|
--| Revision 1.9  2000/03/01 19:48:53  king
--| Corrected export clauses for implementation and create_imp/act_seq
--|
--| Revision 1.8  2000/02/22 18:39:47  oconnor
--| updated copyright date and formatting
--|
--| Revision 1.7  2000/02/17 01:41:31  king
--| Removed deprecated set_peer function
--|
--| Revision 1.6  2000/02/14 13:38:56  oconnor
--| released
--|
--| Revision 1.5  2000/02/14 11:40:47  oconnor
--| merged changes from prerelease_20000214
--|
--| Revision 1.4.4.4  2000/02/01 20:15:01  king
--| Removed interface clutter, changed export clause of implementation so it can
--| be used by radio group
--|
--| Revision 1.4.4.3  2000/01/27 19:30:37  oconnor
--| added --| FIXME Not for release
--|
--| Revision 1.4.4.2  2000/01/26 19:26:54  rogers
--| Altered to comply with the major vision2 changes. removed make and
--| make_with_text as they are both inherited from ev_tool_bar_button. Added
--| create implementation.
--|
--| Revision 1.4.4.1  1999/11/24 17:30:43  oconnor
--| merged with DEVEL branch
--|
--| Revision 1.3.2.3  1999/11/04 23:10:52  oconnor
--| updates for new color model, removed exists: not destroyed
--|
--| Revision 1.3.2.2  1999/11/02 17:20:11  oconnor
--| Added CVS log, redoing creation sequence
--|
--|-----------------------------------------------------------------------------
--| End of CVS log
--|-----------------------------------------------------------------------------
