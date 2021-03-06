note

	description: "Eiffel class generated by the 2.3 to 3 translator"
	legal: "See notice at end of class.";
	status: "See notice at end of class.";
	date: "$Date$";
	revision: "$Revision$";
	keywords: Graphical_figure

class

	CLOSURE 

create

	make

feature -- Initialization

	make
			-- Create a closure
		do
			create up_left;
			create down_right;
			empty := True;
			infinite := False
		end; 
	
feature -- Access 

	up_left: COORD_XY_FIG;
			-- Upper left corner

	down_right: COORD_XY_FIG;
			-- Bottom right corner

feature -- Comparison

	includes (other: like Current): BOOLEAN
			-- Does the rectangle surround `other'?
		require
			rectangle_exists: other /= Void;
			rectangle_not_empty: not other.empty
		do
			if not infinite  and not other.infinite then
				if not empty then
					Result := 
						other.up_left >= up_left and then 
						other.down_right <= down_right
				end
			else
				Result := true
			end
		end;

	override (clip: CLIP): BOOLEAN
			-- Does rectangle override clip zone ?
		require
			clip /= Void and then down_right /= Void 
			and up_left /= Void  and clip.upper_left /= Void
		do
			if not infinite then
				Result := not empty and then
						(segment_override (clip.upper_left.x, clip.upper_left.x + clip.width, up_left.x, down_right.x) and then 
						segment_override (clip.upper_left.y, clip.upper_left.y + clip.height, up_left.y, down_right.y));
			else
				Result := true
			end
		end;

	segment_override (a1, b1, a2, b2 : INTEGER): BOOLEAN
		require
			b1 >= a1 and b2 >=a2
		do
				if not infinite then
					Result := ((a1 >= a2) and then (a1 <= b2)) or else
							((a1 <= a2) and then (a2 <= b1));
				else
					Result := true
				end
		end;


feature -- Conversion

	as_clip: CLIP
			-- `clip` equivallent of `Current`
		do
			create Result;
			Result.set (up_left, down_right.x-up_left.x, down_right.y-up_left.y)
		end;

feature -- Element change

	set (x, y, width, height: INTEGER)
			-- Set coordinates and size of closure.
		require
			width >= 0;
			height >= 0
		do
			wipe_out;
			if width+height > 0 then
				up_left.set (x, y);
				down_right.set (x+width, y+height);
				empty := false
			else
				empty := true
			end
		end;

	set_bound (p1, p2: COORD_XY_FIG)
			-- Set coordinates
		require
			p1_exists: p1 /= Void;
			p2_exists: p2 /= Void
		do
			wipe_out;
			enlarge (p1);
			enlarge (p2)
		end; 

	enlarge (p: COORD_XY_FIG)
			-- Enlarge the rectangle in order to include `p'
		require
			point_exists: p /= Void
		do
			if not infinite then
				if empty then
					up_left.set (p.x, p.y);
					down_right.set (p.x, p.y);
					empty := false
				else
					up_left.set_min (p);
					down_right.set_max (p)
				end
			end
		ensure
			not empty
		end;

	merge (other: like Current)
			-- Enlarge the rectangle in order to include `other'.
		require
			rectangle_exists: other /= Void
		do
			if not infinite and not other.infinite then
				if not other.empty then
					if empty then
						up_left.set (other.up_left.x, other.up_left.y);
						down_right.set (other.down_right.x, other.down_right.y);
						empty := false
					else
						up_left.set_min (other.up_left);
						down_right.set_max (other.down_right)
					end
				end
			else
				set_infinite
			end
		end;

	merge_clip (clip: CLIP)
			-- Enlarge the rectangle in order to include `clip'.
		require
			clip_exists: clip /= Void
		local
			clip_up_left, clip_down_right: COORD_XY_FIG;
		do
			if not infinite then
				create clip_up_left;
				clip_up_left.set (clip.upper_left.x, clip.upper_left.y);
				create clip_down_right;
				clip_down_right.set
					(clip.upper_left.x+clip.width, clip.upper_left.y+clip.height);
				if empty then
					up_left.set (clip_up_left.x, clip_up_left.y);
					down_right.set (clip_down_right.x, clip_down_right.y);
					empty := false
				else
					up_left.set_min (clip_up_left);
					down_right.set_max (clip_down_right)
				end
			end
		ensure
			not empty
		end;

	set_infinite
			-- Set current infinite.
		do
			infinite := true;
			empty := false
		ensure
			not_empty: not empty
		end;

	set_finite
			-- Set current finite.
		do
			infinite := false
		end;

feature -- Removal	
	wipe_out
			-- Wipe out the closure
		do
			empty := true;
			infinite := false
		ensure
			empty
		end 


feature -- Status report

	empty: BOOLEAN;
			-- Is the closure empty ?

	infinite: BOOLEAN;
			-- Infinite closure ?

invariant

	empty_implies_not_infinite: empty implies not infinite;
	infinite_implies_not_empty: infinite implies not empty

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




end -- class CLOSURE 

