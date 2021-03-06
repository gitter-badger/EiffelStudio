note
	description: "This class represents a MS_IMPlabel"
	legal: "See notice at end of class.";
	status: "See notice at end of class.";
	date: "$Date$";
	revision: "$Revision$"

class
	LABEL_IMP

inherit
	PRIMITIVE_IMP
		redefine
			set_font,
			realize
		end

	LABEL_I

	SIZEABLE_WINDOWS

	WEL_DT_CONSTANTS
		export
			{NONE} all
		end

	WEL_COLOR_CONSTANTS
		export
			{NONE} all
		end

	WEL_CONTROL_WINDOW
		rename
			make as wel_make,
			show as wel_show,
			hide as wel_hide,
			destroy as wel_destroy,
			x as wel_x,
			y as wel_y,
			width as wel_width,
			height as wel_height,
			set_x as wel_set_x,
			set_y as wel_set_y,
			set_width as wel_set_width,
			set_height as wel_set_height,
			shown as wel_shown,
			parent as wel_parent,
			text as wel_text,
			text_length as wel_text_length,
			set_text as wel_set_text,
			move as wel_move,
			set_focus as wel_set_focus,
			set_capture as wel_set_capture,
			release_capture as wel_release_capture,
			item as wel_item,
			font as wel_control_font,
			set_font as wel_control_set_font
		undefine
			class_background,
			background_brush,
			on_show,
			on_hide,
			on_size,
			on_move,
			on_right_button_up,
			on_left_button_down,
			on_left_button_up,
			on_right_button_down,
			on_mouse_move,
			on_destroy,
			on_set_cursor,
			on_key_up,
			on_key_down
		redefine
			on_paint,
			default_style,
			class_name
		end

create
	make

feature {NONE} -- Initialization

	make (a_label: LABEL; man: BOOLEAN;  oui_parent: COMPOSITE)
			-- Initialize a label
		do
			create {WEL_ANSI_VARIABLE_FONT} wel_font.make
			create private_attributes
			parent ?= oui_parent.implementation
			if a_label.identifier /= Void then
				text := a_label.identifier.twin
			else
				text := Void
			end
			a_label.set_font_imp (Current)
			managed := man
			set_default_attributes
		end

feature -- Status setting

	set_center_alignment
			-- Center align the label.
		do
			alignment_type := Dt_center
			if exists and then shown then
				invalidate
			end
		end

	set_left_alignment
			-- Left align the label.
		do
			alignment_type := Dt_left
			if exists and then shown then
				invalidate
			end
		end

	set_right_alignment
			-- Right align the label.
		do
			alignment_type := Dt_right
			if exists and then shown then
				invalidate
			end
		end

feature -- Status report

	text: STRING
			-- Text of label

	text_length: INTEGER
			-- Length of the text
		do
			Result := text.count
		end

feature -- Element change

	set_text (t: STRING)
			-- Set label text to `t'
		do
			text := t.twin
			adjust_label
		end

	set_font (a_font: FONT)
			-- Set the font for the text
		do
			Precursor {PRIMITIVE_IMP} (a_font)
			adjust_label
		end

feature {NONE} -- Implementation

	alignment_type: INTEGER
			-- Type of alignment

	realize
			-- Create the label.
		local
			wc: WEL_COMPOSITE_WINDOW
			windows_font: FONT_IMP
                do
			if not exists then
				wc ?= parent
				if width = 0 and height = 0 then
					windows_font ?= font.implementation
					set_size (windows_font.string_width (Current, text) + 24,
						windows_font.string_height (Current, text) * 7 // 4)
				end
				make_with_coordinates (wc, "", x, y, width, height)
				resize_for_shell
				if private_font /= Void then
					set_font (private_font)
				end
				adjust_label
				if not managed then
					wel_hide
				elseif parent.shown then
					shown := true
				end
			end
		end

	adjust_label
			-- Resize the label according to `text' or
			-- user-defined values.
		local
			fw: FONT_IMP
		do
			if not fixed_size_flag then
				fw ?= font.implementation
				set_size (font.width_of_string (text), fw.string_height (Current, text))
			end
			if exists then
				invalidate
			end
		end

	on_paint (paint_dc: WEL_PAINT_DC; invalid_rect: WEL_RECT)
			-- Repaint the text
		local
			windows_font: FONT_IMP
			color_windows: COLOR_IMP
			wel_color_ref: WEL_COLOR_REF
		do
			if font /= Void then
				windows_font ?= font.implementation
				paint_dc.select_font (windows_font.wel_font)
			end
			color_windows ?= private_foreground_color.implementation
			paint_dc.set_text_color (color_windows)
			if private_background_color /= Void then
				paint_dc.set_background_color (background_brush.color)
			else
				create wel_color_ref.make_system (Color_btnface)
				paint_dc.set_background_color (wel_color_ref)
			end
			paint_dc.draw_text (text, client_rect, alignment_type +
				Dt_vcenter)
		end

	default_style: INTEGER
			-- Default style
		once
			Result := Ws_child + Ws_visible
		end

	set_default_attributes
			-- Set the default attributes.
		local
			color_windows: COLOR_IMP
			wel_color_ref: WEL_COLOR_REF
		do
			create wel_color_ref.make_system (Color_windowtext)
			create private_foreground_color.make
			color_windows ?= private_foreground_color.implementation
			color_windows.make_by_wel (wel_color_ref)
			set_center_alignment
		end

	wel_font: WEL_FONT

	wel_set_font (f:WEL_FONT)
		do
			wel_font := f
		end

	class_name: STRING_32
			-- Class name
		once
			Result := "EVisionLabel"
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




end -- class LABEL_IMP

