indexing
	description: 
		"Eiffel Vision colorizable. GTK+ implementation."
	status: "See notice at end of class"
	keywords: "colorizible"
	date: "$Date$"
	revision: "$Revision$"
	
deferred class
	EV_COLORIZABLE_IMP
	
inherit
	
	EV_COLORIZABLE_I
		redefine
			interface
		end

	EV_ANY_IMP
		redefine
			interface
		end

feature -- Access

	background_color: EV_COLOR is
			-- Color of face.
		local
			color: POINTER
		do
			check
				normal_color_at_head_of_array: C.GTK_STATE_NORMAL_ENUM = 0 
					--| GtkStyle has GdkColor bg[5] with 5 background colors
					--| for the 5 gtk states, since normal state is at the 
					--| front we just treat is as: GdkColor* bg_state_normal
			end
			color := C.gtk_style_struct_bg (
				C.gtk_widget_struct_style (colorizable_object)
			)
			create Result
			Result.set_rgb_with_16_bit (
				C.gdk_color_struct_red (color),
				C.gdk_color_struct_green (color),
				C.gdk_color_struct_blue (color)
			)
		end

	foreground_color: EV_COLOR is
			-- Color of foreground features like text.
		local
			color: POINTER
		do
			check
				normal_color_at_head_of_array: C.GTK_STATE_NORMAL_ENUM = 0 
					--| See `background_color'
			end
			color := C.gtk_style_struct_fg (
				C.gtk_widget_struct_style (colorizable_object)
			)
			create Result
			Result.set_rgb_with_16_bit (
				C.gdk_color_struct_red (color),
				C.gdk_color_struct_green (color),
				C.gdk_color_struct_blue (color)
			)
		end

feature -- Status setting


	set_background_color (a_color: EV_COLOR) is
			-- Assign `a_color' to `foreground_color'
		do
			real_set_background_color (colorizable_object, a_color)
		end

	real_set_background_color (a_c_object: POINTER; a_color: EV_COLOR) is
			-- Implementation of `set_background_color'
			-- Used also by classes that inherit EV_WIDGET_IMP but not
			-- EV_WIDGET. (eg EV_PIXMAPABLE_IMP)
			--| Check that the color is not already set.
			--| Copy the existing GtkStyle, modifiy it	
			--| and set it back into the widget.
			--| (See gtk/docs/styles.txt)
		local
			style: POINTER
			color: POINTER
			r, g, b, nr, ng, nb, m: INTEGER
		do
			style := C.gtk_widget_struct_style (a_c_object)
			color := C.gtk_style_struct_bg (a_c_object)
			r := a_color.red_16_bit
			g := a_color.green_16_bit
			b := a_color.blue_16_bit
			if
				C.gdk_color_struct_red (color) /= r or else
				C.gdk_color_struct_green (color) /= g or else
				C.gdk_color_struct_blue (color) /= b
			then
				m := a_color.Max_16_bit
				style := C.gtk_style_copy (style)
					--| Set normal state color.
				color := C.gtk_style_struct_bg (style)
					 + (C.GTK_STATE_NORMAL_ENUM * C.c_gdk_color_struct_size)
				C.set_gdk_color_struct_red (color, r)
				C.set_gdk_color_struct_green (color, g)
				C.set_gdk_color_struct_blue (color, b)
					--| Set active state color.
				color := C.gtk_style_struct_bg (style)
					 + (C.GTK_STATE_ACTIVE_ENUM * C.c_gdk_color_struct_size)
				nr := (r * Highlight_scale).rounded
				ng := (g * Highlight_scale).rounded
				nb := (b * Highlight_scale).rounded
				if nr < 0 then nr := 0 end
				if ng < 0 then ng := 0 end
				if nb < 0 then nb := 0 end
				C.set_gdk_color_struct_red (color, nr)
				C.set_gdk_color_struct_green (color, ng)
				C.set_gdk_color_struct_blue (color, nb)
					--| Set prelight state color.
				color := C.gtk_style_struct_bg (style)
					 + (C.GTK_STATE_PRELIGHT_ENUM * C.c_gdk_color_struct_size)
				nr := (r * Prelight_scale).rounded
				ng := (g * Prelight_scale).rounded
				nb := (b * Prelight_scale).rounded
				if nr > m then nr := m end
				if ng > m then ng := m end
				if nb > m then nb := m end
				C.set_gdk_color_struct_red (color, nr)
				C.set_gdk_color_struct_green (color, ng)
				C.set_gdk_color_struct_blue (color, nb)
					--| Set selected state color to reverse.
				color := C.gtk_style_struct_bg (style)
					 + (C.GTK_STATE_SELECTED_ENUM * C.c_gdk_color_struct_size)
				nr := m - r;
				ng := m - g;
				nb := m - b//2;
				C.set_gdk_color_struct_red (color, nr)
				C.set_gdk_color_struct_green (color, ng)
				C.set_gdk_color_struct_blue (color, nb)
					--| Don't touch insensitive state color
					--| (C.GTK_STATE_INSENSITIVE_ENUM)

				C.gtk_widget_set_style (a_c_object, style)
				C.gtk_style_unref (style)
			end
		end

	set_foreground_color (a_color: EV_COLOR) is
			-- Assign `a_color' to `foreground_color'
		do
			real_set_foreground_color (colorizable_object, a_color)
		end

	real_set_foreground_color (a_c_object: POINTER; a_color: EV_COLOR) is
			-- Implementation of `set_background_color'
			-- Used also by classes that inherit EV_WIDGET_IMP but not
			-- EV_WIDGET. (eg EV_PIXMAPABLE_IMP)
			--| Check that the color is not already set.
			--| Copy the existing GtkStyle, modifiy it	
			--| and set it back into the widget.
			--| (See gtk/docs/styles.txt)
		local
			style: POINTER
			color: POINTER
			r, g, b, m: INTEGER
		do
			style := C.gtk_widget_struct_style (a_c_object)
			color := C.gtk_style_struct_fg (a_c_object)
			r := a_color.red_16_bit
			g := a_color.green_16_bit
			b := a_color.blue_16_bit
			if
				C.gdk_color_struct_red (color) /= r or else
				C.gdk_color_struct_green (color) /= g or else
				C.gdk_color_struct_blue (color) /= b
			then
				m := a_color.Max_16_bit
				style := C.gtk_style_copy (style)
					--| Set normal state color.
				color := C.gtk_style_struct_fg (style)
					 + (C.GTK_STATE_NORMAL_ENUM * C.c_gdk_color_struct_size)
				C.set_gdk_color_struct_red (color, r)
				C.set_gdk_color_struct_green (color, g)
				C.set_gdk_color_struct_blue (color, b)
					--| Set active state color.
				color := C.gtk_style_struct_fg (style)
					 + (C.GTK_STATE_ACTIVE_ENUM * C.c_gdk_color_struct_size)
				C.set_gdk_color_struct_red (color, r)
				C.set_gdk_color_struct_green (color, g)
				C.set_gdk_color_struct_blue (color, b)
					--| Set prelight state color.
				color := C.gtk_style_struct_fg (style)
					 + (C.GTK_STATE_PRELIGHT_ENUM * C.c_gdk_color_struct_size)
				C.set_gdk_color_struct_red (color, r)
				C.set_gdk_color_struct_green (color, g)
				C.set_gdk_color_struct_blue (color, b)
					--| Set selected state color to reverse.
				color := C.gtk_style_struct_fg (style)
					 + (C.GTK_STATE_SELECTED_ENUM * C.c_gdk_color_struct_size)
				C.set_gdk_color_struct_red (color, m - r)
				C.set_gdk_color_struct_green (color, m - g)
				C.set_gdk_color_struct_blue (color, m - b)
					--| Don't touch insensitive state color
					--| (GTK_STATE_INSENSITIVE_ENUM)

				C.gtk_widget_set_style (a_c_object, style)
				C.gtk_style_unref (style)
			end
		end

feature {NONE} -- Implementation

	colorizable_object: POINTER is
			-- Pointer to the object to be colored
		do
			Result := c_object
		end

	Prelight_scale: REAL is 1.0909488
		-- Prelight color is this much lighter than `background_color'.

	Highlight_scale: REAL is 0.90912397
		-- Highlight color is this much darker than `background_color'.

feature {EV_ANY_I} -- Implementation

	interface: EV_COLORIZABLE

end -- EV_COLORIZABLE_IMP

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
--| Revision 1.2  2000/06/07 17:27:33  oconnor
--| merged from DEVEL tag MERGED_TO_TRUNK_20000607
--|
--| Revision 1.1.2.2  2000/05/16 00:24:48  king
--| Added colorizable_object function to return pointer to colorable object
--|
--| Revision 1.1.2.1  2000/05/12 19:06:00  king
--| Initial
--|
--|
--|-----------------------------------------------------------------------------
--| End of CVS log
--|-----------------------------------------------------------------------------
