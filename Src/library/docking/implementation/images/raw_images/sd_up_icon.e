indexing
	description: "Pixel buffer that replaces orignal image file.%
		%The orignal version of this class has been generated by Image Eiffel Code."
	status: "See notice at end of class."
	legal: "See notice at end of class."

class
	SD_UP_ICON

inherit
	EV_PIXEL_BUFFER

create
	make

feature {NONE} -- Initialization

	make is
			-- Initialization
		do
			make_with_size (41, 35)
			fill_memory
		end

feature {NONE} -- Image data

	c_colors_0 (a_ptr: POINTER; a_offset: INTEGER) is
			-- Fill `a_ptr' with colors data from `a_offset'.
		external
			"C inline"
		alias
			"[
			{
				#define B(q) \
					#q
				#ifdef EIF_WINDOWS
				#define A(a,r,g,b) \
					B(\x##b\x##g\x##r\x##a)
				#else
				#define A(a,r,g,b) \
					B(\x##r\x##g\x##b\x##a)
				#endif
				char l_data[] = 
				A(00,00,00,00)A(0A,A9,A9,AB)A(73,A9,A9,AB)A(D9,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(D9,A9,A9,AB)A(73,A9,A9,AB)A(0A,A9,A9,AB)A(00,00,00,00)A(00,00,00,00)A(00,00,00,00)A(00,00,00,00)A(00,00,00,00)A(0A,A9,A9,AB)A(96,A9,A9,AB)A(FF,AD,AE,B2)A(FF,B0,B2,B9)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B1,B3,BB)A(FF,B0,B2,B9)A(FF,AD,AE,B2)A(99,A6,A6,A8)A(0E,79,79,7A)A(02,00,00,00)A(01,00,00,00)
				A(00,00,00,00)A(00,00,00,00)A(73,A9,A9,AB)A(FF,AD,AE,B2)A(FF,B2,B4,BC)A(FF,B6,B8,C1)A(FF,B9,BC,C4)A(FF,BB,BE,C6)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BC,BF,C7)A(FF,BB,BE,C6)A(FF,B9,BC,C4)A(FF,AF,B0,B5)A(7C,9C,9C,9E)A(0A,00,00,00)A(05,00,00,00)A(02,00,00,00)A(00,00,00,00)A(D9,A9,A9,AB)A(FF,B1,B2,B9)A(FF,B9,BB,C3)A(FF,C4,C7,CF)A(FF,CD,D0,D9)A(FF,D1,D4,DD)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D2,D5,DE)A(FF,D1,D4,DD)A(FF,CD,D0,D9)A(FF,C0,C3,CA)A(DE,A5,A5,A7)
				A(16,00,00,00)A(0B,00,00,00)A(05,00,00,00)A(01,00,00,00)A(FF,A9,A9,AB)A(FF,B6,B8,C1)A(FF,C4,C7,CF)A(FF,D3,D6,E0)A(FF,DA,DD,E7)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DA,DD,E7)A(FF,D3,D6,E0)A(FF,A9,A9,AB)A(29,00,00,00)A(16,00,00,00)A(0A,00,00,00)A(02,00,00,00)A(FF,A9,A9,AB)A(FF,B9,BC,C4)A(FF,CD,D0,D9)A(FF,DA,DD,E7)A(FF,DD,E0,EA)A(FF,C8,CE,E4)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,C8,CE,E4)A(FF,DD,E0,EA)A(FF,DD,E0,EA)
				A(FF,DA,DD,E7)A(FF,A9,A9,AB)A(3D,00,00,00)A(22,00,00,00)A(10,00,00,00)A(04,00,00,00)A(FF,A9,A9,AB)A(FF,BB,BE,C6)A(FF,D1,D4,DD)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,BA,C2,E0)A(FF,D3,DB,F7)A(FF,D3,DC,F7)A(FF,D4,DB,F7)A(FF,D3,DB,F7)A(FF,D4,DB,F7)A(FF,D4,DB,F7)A(FF,D4,DB,F7)A(FF,D3,DB,F7)A(FF,D3,DB,F7)A(FF,D3,DB,F7)A(FF,D4,DB,F7)A(FF,D3,DB,F7)A(FF,D4,DB,F7)A(FF,D4,DB,F7)A(FF,D4,DB,F7)A(FF,D4,DB,F7)A(FF,D4,DB,F7)A(FF,D4,DB,F7)A(FF,D4,DB,F7)A(FF,D4,DB,F7)A(FF,D4,DB,F7)A(FF,D4,DB,F7)A(FF,D4,DB,F7)A(FF,D4,DB,F7)A(FF,D4,DB,F7)A(FF,D4,DB,F7)A(FF,BA,C2,E0)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(4D,00,00,00)A(2C,00,00,00)A(15,00,00,00)A(07,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,BA,C2,E0)A(FF,B2,BE,EC)A(FF,B2,BE,EC)A(FF,B2,BE,EC)A(FF,B2,BF,EC)A(FF,B2,BE,EC)A(FF,B1,BE,EB)A(FF,B1,BE,EC)A(FF,B2,BE,EC)A(FF,B2,BE,EC)A(FF,B2,BF,EC)A(FF,B1,BE,EC)A(FF,B2,BE,EC)A(FF,B1,BF,EC)A(FF,B2,BE,EC)A(FF,B1,BE,EC)A(FF,B2,BE,EC)A(FF,B1,BE,EC)A(FF,B2,BE,EB)A(FF,B1,BE,EC)A(FF,B1,BE,EC)A(FF,B2,BE,EC)A(FF,B1,BE,EC)A(FF,B2,BE,EC)A(FF,B1,BF,EB)A(FF,B2,BE,EC)A(FF,B3,BF,ED)A(FF,BA,C2,E0)
				A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(58,00,00,00)A(34,00,00,00)A(19,00,00,00)A(08,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,BA,C2,E0)A(FF,92,A1,D9)A(FF,92,A1,D9)A(FF,91,A1,D9)A(FF,92,A1,D9)A(FF,91,A0,D9)A(FF,91,A1,D9)A(FF,91,A0,D9)A(FF,92,A1,D9)A(FF,92,A1,D9)A(FF,92,A1,D9)A(FF,91,A1,D9)A(FF,92,A1,D9)A(FF,91,A1,D9)A(FF,91,A1,D9)A(FF,91,A0,D9)A(FF,92,A0,D9)A(FF,92,A1,D9)A(FF,91,A1,D9)A(FF,91,A1,D9)A(FF,91,A1,D9)A(FF,91,A1,D9)A(FF,91,A0,D9)A(FF,91,A1,D9)A(FF,91,A1,D9)A(FF,92,A1,D9)A(FF,92,A2,D9)A(FF,BA,C2,E0)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5E,00,00,00)A(38,00,00,00)A(1C,00,00,00)A(09,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,BA,C2,E0)A(FF,BC,C5,EA)A(FF,BC,C5,EA)A(FF,BD,C5,EA)A(FF,BC,C5,EA)A(FF,BC,C5,EA)A(FF,BC,C5,EA)A(FF,BC,C5,EA)A(FF,BD,C5,EA)A(FF,BD,C5,EA)A(FF,BD,C5,EA)A(FF,BD,C5,EA)A(FF,BC,C5,EA)A(FF,BC,C5,EA)A(FF,BC,C5,EA)A(FF,BC,C5,EA)A(FF,BC,C5,EA)A(FF,BD,C5,EA)A(FF,BC,C5,EA)A(FF,BD,C5,EA)A(FF,BC,C5,EA)A(FF,BC,C5,EA)A(FF,BC,C5,EA)A(FF,BC,C5,EA)A(FF,BC,C5,EA)A(FF,BD,C5,EA);
				memcpy ((EIF_NATURAL_32 *)$a_ptr + $a_offset, &l_data, sizeof l_data - 1);
			}
			]"
		end

	c_colors_1 (a_ptr: POINTER; a_offset: INTEGER) is
			-- Fill `a_ptr' with colors data from `a_offset'.
		external
			"C inline"
		alias
			"[
			{
				#define B(q) \
					#q
				#ifdef EIF_WINDOWS
				#define A(a,r,g,b) \
					B(\x##b\x##g\x##r\x##a)
				#else
				#define A(a,r,g,b) \
					B(\x##r\x##g\x##b\x##a)
				#endif
				char l_data[] = 
				A(FF,BC,C5,EA)A(FF,BA,C2,E0)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(39,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,BA,C2,E0)A(FF,C2,CA,EC)A(FF,C2,CA,EB)A(FF,C2,CA,EC)A(FF,C2,CA,EB)A(FF,C2,CA,EB)A(FF,C2,CA,EC)A(FF,C2,CA,EC)A(FF,C2,CA,EC)A(FF,C2,CA,EC)A(FF,C2,CA,EC)A(FF,C2,CA,EC)A(FF,C2,CA,EB)A(FF,C2,CA,EC)A(FF,C2,CA,EB)A(FF,C2,CA,EC)A(FF,C2,CA,EC)A(FF,C2,CA,EC)A(FF,C2,CA,EC)A(FF,C2,CA,EC)A(FF,C2,CA,EC)A(FF,C2,CA,EC)A(FF,C2,CA,EB)A(FF,C2,CA,EB)A(FF,C2,CA,EB)A(FF,C2,CA,EC)A(FF,C2,CA,EB)A(FF,BA,C2,E0)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,BA,C2,E0)A(FF,CB,D1,EE)A(FF,CB,D2,EF)A(FF,CB,D1,EE)A(FF,CB,D2,EF)A(FF,CB,D2,EE)A(FF,CB,D2,EE)A(FF,CB,D2,EE)A(FF,CB,D1,EE)A(FF,CB,D2,EF)A(FF,CB,D2,EE)A(FF,CB,D1,EF)A(FF,CB,D2,EF)A(FF,CA,D2,EE)A(FF,CB,D2,EE)A(FF,CB,D1,EF)A(FF,CB,D1,EE)A(FF,CB,D1,EF)A(FF,CB,D1,EF)A(FF,CB,D2,EE)A(FF,CB,D2,EE)A(FF,CB,D2,EE)A(FF,CB,D2,EF)A(FF,CB,D2,EE)
				A(FF,CB,D2,EE)A(FF,CB,D2,EE)A(FF,CA,D1,EE)A(FF,BA,C2,E0)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,BA,C2,E0)A(FF,D4,DA,F2)A(FF,D5,DA,F2)A(FF,D5,DA,F1)A(FF,D5,DA,F2)A(FF,D5,DA,F2)A(FF,D5,DA,F1)A(FF,D4,DA,F1)A(FF,D4,DA,F1)A(FF,D5,DA,F1)A(FF,D4,DA,F2)A(FF,D5,DA,F2)A(FF,D5,DA,F2)A(FF,D4,DA,F2)A(FF,D5,DA,F1)A(FF,D4,DA,F2)A(FF,D4,DA,F1)A(FF,D5,DA,F2)A(FF,D4,DA,F1)A(FF,D4,DA,F2)A(FF,D4,DA,F2)A(FF,D4,DA,F2)A(FF,D4,DA,F2)A(FF,D5,DA,F2)A(FF,D5,DA,F2)A(FF,D5,DA,F2)A(FF,D4,DA,F1)A(FF,BA,C2,E0)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,BA,C2,E0)A(FF,DD,E1,F5)A(FF,DD,E2,F4)A(FF,DD,E2,F5)A(FF,DD,E1,F4)A(FF,DD,E2,F4)A(FF,DD,E2,F5)A(FF,DD,E1,F5)A(FF,DD,E2,F4)A(FF,DD,E1,F4)A(FF,DD,E2,F5)A(FF,DD,E2,F5)A(FF,DD,E1,F5)A(FF,DD,E2,F4)A(FF,DC,E2,F4)A(FF,DD,E1,F4)A(FF,DD,E2,F4)A(FF,DD,E2,F4)A(FF,DD,E2,F4)A(FF,DD,E2,F5)A(FF,DD,E1,F5)A(FF,DD,E1,F4)
				A(FF,DD,E1,F5)A(FF,DD,E2,F4)A(FF,DD,E1,F4)A(FF,DD,E2,F5)A(FF,DD,E2,F4)A(FF,BA,C2,E0)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,BA,C2,E0)A(FF,B2,BE,EB)A(FF,E3,E7,F6)A(FF,E3,E7,F6)A(FF,D4,DA,F4)A(FF,AB,B7,E6)A(FF,B2,BE,EB)A(FF,E3,E7,F6)A(FF,E3,E7,F6)A(FF,D4,DA,F4)A(FF,AB,B7,E6)A(FF,B2,BE,EB)A(FF,E3,E7,F6)A(FF,E3,E7,F6)A(FF,D4,DA,F4)A(FF,AB,B7,E6)A(FF,B2,BE,EB)A(FF,E3,E7,F6)A(FF,E3,E7,F6)A(FF,D4,DA,F4)A(FF,AB,B7,E6)A(FF,B2,BE,EB)A(FF,E3,E7,F6)A(FF,E3,E7,F6)A(FF,D4,DA,F4)A(FF,AB,B7,E6)A(FF,B2,BE,EB)A(FF,BA,C2,E0)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,BA,C2,E0)A(FF,E7,EB,F7)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F0,F2,F8)A(FF,E7,EB,F7)A(FF,E7,EB,F7)A(FF,F4,F5,F9)A(FF,F4,F5,F9)A(FF,F0,F2,F8)A(FF,E7,EB,F7)A(FF,E7,EB,F7)A(FF,F2,F3,F9)A(FF,F1,F3,F9)A(FF,F0,F2,F8)A(FF,E7,EB,F7)A(FF,E7,EB,F7)A(FF,EE,F0,F9)A(FF,ED,EF,F9)A(FF,F0,F2,F8)
				A(FF,E7,EB,F7)A(FF,E7,EB,F7)A(FF,EA,ED,F9)A(FF,E9,EC,F9)A(FF,F0,F2,F8)A(FF,E7,EB,F7)A(FF,E7,EB,F7)A(FF,BA,C2,E0)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,BA,C2,E0)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F4,F4,F9)A(FF,F3,F4,F9)A(FF,F3,F4,F9)A(FF,F2,F4,F9)A(FF,F1,F3,F9)A(FF,F1,F2,F9)A(FF,EF,F2,F9)A(FF,EF,F1,F9)A(FF,EF,F0,F9)A(FF,EE,EF,F9)A(FF,EC,EF,F9)A(FF,EC,EE,F9)A(FF,EB,EE,F9)A(FF,EA,ED,F9)A(FF,EA,ED,F9)A(FF,E9,EC,F9)A(FF,E8,EB,F9)A(FF,E8,EB,F9)A(FF,E7,EB,F9)A(FF,BA,C2,E0)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,BA,C2,E0)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F4,F6,F9)A(FF,F4,F5,F9)A(FF,F3,F5,F9)A(FF,F3,F4,F9)A(FF,F3,F4,F9)A(FF,F2,F3,F9)A(FF,F1,F2,F9)A(FF,F0,F2,F9)A(FF,EF,F2,F9)A(FF,EF,F2,F9)A(FF,EE,F0,F9)A(FF,ED,EF,F9)
				A(FF,EC,EF,F9)A(FF,EC,EF,F9)A(FF,EA,ED,F9)A(FF,EA,ED,F9)A(FF,E9,ED,F9)A(FF,E8,EC,F9)A(FF,E8,EC,F9)A(FF,E8,EB,F9)A(FF,E8,EB,F9)A(FF,BA,C2,E0)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,BA,C2,E0)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F4,F5,F9)A(FF,F4,F5,F9)A(FF,F3,F5,F9)A(FF,F3,F4,F9)A(FF,F2,F4,F9)A(FF,F2,F3,F9)A(FF,F1,F3,F9)A(FF,F0,F2,F9)A(FF,EF,F2,F9)A(FF,EF,F1,F9)A(FF,EE,F0,F9)A(FF,EC,EF,F9)A(FF,EC,EF,F9)A(FF,EC,EE,F9)A(FF,EB,ED,F9)A(FF,EA,ED,F9)A(FF,EA,EC,F9)A(FF,E8,EC,F9)A(FF,E8,EB,F9)A(FF,E8,EB,F9)A(FF,E7,EB,F9)A(FF,BA,C2,E0)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,BA,C2,E0)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F4,F6,F9)A(FF,F4,F4,F9)A(FF,F3,F4,F8)A(FF,F3,F4,F9)A(FF,F2,F3,F9)A(FF,F1,F3,F9)A(FF,F1,F3,F9)A(FF,F0,F2,F9)A(FF,EF,F1,F9)A(FF,EE,F0,F9);
				memcpy ((EIF_NATURAL_32 *)$a_ptr + $a_offset, &l_data, sizeof l_data - 1);
			}
			]"
		end

	c_colors_2 (a_ptr: POINTER; a_offset: INTEGER) is
			-- Fill `a_ptr' with colors data from `a_offset'.
		external
			"C inline"
		alias
			"[
			{
				#define B(q) \
					#q
				#ifdef EIF_WINDOWS
				#define A(a,r,g,b) \
					B(\x##b\x##g\x##r\x##a)
				#else
				#define A(a,r,g,b) \
					B(\x##r\x##g\x##b\x##a)
				#endif
				char l_data[] = 
				A(FF,ED,F0,F9)A(FF,ED,EF,F9)A(FF,EC,EF,F9)A(FF,EC,EE,F9)A(FF,EA,ED,F9)A(FF,EA,ED,F9)A(FF,E9,EC,F9)A(FF,E8,EB,F9)A(FF,E8,EB,F9)A(FF,E7,EB,F9)A(FF,E7,EB,F9)A(FF,BA,C2,E0)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,BA,C2,E0)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F5,F9)A(FF,F4,F5,F9)A(FF,F3,F5,F9)A(FF,F3,F4,F8)A(FF,F3,F4,F9)A(FF,F2,F4,F9)A(FF,F1,F3,F9)A(FF,F1,F2,F9)A(FF,EF,F2,F9)A(FF,EF,F1,F9)A(FF,EE,F1,F9)A(FF,ED,EF,F9)A(FF,EC,EF,F9)A(FF,EC,EE,F9)A(FF,EB,ED,F9)A(FF,EA,ED,F9)A(FF,EA,ED,F9)A(FF,E8,ED,F9)A(FF,E8,EB,F9)A(FF,E8,EB,F9)A(FF,E7,EB,F9)A(FF,E7,EB,F9)A(FF,BA,C2,E0)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,BA,C2,E0)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F4,F5,F9)A(FF,F4,F5,F9)A(FF,F2,F3,F8)A(FF,F2,F4,F9)A(FF,F2,F4,F9)A(FF,F1,F2,F9)A(FF,F0,F2,F9)A(FF,EF,F2,F9)
				A(FF,EF,F1,F9)A(FF,EE,F0,F9)A(FF,ED,EF,F9)A(FF,EC,EF,F9)A(FF,EC,EF,F9)A(FF,EB,ED,F9)A(FF,EA,ED,F9)A(FF,EA,ED,F9)A(FF,E9,EC,F9)A(FF,E8,EB,F9)A(FF,E8,EB,F9)A(FF,E7,EB,F9)A(FF,E6,EB,F9)A(FF,BA,C2,E0)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,BA,C2,E0)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F4,F6,F9)A(FF,F5,F5,F9)A(FF,F4,F5,F9)A(FF,F3,F4,F9)A(FF,F2,F4,F8)A(FF,F2,F3,F8)A(FF,F1,F3,F9)A(FF,F1,F2,F9)A(FF,F0,F2,F9)A(FF,EF,F2,F9)A(FF,EF,F1,F9)A(FF,ED,F0,F9)A(FF,ED,EF,F9)A(FF,EC,EE,F9)A(FF,EC,EE,F9)A(FF,EA,ED,F9)A(FF,EA,ED,F9)A(FF,EA,ED,F9)A(FF,E8,EC,F9)A(FF,E8,EB,F9)A(FF,E8,EB,F9)A(FF,E7,EA,F9)A(FF,E7,EB,F9)A(FF,BA,C2,E0)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,BA,C2,E0)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F4,F6,F9)A(FF,F5,F5,F9)A(FF,F3,F5,F9)A(FF,F3,F4,F9)A(FF,F3,F4,F9)A(FF,F2,F3,F8)A(FF,F1,F3,F9)A(FF,F1,F2,F9)
				A(FF,EF,F2,F9)A(FF,EF,F1,F9)A(FF,EF,F1,F9)A(FF,EE,F0,F9)A(FF,EC,EF,F9)A(FF,EC,EE,F9)A(FF,EB,ED,F9)A(FF,EA,ED,F9)A(FF,EA,ED,F9)A(FF,E9,EC,F9)A(FF,E8,EB,F9)A(FF,E8,EB,F9)A(FF,E8,EB,F9)A(FF,E7,EB,F9)A(FF,E6,EA,F9)A(FF,BA,C2,E0)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,BA,C2,E0)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F5,F6,F9)A(FF,F4,F5,F9)A(FF,F3,F5,F9)A(FF,F3,F4,F9)A(FF,F3,F4,F9)A(FF,F2,F4,F9)A(FF,F1,F2,F9)A(FF,F1,F2,F9)A(FF,F0,F2,F9)A(FF,EF,F1,F9)A(FF,EF,F0,F9)A(FF,ED,EF,F9)A(FF,EC,EF,F9)A(FF,EC,EE,F9)A(FF,EB,ED,F9)A(FF,EA,ED,F9)A(FF,E9,ED,F9)A(FF,E9,ED,F9)A(FF,E8,EB,F9)A(FF,E8,EB,F9)A(FF,E7,EB,F9)A(FF,E6,EB,F9)A(FF,E6,EB,F9)A(FF,BA,C2,E0)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,C8,CE,E4)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)
				A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,BA,C2,E0)A(FF,C8,CE,E4)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)
				A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(FF,A9,A9,AB)A(FF,BC,BF,C7)A(FF,D2,D5,DE)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA);
				memcpy ((EIF_NATURAL_32 *)$a_ptr + $a_offset, &l_data, sizeof l_data - 1);
			}
			]"
		end

	c_colors_3 (a_ptr: POINTER; a_offset: INTEGER) is
			-- Fill `a_ptr' with colors data from `a_offset'.
		external
			"C inline"
		alias
			"[
			{
				#define B(q) \
					#q
				#ifdef EIF_WINDOWS
				#define A(a,r,g,b) \
					B(\x##b\x##g\x##r\x##a)
				#else
				#define A(a,r,g,b) \
					B(\x##r\x##g\x##b\x##a)
				#endif
				char l_data[] = 
				A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,DD,E0,EA)A(FF,A9,A9,AB)A(5F,00,00,00)A(3A,00,00,00)A(1D,00,00,00)A(0A,00,00,00)A(9A,A4,A4,A6)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(FF,A9,A9,AB)A(C6,80,80,81)A(59,00,00,00)A(36,00,00,00)A(1B,00,00,00)A(09,00,00,00)A(08,00,00,00)A(17,00,00,00)A(2F,00,00,00)A(4D,00,00,00)A(65,00,00,00)A(74,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)
				A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(7C,00,00,00)A(74,00,00,00)A(65,00,00,00)A(4D,00,00,00)A(2F,00,00,00)A(17,00,00,00)A(08,00,00,00)A(06,00,00,00)A(12,00,00,00)A(24,00,00,00)A(3C,00,00,00)A(4D,00,00,00)A(59,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(5F,00,00,00)A(59,00,00,00)A(4D,00,00,00)A(3C,00,00,00)A(24,00,00,00)A(12,00,00,00)A(06,00,00,00)A(04,00,00,00)A(0B,00,00,00)A(16,00,00,00)A(24,00,00,00)A(2F,00,00,00)A(36,00,00,00)A(3A,00,00,00)
				A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(3A,00,00,00)A(36,00,00,00)A(2F,00,00,00)A(24,00,00,00)A(16,00,00,00)A(0B,00,00,00)A(04,00,00,00)A(02,00,00,00)A(05,00,00,00)A(0B,00,00,00)A(12,00,00,00)A(17,00,00,00)A(1B,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1D,00,00,00)A(1B,00,00,00)A(17,00,00,00)A(12,00,00,00)A(0B,00,00,00)A(05,00,00,00)A(02,00,00,00);
				memcpy ((EIF_NATURAL_32 *)$a_ptr + $a_offset, &l_data, sizeof l_data - 1);
			}
			]"
		end

	build_colors (a_ptr: POINTER) is
			-- Build `colors'.
		do
			c_colors_0 (a_ptr, 0)
			c_colors_1 (a_ptr, 400)
			c_colors_2 (a_ptr, 800)
			c_colors_3 (a_ptr, 1200)
		end

feature {NONE} -- Image data filling.

	fill_memory is
			-- Fill image data into memory.
		local
			l_imp: EV_PIXEL_BUFFER_IMP
			l_pointer: POINTER
		do
			l_imp ?= implementation
			check not_void: l_imp /= Void end

			l_pointer := l_imp.data_ptr
			if l_pointer /= default_pointer then
				build_colors (l_pointer)
				l_imp.unlock
			end
		end

indexing
	library:	"SmartDocking: Library of reusable components for Eiffel."
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"


end -- SD_UP_ICON
