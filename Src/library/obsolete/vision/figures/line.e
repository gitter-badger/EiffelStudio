note

	description: "Description of general lines (implementation for X)"
	legal: "See notice at end of class.";
	status: "See notice at end of class.";
	date: "$Date$";
	revision: "$Revision$"

deferred class

	LINE 

inherit

	OPEN_FIG
		redefine
			conf_recompute
		end;

	PATH;
			

	BASIC_ROUTINES
		export
			{NONE} all
		end;

feature -- Access

	origin: COORD_XY_FIG
			-- Origin of line
		do
			inspect
				origin_user_type
			when 0 then
			when 1 then
				Result := origin_user
			when 2 then
				Result := p1
			when 3 then
				Result := p2
			when 4 then
				create Result;
				Result.set ((p1.x+p2.x) // 2, (p1.y+p2.y) // 2)
			end
		end;

	p2: like p1;
			-- Second point

	p1: COORD_XY_FIG;
			-- First point

feature -- Element change

	set (o1, o2: like p1)
			-- Set the two end points of the line.
		require
			o1_exists: o1 /= Void;
			o2_exists: o2 /= Void;
		deferred
		ensure
			p1_set: p1 = o1;
			p2_set: p2 = o2
		end;

	set_origin_to_first_point
			-- Set origin to first point of line.
		do
			origin_user_type := 2;
		ensure
			origin.is_superimposable (p1)
		end;

	set_origin_to_middle
			-- Set origin to middle of the segment [`p1', `p2'].
		do
			origin_user_type := 4;
		end;

	set_origin_to_second_point
			-- Set origin to second point of line.
		do
			origin_user_type := 3;
		ensure
			origin.is_superimposable (p2)
		end;

	set_p1 (p: like p1)
			-- Set the first point.
		require
			p_exists: p /= Void
		deferred
		ensure
			p1_set: p1 = p
		end;

	set_p2 (p: like p2)
			-- Set the second point.
		require
			p_exists: p /= Void
		deferred
		ensure
			p2_set: p2 = p
		end;

	xyrotate (a: REAL; px, py: INTEGER)
			-- Rotate figure by `a' relative to (`px', `py').
			-- Angle `a' is measured in degrees.
		require else
			a_smaller_than_360: a < 360;
			a_positive: a >= 0.0
		do
			p1.xyrotate (a, px, py);
			p2.xyrotate (a, px, py);
			set_conf_modified
		end;

	xyscale (f: REAL; px,py: INTEGER)
			-- Scale figure by `f' relative to (`px', `py').
		require else
			scale_factor_positive: f > 0.0
		do
			p1.xyscale (f, px, py);
			p2.xyscale (f, px, py);
			set_conf_modified
		end;

	xytranslate (vx, vy: INTEGER)
			-- Translate by `vx' horizontally and `vy' vertically.
		do
			p1.xytranslate (vx, vy);
			p2.xytranslate (vx, vy);
			set_conf_modified
		end

feature -- Status report

	is_horizontal: BOOLEAN
			-- Is the line horizontal ?
		do
			Result := (p1.y = p2.y)
		end; 

	is_null: BOOLEAN
			-- Is the line null ?
		deferred
		end; 

	is_vertical: BOOLEAN
			-- Is the line vertical ?
		do
			Result := (p1.x = p2.x)
		end;

feature -- Updating

	conf_recompute
		require else
			p1 /= Void and p2 /= Void
		do
			surround_box.set_bound (p1, p2);
			unset_conf_modified
		end;

invariant

	origin_user_type_constraint: origin_user_type <= 4;
	existence: is_null = (is_horizontal and is_vertical);
	start_exists: p1 /= Void;
	end_exists: p2 /= Void

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




end -- class LINE

