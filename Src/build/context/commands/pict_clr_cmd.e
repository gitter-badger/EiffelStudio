class PICT_CLR_CMD 

inherit

	CONTEXT_CMD
		redefine
			context
		end

	EDITOR_FORMS
		export
			{NONE} all
		end

	COMMAND_NAMES
		rename
			P_ict_clr_cmd_name as c_name
		export
			{NONE} all
		end
	
feature {NONE}

	associated_form: INTEGER is
		do
			Result := pict_color_form_number
		end;

	context: PICT_COLOR_C;

	old_pixmap_name: STRING;

	pixmap_value: POINTER;

	old_pixmap: PIXMAP

	context_work is
		do
			old_pixmap_name := context.pixmap_name
			if old_pixmap_name = Void then
				old_pixmap := context.widget.background_pixmap
			end
		end

	context_undo is
		local 
			new_name: STRING
		do
			new_name := context.pixmap_name
			context.set_pixmap_name (old_pixmap_name)
			if old_pixmap_name = Void then
				context.widget.set_background_pixmap (old_pixmap)
			end
			old_pixmap_name := new_name
		end

end
