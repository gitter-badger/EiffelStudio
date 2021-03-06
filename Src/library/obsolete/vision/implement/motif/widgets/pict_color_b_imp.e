note

	description: 
		"EiffelVision implementation of a push button with a pixmap."
	legal: "See notice at end of class.";
	status: "See notice at end of class.";
	date: "$Date$";
	revision: "$Revision$"

class 
	PICT_COLOR_B_IMP

inherit

	PICT_COLOR_B_I;

	PUSH_B_IMP
		rename
			make as push_b_m_make,
			pixmap as mel_pixmap,
			set_pixmap as mel_set_pixmap
		redefine
			set_background_color_from_imp
		end

create

	make

feature {NONE} -- Initialization

	make (a_push_b: PICT_COLOR_B; oui_parent: COMPOSITE; man: BOOLEAN)
			-- Create a motif push button.
		local
			mc: MEL_COMPOSITE
		do
			mc ?= oui_parent.implementation;
			widget_index := widget_manager.last_inserted_position;
			mel_pb_make (a_push_b.identifier, mc, man);
			a_push_b.set_font_imp (Current)
			set_type_pixmap
		end;

feature -- Status report

	pixmap: PIXMAP
			-- Pixmap for Current
		local
			pixmap_x: PIXMAP_IMP
		do
			if private_pixmap = Void then
				create private_pixmap.make;
				pixmap_x ?= private_pixmap.implementation;
				pixmap_x.increment_users;
				pixmap_x.set_default_pixmap (mel_pixmap);
			end;
			Result := private_pixmap
		end;

	is_pressed: BOOLEAN
			-- Is the pict color button pressed?

feature -- Status setting

	set_pixmap (a_pixmap: PIXMAP)
			-- Set pixmap to `a_pixmap'.
		local
			pixmap_implementation: PIXMAP_IMP;
		do
			if private_pixmap /= Void then
				pixmap_implementation ?= private_pixmap.implementation;
				pixmap_implementation.decrement_users
			end;
			private_pixmap := a_pixmap;
			pixmap_implementation ?= a_pixmap.implementation;
			pixmap_implementation.increment_users;
			mel_set_pixmap (pixmap_implementation);
			set_insensitive_pixmap (pixmap_implementation)
		end;

	set_pressed (b: like is_pressed)
			-- Set `is_pressed' to `b'.
		local
			t_color, b_color: MEL_PIXEL
		do
			if is_pressed /= b then
				is_pressed := b
				t_color := top_shadow_color;
				b_color := bottom_shadow_color;
				set_top_shadow_color (b_color);	
				set_bottom_shadow_color (t_color);	
			end
		end;

feature {PIXMAP_IMP} -- Implementation

	private_pixmap: PIXMAP;
			-- Pixmap data

	update_pixmap
			-- Update the X pixmap after a change inside the Eiffel pixmap.
		local
			pixmap_implementation: PIXMAP_IMP
		do
			pixmap_implementation ?= private_pixmap.implementation;
			mel_set_pixmap (pixmap_implementation);
			set_insensitive_pixmap (pixmap_implementation)
		end;

	set_background_color_from_imp (color_imp: COLOR_IMP)
			-- Set the background color from implementation `color_imp'.
		do
			mel_set_background_color (color_imp);
			xm_change_color (screen_object, color_imp.identifier);
			if is_pressed then	
				set_pressed (False);
				is_pressed := True
			end;
			if private_foreground_color /= Void then
				update_foreground_color
			end
		end;
 
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




end -- PICT_COLOR_B_IMP

