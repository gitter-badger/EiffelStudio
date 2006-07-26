indexing
	description: "[
		Objects that represent an EV_TITLED_WINDOW.
		The original version of this class was generated by EiffelBuild.
		This class is the implementation of an EV_TITLED_WINDOW generated by EiffelBuild.
		You should not modify this code by hand, as it will be re-generated every time
		 modifications are made to the project.
		 	]"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

deferred class
	EB_METRIC_NAME_AREA_IMP

inherit
	EV_VERTICAL_BOX
		redefine
			initialize, is_in_default_state
		end

feature {NONE}-- Initialization

	initialize is
			-- Initialize `Current'.
		do
			Precursor {EV_VERTICAL_BOX}
			
				-- Create all widgets.
			create name_area
			create name_lbl
			create name_text
			create name_text_frame
			create name_text_read_only
			create type_area
			create l_ev_cell_1
			create l_ev_horizontal_box_1
			create type_lbl
			create l_ev_cell_2
			create type_pixmap
			create type_text
			create l_ev_cell_3
			create l_ev_horizontal_box_2
			create unit_lbl
			create l_ev_cell_4
			create unit_pixmap
			create unit_text
			create description_area
			create description_lbl
			create description_text
			create description_frame
			create description_text_read_only
			
				-- Build_widget_structure.
			extend (name_area)
			name_area.extend (name_lbl)
			name_area.extend (name_text)
			name_area.extend (name_text_frame)
			name_text_frame.extend (name_text_read_only)
			name_area.extend (type_area)
			type_area.extend (l_ev_cell_1)
			type_area.extend (l_ev_horizontal_box_1)
			l_ev_horizontal_box_1.extend (type_lbl)
			l_ev_horizontal_box_1.extend (l_ev_cell_2)
			l_ev_horizontal_box_1.extend (type_pixmap)
			l_ev_horizontal_box_1.extend (type_text)
			type_area.extend (l_ev_cell_3)
			type_area.extend (l_ev_horizontal_box_2)
			l_ev_horizontal_box_2.extend (unit_lbl)
			l_ev_horizontal_box_2.extend (l_ev_cell_4)
			l_ev_horizontal_box_2.extend (unit_pixmap)
			l_ev_horizontal_box_2.extend (unit_text)
			extend (description_area)
			description_area.extend (description_lbl)
			description_area.extend (description_text)
			description_area.extend (description_frame)
			description_frame.extend (description_text_read_only)
			
			create string_constant_set_procedures.make (10)
			create string_constant_retrieval_functions.make (10)
			create integer_constant_set_procedures.make (10)
			create integer_constant_retrieval_functions.make (10)
			create pixmap_constant_set_procedures.make (10)
			create pixmap_constant_retrieval_functions.make (10)
			create integer_interval_constant_retrieval_functions.make (10)
			create integer_interval_constant_set_procedures.make (10)
			create font_constant_set_procedures.make (10)
			create font_constant_retrieval_functions.make (10)
			create pixmap_constant_retrieval_functions.make (10)
			create color_constant_set_procedures.make (10)
			create color_constant_retrieval_functions.make (10)
			
			name_area.set_minimum_height (22)
			name_area.set_padding_width (3)
			name_area.disable_item_expand (name_lbl)
			name_area.disable_item_expand (name_text)
			name_area.disable_item_expand (name_text_frame)
			name_area.disable_item_expand (type_area)
			name_lbl.set_text ("Name:")
			name_lbl.set_minimum_width (65)
			name_lbl.align_text_left
			name_text.set_minimum_width (150)
			name_text_frame.set_style (1)
			name_text_read_only.set_minimum_width (150)
			name_text_read_only.disable_edit
			type_area.set_padding_width (3)
			type_area.disable_item_expand (l_ev_cell_1)
			type_area.disable_item_expand (l_ev_horizontal_box_1)
			type_area.disable_item_expand (l_ev_cell_3)
			type_area.disable_item_expand (l_ev_horizontal_box_2)
			l_ev_cell_1.set_minimum_width (5)
			l_ev_horizontal_box_1.set_padding_width (2)
			l_ev_horizontal_box_1.disable_item_expand (type_lbl)
			l_ev_horizontal_box_1.disable_item_expand (l_ev_cell_2)
			l_ev_horizontal_box_1.disable_item_expand (type_pixmap)
			l_ev_horizontal_box_1.disable_item_expand (type_text)
			type_lbl.set_text ("Type:")
			type_lbl.align_text_left
			l_ev_cell_2.set_minimum_width (3)
			type_pixmap.set_minimum_width (16)
			type_pixmap.set_minimum_height (16)
			type_text.set_minimum_width (60)
			type_text.align_text_left
			l_ev_cell_3.set_minimum_width (5)
			l_ev_horizontal_box_2.set_padding_width (2)
			l_ev_horizontal_box_2.disable_item_expand (unit_lbl)
			l_ev_horizontal_box_2.disable_item_expand (l_ev_cell_4)
			l_ev_horizontal_box_2.disable_item_expand (unit_pixmap)
			l_ev_horizontal_box_2.disable_item_expand (unit_text)
			unit_lbl.set_text ("Unit:")
			unit_lbl.align_text_left
			l_ev_cell_4.set_minimum_width (3)
			unit_pixmap.set_minimum_width (16)
			unit_pixmap.set_minimum_height (16)
			unit_text.align_text_left
			description_area.set_minimum_height (22)
			description_area.set_padding_width (3)
			description_area.disable_item_expand (description_lbl)
			description_lbl.set_text ("Description:")
			description_lbl.set_minimum_width (65)
			description_lbl.align_text_left
			description_frame.set_minimum_height (22)
			description_frame.set_style (1)
			description_text_read_only.disable_edit
			set_padding_width (5)
			disable_item_expand (name_area)
			disable_item_expand (description_area)
			
			set_all_attributes_using_constants
			
				--Connect events.
				-- Close the application when an interface close
				-- request is recieved on `Current'. i.e. the cross is clicked.

				-- Call `user_initialization'.
			user_initialization
		end


feature -- Access

	type_pixmap, unit_pixmap: EV_PIXMAP
	name_area, type_area, description_area: EV_HORIZONTAL_BOX
	name_lbl, type_lbl,
	type_text, unit_lbl, unit_text, description_lbl: EV_LABEL
	name_text, name_text_read_only,
	description_text, description_text_read_only: EV_TEXT_FIELD
	name_text_frame, description_frame: EV_FRAME

feature {NONE} -- Implementation

	l_ev_cell_1, l_ev_cell_2, l_ev_cell_3, l_ev_cell_4: EV_CELL
	l_ev_horizontal_box_1, l_ev_horizontal_box_2: EV_HORIZONTAL_BOX

feature {NONE} -- Implementation

	is_in_default_state: BOOLEAN is
			-- Is `Current' in its default state?
		do
			-- Re-implement if you wish to enable checking
			-- for `Current'.
			Result := True
		end
	
	user_initialization is
			-- Feature for custom initialization, called at end of `initialize'.
		deferred
		end
		
feature {NONE} -- Constant setting

	set_attributes_using_string_constants is
			-- Set all attributes relying on string constants to the current
			-- value of the associated constant.
		local
			s: STRING_32
		do
			from
				string_constant_set_procedures.start
			until
				string_constant_set_procedures.off
			loop
				string_constant_retrieval_functions.i_th (string_constant_set_procedures.index).call (Void)
				s := string_constant_retrieval_functions.i_th (string_constant_set_procedures.index).last_result
				string_constant_set_procedures.item.call ([s])
				string_constant_set_procedures.forth
			end
		end
		
	set_attributes_using_integer_constants is
			-- Set all attributes relying on integer constants to the current
			-- value of the associated constant.
		local
			i: INTEGER
			arg1, arg2: INTEGER
			int: INTEGER_INTERVAL
		do
			from
				integer_constant_set_procedures.start
			until
				integer_constant_set_procedures.off
			loop
				integer_constant_retrieval_functions.i_th (integer_constant_set_procedures.index).call (Void)
				i := integer_constant_retrieval_functions.i_th (integer_constant_set_procedures.index).last_result
				integer_constant_set_procedures.item.call ([i])
				integer_constant_set_procedures.forth
			end
			from
				integer_interval_constant_retrieval_functions.start
				integer_interval_constant_set_procedures.start
			until
				integer_interval_constant_retrieval_functions.off
			loop
				integer_interval_constant_retrieval_functions.item.call (Void)
				arg1 := integer_interval_constant_retrieval_functions.item.last_result
				integer_interval_constant_retrieval_functions.forth
				integer_interval_constant_retrieval_functions.item.call (Void)
				arg2 := integer_interval_constant_retrieval_functions.item.last_result
				create int.make (arg1, arg2)
				integer_interval_constant_set_procedures.item.call ([int])
				integer_interval_constant_retrieval_functions.forth
				integer_interval_constant_set_procedures.forth
			end
		end
		
	set_attributes_using_pixmap_constants is
			-- Set all attributes relying on pixmap constants to the current
			-- value of the associated constant.
		local
			p: EV_PIXMAP
		do
			from
				pixmap_constant_set_procedures.start
			until
				pixmap_constant_set_procedures.off
			loop
				pixmap_constant_retrieval_functions.i_th (pixmap_constant_set_procedures.index).call (Void)
				p := pixmap_constant_retrieval_functions.i_th (pixmap_constant_set_procedures.index).last_result
				pixmap_constant_set_procedures.item.call ([p])
				pixmap_constant_set_procedures.forth
			end
		end
		
	set_attributes_using_font_constants is
			-- Set all attributes relying on font constants to the current
			-- value of the associated constant.
		local
			f: EV_FONT
		do
			from
				font_constant_set_procedures.start
			until
				font_constant_set_procedures.off
			loop
				font_constant_retrieval_functions.i_th (font_constant_set_procedures.index).call (Void)
				f := font_constant_retrieval_functions.i_th (font_constant_set_procedures.index).last_result
				font_constant_set_procedures.item.call ([f])
				font_constant_set_procedures.forth
			end	
		end
		
	set_attributes_using_color_constants is
			-- Set all attributes relying on color constants to the current
			-- value of the associated constant.
		local
			c: EV_COLOR
		do
			from
				color_constant_set_procedures.start
			until
				color_constant_set_procedures.off
			loop
				color_constant_retrieval_functions.i_th (color_constant_set_procedures.index).call (Void)
				c := color_constant_retrieval_functions.i_th (color_constant_set_procedures.index).last_result
				color_constant_set_procedures.item.call ([c])
				color_constant_set_procedures.forth
			end
		end
		
	set_all_attributes_using_constants is
			-- Set all attributes relying on constants to the current
			-- calue of the associated constant.
		do
			set_attributes_using_string_constants
			set_attributes_using_integer_constants
			set_attributes_using_pixmap_constants
			set_attributes_using_font_constants
			set_attributes_using_color_constants
		end
					
	string_constant_set_procedures: ARRAYED_LIST [PROCEDURE [ANY, TUPLE [STRING_GENERAL]]]
	string_constant_retrieval_functions: ARRAYED_LIST [FUNCTION [ANY, TUPLE [], STRING_32]]
	integer_constant_set_procedures: ARRAYED_LIST [PROCEDURE [ANY, TUPLE [INTEGER]]]
	integer_constant_retrieval_functions: ARRAYED_LIST [FUNCTION [ANY, TUPLE [], INTEGER]]
	pixmap_constant_set_procedures: ARRAYED_LIST [PROCEDURE [ANY, TUPLE [EV_PIXMAP]]]
	pixmap_constant_retrieval_functions: ARRAYED_LIST [FUNCTION [ANY, TUPLE [], EV_PIXMAP]]
	integer_interval_constant_retrieval_functions: ARRAYED_LIST [FUNCTION [ANY, TUPLE [], INTEGER]]
	integer_interval_constant_set_procedures: ARRAYED_LIST [PROCEDURE [ANY, TUPLE [INTEGER_INTERVAL]]]
	font_constant_set_procedures: ARRAYED_LIST [PROCEDURE [ANY, TUPLE [EV_FONT]]]
	font_constant_retrieval_functions: ARRAYED_LIST [FUNCTION [ANY, TUPLE [], EV_FONT]]
	color_constant_set_procedures: ARRAYED_LIST [PROCEDURE [ANY, TUPLE [EV_COLOR]]]
	color_constant_retrieval_functions: ARRAYED_LIST [FUNCTION [ANY, TUPLE [], EV_COLOR]]
	
	integer_from_integer (an_integer: INTEGER): INTEGER is
			-- Return `an_integer', used for creation of
			-- an agent that returns a fixed integer value.
		do
			Result := an_integer
		end

indexing
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


end -- class EB_METRIC_NAME_AREA_IMP
