indexing
	description: "This class represents the color names";
	status: "See notice at end of class";
	date: "$Date$";
	revision: "$Revision$"

class
	COLOR_NAMES_WINDOWS

inherit

	WEL_COLOR_CONSTANTS

feature -- Access

	names: HASH_TABLE [RGB_TRIPLE, STRING] is
			-- Fill the hash-table when called
		once
			!! Result.make (800)
			add_names
		end

feature {NONE} -- Implementation

	add_names is 
		local
			color: WEL_COLOR_REF
		do
			add_name (255, 250, 250, "snow")
			add_name (248, 248, 255, "ghost white")
			add_name (248, 248, 255, "GhostWhite")
			add_name (245, 245, 245, "white smoke")
			add_name (245, 245, 245, "WhiteSmoke")
			add_name (220, 220, 220, "gainsboro")
			add_name (255, 250, 240, "floral white")
			add_name (255, 250, 240, "FloralWhite")
			add_name (253, 245, 230, "old lace")
			add_name (253, 245, 230, "OldLace")
			add_name (250, 240, 230, "linen")
			add_name (250, 235, 215, "antique white")
			add_name (250, 235, 215, "AntiqueWhite")
			add_name (255, 239, 213, "papaya whip")
			add_name (255, 239, 213, "PapayaWhip")
			add_name (255, 235, 205, "blanched almond")
			add_name (255, 235, 205, "BlanchedAlmond")
			add_name (255, 228, 196, "bisque")
			add_name (255, 218, 185, "peach puff")
			add_name (255, 218, 185, "PeachPuff")
			add_name (255, 222, 173, "navajo white")
			add_name (255, 222, 173, "NavajoWhite")
			add_name (255, 228, 181, "moccasin")
			add_name (255, 248, 220, "cornsilk")
			add_name (255, 255, 240, "ivory")
			add_name (255, 250, 205, "lemon chiffon")
			add_name (255, 250, 205, "LemonChiffon")
			add_name (255, 245, 238, "seashell")
			add_name (240, 255, 240, "honeydew")
			add_name (245, 255, 250, "mint cream")
			add_name (245, 255, 250, "MintCream")
			add_name (240, 255, 255, "azure")
			add_name (240, 248, 255, "alice blue")
			add_name (240, 248, 255, "AliceBlue")
			add_name (230, 230, 250, "lavender")
			add_name (255, 240, 245, "lavender blush")
			add_name (255, 240, 245, "LavenderBlush")
			add_name (255, 228, 225, "misty rose")
			add_name (255, 228, 225, "MistyRose")
			add_name (255, 255, 255, "white")
			add_name (0, 0, 0, "black")
			add_name (47, 79, 79, "dark slate gray")
			add_name (47, 79, 79, "DarkSlateGray")
			add_name (47, 79, 79, "dark slate grey")
			add_name (47, 79, 79, "DarkSlateGrey")
			add_name (105, 105, 105, "dim gray")
			add_name (105, 105, 105, "DimGray")
			add_name (105, 105, 105, "dim grey")
			add_name (105, 105, 105, "DimGrey")
			add_name (128, 128, 128, "slate gray")
			add_name (128, 128, 128, "SlateGray")
			add_name (128, 128, 128, "slate grey")
			add_name (128, 128, 128, "SlateGrey")
			add_name (128, 128, 128, "DarkGrey")
			add_name (119, 136, 153, "light slate gray")
			add_name (119, 136, 153, "LightSlateGray")
			add_name (119, 136, 153, "light slate grey")
			add_name (119, 136, 153, "LightSlateGrey")
			add_name (192, 192, 192, "gray")
			add_name (192, 192, 192, "grey")
			add_name (211, 211, 211, "light grey")
			add_name (211, 211, 211, "LightGrey")
			add_name (211, 211, 211, "light gray")
			add_name (211, 211, 211, "LightGray")
			add_name (25, 25, 112, "midnight blue")
			add_name (25, 25, 112, "MidnightBlue")
			add_name (0, 0, 128, "navy")
			add_name (0, 0, 128, "DarkBlue")
			add_name (0, 0, 128, "navy blue")
			add_name (0, 0, 128, "NavyBlue")
			add_name (100, 149, 237, "cornflower blue")
			add_name (100, 149, 237, "CornflowerBlue")
			add_name (72, 61, 139, "dark slate blue")
			add_name (72, 61, 139, "DarkSlateBlue")
			add_name (106, 90, 205, "slate blue")
			add_name (106, 90, 205, "SlateBlue")
			add_name (123, 104, 238, "medium slate blue")
			add_name (123, 104, 238, "MediumSlateBlue")
			add_name (132, 112, 255, "light slate blue")
			add_name (132, 112, 255, "LightSlateBlue")
			add_name (0, 0, 205, "medium blue")
			add_name (0, 0, 205, "MediumBlue")
			add_name (65, 105, 225, "royal blue")
			add_name (65, 105, 225, "RoyalBlue")
			add_name (0, 0, 255, "blue")
			add_name (30, 144, 255, "dodger blue")
			add_name (30, 144, 255, "DodgerBlue")
			add_name (0, 191, 255, "deep sky blue")
			add_name (0, 191, 255, "DeepSkyBlue")
			add_name (135, 206, 235, "sky blue")
			add_name (135, 206, 235, "SkyBlue")
			add_name (135, 206, 250, "light sky blue")
			add_name (135, 206, 250, "LightSkyBlue")
			add_name (70, 130, 180, "steel blue")
			add_name (70, 130, 180, "SteelBlue")
			add_name (176, 196, 222, "light steel blue")
			add_name (176, 196, 222, "LightSteelBlue")
			add_name (173, 216, 230, "light blue")
			add_name (173, 216, 230, "LightBlue")
			add_name (176, 224, 230, "powder blue")
			add_name (176, 224, 230, "PowderBlue")
			add_name (175, 238, 238, "pale turquoise")
			add_name (175, 238, 238, "PaleTurquoise")
			add_name (0, 206, 209, "dark turquoise")
			add_name (0, 206, 209, "DarkTurquoise")
			add_name (72, 209, 204, "medium turquoise")
			add_name (72, 209, 204, "MediumTurquoise")
			add_name (64, 224, 208, "turquoise")
			add_name (0, 255, 255, "cyan")
			add_name (0, 128, 128, "DarkCyan")
			add_name (224, 255, 255, "light cyan")
			add_name (224, 255, 255, "LightCyan")
			add_name (95, 158, 160, "cadet blue")
			add_name (95, 158, 160, "CadetBlue")
			add_name (102, 205, 170, "medium aquamarine")
			add_name (102, 205, 170, "MediumAquamarine")
			add_name (127, 255, 212, "aquamarine")
			add_name (0, 128, 0, "dark green")
			add_name (0, 128, 0, "DarkGreen")
			add_name (85, 107, 47, "dark olive green")
			add_name (85, 107, 47, "DarkOliveGreen")
			add_name (143, 188, 143, "dark sea green")
			add_name (143, 188, 143, "DarkSeaGreen")
			add_name (46, 139, 87, "sea green")
			add_name (46, 139, 87, "SeaGreen")
			add_name (60, 179, 113, "medium sea green")
			add_name (60, 179, 113, "MediumSeaGreen")
			add_name (32, 178, 170, "light sea green")
			add_name (32, 178, 170, "LightSeaGreen")
			add_name (152, 251, 152, "pale green")
			add_name (152, 251, 152, "PaleGreen")
			add_name (0, 255, 127, "spring green")
			add_name (0, 255, 127, "SpringGreen")
			add_name (124, 252, 0, "lawn green")
			add_name (124, 252, 0, "LawnGreen")
			add_name (0, 255, 0, "green")
			add_name (0, 128, 0, "DarkGreen")
			add_name (127, 255, 0, "chartreuse")
			add_name (0, 250, 154, "medium spring green")
			add_name (0, 250, 154, "MediumSpringGreen")
			add_name (173, 255, 47, "green yellow")
			add_name (173, 255, 47, "GreenYellow")
			add_name (50, 205, 50, "lime green")
			add_name (50, 205, 50, "LimeGreen")
			add_name (154, 205, 50, "yellow green")
			add_name (154, 205, 50, "YellowGreen")
			add_name (34, 139, 34, "forest green")
			add_name (34, 139, 34, "ForestGreen")
			add_name (107, 142, 35, "olive drab")
			add_name (107, 142, 35, "OliveDrab")
			add_name (189, 183, 107, "dark khaki")
			add_name (189, 183, 107, "DarkKhaki")
			add_name (240, 230, 140, "khaki")
			add_name (238, 232, 170, "pale goldenrod")
			add_name (238, 232, 170, "PaleGoldenrod")
			add_name (250, 250, 210, "light goldenrod yellow")
			add_name (250, 250, 210, "LightGoldenrodYellow")
			add_name (255, 255, 224, "light yellow")
			add_name (255, 255, 224, "LightYellow")
			add_name (255, 255, 0, "yellow")
			add_name (128, 128, 0, "DarkYellow")
			add_name (255, 215, 0 , "gold")
			add_name (238, 221, 130, "light goldenrod")
			add_name (238, 221, 130, "LightGoldenrod")
			add_name (218, 165, 32, "goldenrod")
			add_name (184, 134, 11, "dark goldenrod")
			add_name (184, 134, 11, "DarkGoldenrod")
			add_name (188, 143, 143, "rosy brown")
			add_name (188, 143, 143, "RosyBrown")
			add_name (205, 92, 92, "indian red")
			add_name (205, 92, 92, "IndianRed")
			add_name (139, 69, 19, "saddle brown")
			add_name (139, 69, 19, "SaddleBrown")
			add_name (160, 82, 45, "sienna")
			add_name (205, 133, 63, "peru")
			add_name (222, 184, 135, "burlywood")
			add_name (245, 245, 220, "beige")
			add_name (245, 222, 179, "wheat")
			add_name (244, 164, 96, "sandy brown")
			add_name (244, 164, 96, "SandyBrown")
			add_name (210, 180, 140, "tan")
			add_name (210, 105, 30, "chocolate")
			add_name (178, 34, 34, "firebrick")
			add_name (165, 42, 42, "brown")
			add_name (233, 150, 122, "dark salmon")
			add_name (233, 150, 122, "DarkSalmon")
			add_name (250, 128, 114, "salmon")
			add_name (255, 160, 122, "light salmon")
			add_name (255, 160, 122, "LightSalmon")
			add_name (255, 165, 0, "orange")
			add_name (255, 140, 0, "dark orange")
			add_name (255, 140, 0, "DarkOrange")
			add_name (255, 127, 80, "coral")
			add_name (240, 128, 128, "light coral")
			add_name (240, 128, 128, "LightCoral")
			add_name (255, 99, 71, "tomato")
			add_name (255, 69, 0, "orange red")
			add_name (255, 69, 0, "OrangeRed")
			add_name (255, 0, 0, "red")
			add_name (128, 0, 0, "DarkRed")
			add_name (255, 105, 180, "hot pink")
			add_name (255, 105, 180, "HotPink")
			add_name (255, 20, 147, "deep pink")
			add_name (255, 20, 147, "DeepPink")
			add_name (255, 192, 203, "pink")
			add_name (255, 182, 193, "light pink")
			add_name (255, 182, 193, "LightPink")
			add_name (219, 112, 147, "pale violet red")
			add_name (219, 112, 147, "PaleVioletRed")
			add_name (176, 48, 96, "maroon")
			add_name (199, 21, 133, "medium violet red")
			add_name (199, 21, 133, "MediumVioletRed")
			add_name (208, 32, 144, "violet red")
			add_name (208, 32, 144, "VioletRed")
			add_name (255, 0, 255, "magenta")
			add_name (238, 130, 238, "violet")
			add_name (221, 160, 221, "plum")
			add_name (218, 112, 214, "orchid")
			add_name (186, 85, 211, "medium orchid")
			add_name (186, 85, 211, "MediumOrchid")
			add_name (153, 50, 204, "dark orchid")
			add_name (153, 50, 204, "DarkOrchid")
			add_name (148, 0, 211, "dark violet")
			add_name (148, 0, 211, "DarkViolet")
			add_name (138, 43, 226, "blue violet")
			add_name (138, 43, 226, "BlueViolet")
			add_name (160, 32, 240, "purple")
			add_name (147, 112, 219, "medium purple")
			add_name (147, 112, 219, "MediumPurple")
			add_name (216, 191, 216, "thistle")
			add_name (255, 250, 250, "snow1")
			add_name (238, 233, 233, "snow2")
			add_name (205, 201, 201, "snow3")
			add_name (139, 137, 137, "snow4")
			add_name (255, 245, 238, "seashell1")
			add_name (238, 229, 222, "seashell2")
			add_name (205, 197, 191, "seashell3")
			add_name (139, 134, 130, "seashell4")
			add_name (255, 239, 219, "AntiqueWhite1")
			add_name (238, 223, 204, "AntiqueWhite2")
			add_name (205, 192, 176, "AntiqueWhite3")
			add_name (139, 131, 120, "AntiqueWhite4")
			add_name (255, 228, 196, "bisque1")
			add_name (238, 213, 183, "bisque2")
			add_name (205, 183, 158, "bisque3")
			add_name (139, 125, 107, "bisque4")
			add_name (255, 218, 185, "PeachPuff1")
			add_name (238, 203, 173, "PeachPuff2")
			add_name (205, 175, 149, "PeachPuff3")
			add_name (139, 119, 101, "PeachPuff4")
			add_name (255, 222, 173, "NavajoWhite1")
			add_name (238, 207, 161, "NavajoWhite2")
			add_name (205, 179, 139, "NavajoWhite3")
			add_name (139, 121, 94, "NavajoWhite4")
			add_name (255, 250, 205, "LemonChiffon1")
			add_name (238, 233, 191, "LemonChiffon2")
			add_name (205, 201, 165, "LemonChiffon3")
			add_name (139, 137, 112, "LemonChiffon4")
			add_name (255, 248, 220, "cornsilk1")
			add_name (238, 232, 205, "cornsilk2")
			add_name (205, 200, 177, "cornsilk3")
			add_name (139, 136, 120, "cornsilk4")
			add_name (255, 255, 240, "ivory1")
			add_name (238, 238, 224, "ivory2")
			add_name (205, 205, 193, "ivory3")
			add_name (139, 139, 131, "ivory4")
			add_name (240, 255, 240, "honeydew1")
			add_name (224, 238, 224, "honeydew2")
			add_name (193, 205, 193, "honeydew3")
			add_name (131, 139, 131, "honeydew4")
			add_name (255, 240, 245, "LavenderBlush1")
			add_name (238, 224, 229, "LavenderBlush2")
			add_name (205, 193, 197, "LavenderBlush3")
			add_name (139, 131, 134, "LavenderBlush4")
			add_name (255, 228, 225, "MistyRose1")
			add_name (238, 213, 210, "MistyRose2")
			add_name (205, 183, 181, "MistyRose3")
			add_name (139, 125, 123, "MistyRose4")
			add_name (240, 255, 255, "azure1")
			add_name (224, 238, 238, "azure2")
			add_name (193, 205, 205, "azure3")
			add_name (131, 139, 139, "azure4")
			add_name (131, 111, 255, "SlateBlue1")
			add_name (122, 103, 238, "SlateBlue2")
			add_name (105, 89, 205, "SlateBlue3")
			add_name (71, 60, 139, "SlateBlue4")
			add_name (72, 118, 255, "RoyalBlue1")
			add_name (67, 110, 238, "RoyalBlue2")
			add_name (58, 95, 205, "RoyalBlue3")
			add_name (39, 64, 139, "RoyalBlue4")
			add_name (0, 0, 255, "blue1")
			add_name (0, 0, 238, "blue2")
			add_name (0, 0, 205, "blue3")
			add_name (0, 0, 139, "blue4")
			add_name (30, 144, 255, "DodgerBlue1")
			add_name (28, 134, 238, "DodgerBlue2")
			add_name (24, 116, 205, "DodgerBlue3")
			add_name (16, 78, 139, "DodgerBlue4")
			add_name (99, 184, 255, "SteelBlue1")
			add_name (92, 172, 238, "SteelBlue2")
			add_name (79, 148, 205, "SteelBlue3")
			add_name (54, 100, 139, "SteelBlue4")
			add_name (0, 191, 255, "DeepSkyBlue1")
			add_name (0, 178, 238, "DeepSkyBlue2")
			add_name (0, 154, 205, "DeepSkyBlue3")
			add_name (0, 104, 139, "DeepSkyBlue4")
			add_name (135, 206, 255, "SkyBlue1")
			add_name (126, 192, 238, "SkyBlue2")
			add_name (108, 166, 205, "SkyBlue3")
			add_name (74, 112, 139, "SkyBlue4")
			add_name (176, 226, 255, "LightSkyBlue1")
			add_name (164, 211, 238, "LightSkyBlue2")
			add_name (141, 182, 205, "LightSkyBlue3")
			add_name (96, 123, 139, "LightSkyBlue4")
			add_name (198, 226, 255, "SlateGray1")
			add_name (185, 211, 238, "SlateGray2")
			add_name (159, 182, 205, "SlateGray3")
			add_name (108, 123, 139, "SlateGray4")
			add_name (202, 225, 255, "LightSteelBlue1")
			add_name (188, 210, 238, "LightSteelBlue2")
			add_name (162, 181, 205, "LightSteelBlue3")
			add_name (110, 123, 139, "LightSteelBlue4")
			add_name (191, 239, 255, "LightBlue1")
			add_name (178, 223, 238, "LightBlue2")
			add_name (154, 192, 205, "LightBlue3")
			add_name (104, 131, 139, "LightBlue4")
			add_name (224, 255, 255, "LightCyan1")
			add_name (209, 238, 238, "LightCyan2")
			add_name (180, 205, 205, "LightCyan3")
			add_name (122, 139, 139, "LightCyan4")
			add_name (187, 255, 255, "PaleTurquoise1")
			add_name (174, 238, 238, "PaleTurquoise2")
			add_name (150, 205, 205, "PaleTurquoise3")
			add_name (102, 139, 139, "PaleTurquoise4")
			add_name (152, 245, 255, "CadetBlue1")
			add_name (142, 229, 238, "CadetBlue2")
			add_name (122, 197, 205, "CadetBlue3")
			add_name (83, 134, 139, "CadetBlue4")
			add_name (0, 245, 255, "turquoise1")
			add_name (0, 229, 238, "turquoise2")
			add_name (0, 197, 205, "turquoise3")
			add_name (0, 134, 139, "turquoise4")
			add_name (0, 255, 255, "cyan1")
			add_name (0, 238, 238, "cyan2")
			add_name (0, 205, 205, "cyan3")
			add_name (0, 139, 139, "cyan4")
			add_name (151, 255, 255, "DarkSlateGray1")
			add_name (141, 238, 238, "DarkSlateGray2")
			add_name (121, 205, 205, "DarkSlateGray3")
			add_name (82, 139, 139, "DarkSlateGray4")
			add_name (127, 255, 212, "aquamarine1")
			add_name (118, 238, 198, "aquamarine2")
			add_name (102, 205, 170, "aquamarine3")
			add_name (69, 139, 116, "aquamarine4")
			add_name (193, 255, 193, "DarkSeaGreen1")
			add_name (180, 238, 180, "DarkSeaGreen2")
			add_name (155, 205, 155, "DarkSeaGreen3")
			add_name (105, 139, 105, "DarkSeaGreen4")
			add_name (84, 255, 159, "SeaGreen1")
			add_name (78, 238, 148, "SeaGreen2")
			add_name (67, 205, 128, "SeaGreen3")
			add_name (46, 139, 87, "SeaGreen4")
			add_name (154, 255, 154, "PaleGreen1")
			add_name (144, 238, 144, "PaleGreen2")
			add_name (124, 205, 124, "PaleGreen3")
			add_name (84, 139, 84, "PaleGreen4")
			add_name (0, 255, 127, "SpringGreen1")
			add_name (0, 238, 118, "SpringGreen2")
			add_name (0, 205, 102, "SpringGreen3")
			add_name (0, 139, 69, "SpringGreen4")
			add_name (0, 255, 0, "green1")
			add_name (0, 238, 0, "green2")
			add_name (0, 205, 0, "green3")
			add_name (0, 139, 0, "green4")
			add_name (127, 255, 0, "chartreuse1")
			add_name (118, 238, 0, "chartreuse2")
			add_name (102, 205, 0, "chartreuse3")
			add_name (69, 139, 0, "chartreuse4")
			add_name (192, 255, 62, "OliveDrab1")
			add_name (179, 238, 58, "OliveDrab2")
			add_name (154, 205, 50, "OliveDrab3")
			add_name (105, 139, 34, "OliveDrab4")
			add_name (202, 255, 112, "DarkOliveGreen1")
			add_name (188, 238, 104, "DarkOliveGreen2")
			add_name (162, 205, 90, "DarkOliveGreen3")
			add_name (110, 139, 61, "DarkOliveGreen4")
			add_name (255, 246, 143, "khaki1")
			add_name (238, 230, 133, "khaki2")
			add_name (205, 198, 115, "khaki3")
			add_name (139, 134, 78, "khaki4")
			add_name (255, 236, 139, "LightGoldenrod1")
			add_name (238, 220, 130, "LightGoldenrod2")
			add_name (205, 190, 112, "LightGoldenrod3")
			add_name (139, 129, 76, "LightGoldenrod4")
			add_name (255, 255, 224, "LightYellow1")
			add_name (238, 238, 209, "LightYellow2")
			add_name (205, 205, 180, "LightYellow3")
			add_name (139, 139, 122, "LightYellow4")
			add_name (255, 255, 0, "yellow1")
			add_name (238, 238, 0, "yellow2")
			add_name (205, 205, 0, "yellow3")
			add_name (139, 139, 0, "yellow4")
			add_name (255, 215, 0, "gold1")
			add_name (238, 201, 0, "gold2")
			add_name (205, 173, 0, "gold3")
			add_name (139, 117, 0, "gold4")
			add_name (255, 193, 37, "goldenrod1")
			add_name (238, 180, 34, "goldenrod2")
			add_name (205, 155, 29, "goldenrod3")
			add_name (139, 105, 20, "goldenrod4")
			add_name (255, 185, 15, "DarkGoldenrod1")
			add_name (238, 173, 14, "DarkGoldenrod2")
			add_name (205, 149, 12, "DarkGoldenrod3")
			add_name (139, 101, 8, "DarkGoldenrod4")
			add_name (255, 193, 193, "RosyBrown1")
			add_name (238, 180, 180, "RosyBrown2")
			add_name (205, 155, 155, "RosyBrown3")
			add_name (139, 105, 105, "RosyBrown4")
			add_name (255, 106, 106, "IndianRed1")
			add_name (238, 99, 99, "IndianRed2")
			add_name (205, 85, 85, "IndianRed3")
			add_name (139, 58, 58, "IndianRed4")
			add_name (255, 130, 71, "sienna1")
			add_name (238, 121, 66, "sienna2")
			add_name (205, 104, 57, "sienna3")
			add_name (139, 71, 38, "sienna4")
			add_name (255, 211, 155, "burlywood1")
			add_name (238, 197, 145, "burlywood2")
			add_name (205, 170, 125, "burlywood3")
			add_name (139, 115, 85, "burlywood4")
			add_name (255, 231, 186, "wheat1")
			add_name (238, 216, 174, "wheat2")
			add_name (205, 186, 150, "wheat3")
			add_name (139, 126, 102, "wheat4")
			add_name (255, 165, 79, "tan1")
			add_name (238, 154, 73, "tan2")
			add_name (205, 133, 63, "tan3")
			add_name (139, 90, 43, "tan4")
			add_name (255, 127, 36, "chocolate1")
			add_name (238, 118, 33, "chocolate2")
			add_name (205, 102, 29, "chocolate3")
			add_name (139, 69, 19, "chocolate4")
			add_name (255, 48, 48, "firebrick1")
			add_name (238, 44, 44, "firebrick2")
			add_name (205, 38, 38, "firebrick3")
			add_name (139, 26, 26, "firebrick4")
			add_name (255, 64, 64, "brown1")
			add_name (238, 59, 59, "brown2")
			add_name (205, 51, 51, "brown3")
			add_name (139, 35, 35, "brown4")
			add_name (255, 140, 105, "salmon1")
			add_name (238, 130, 98, "salmon2")
			add_name (205, 112, 84, "salmon3")
			add_name (139, 76, 57, "salmon4")
			add_name (255, 160, 122, "LightSalmon1")
			add_name (238, 149, 114, "LightSalmon2")
			add_name (205, 129, 98, "LightSalmon3")
			add_name (139, 87, 66, "LightSalmon4")
			add_name (255, 165, 0, "orange1")
			add_name (238, 154, 0, "orange2")
			add_name (205, 133, 0, "orange3")
			add_name (139, 90, 0, "orange4")
			add_name (255, 127, 0, "DarkOrange1")
			add_name (238, 118, 0, "DarkOrange2")
			add_name (205, 102, 0, "DarkOrange3")
			add_name (139, 69, 0, "DarkOrange4")
			add_name (255, 114, 86, "coral1")
			add_name (238, 106, 80, "coral2")
			add_name (205, 91, 69, "coral3")
			add_name (139, 62, 47, "coral4")
			add_name (255, 99, 71, "tomato1")
			add_name (238, 92, 66, "tomato2")
			add_name (205, 79, 57, "tomato3")
			add_name (139, 54, 38, "tomato4")
			add_name (255, 69, 0, "OrangeRed1")
			add_name (238, 64, 0, "OrangeRed2")
			add_name (205, 55, 0, "OrangeRed3")
			add_name (139, 37, 0, "OrangeRed4")
			add_name (255, 0, 0, "red1")
			add_name (238, 0, 0, "red2")
			add_name (205, 0, 0, "red3")
			add_name (139, 0, 0, "red4")
			add_name (255, 20, 147, "DeepPink1")
			add_name (238, 18, 137, "DeepPink2")
			add_name (205, 16, 118, "DeepPink3")
			add_name (139, 10, 80, "DeepPink4")
			add_name (255, 110, 180, "HotPink1")
			add_name (238, 106, 167, "HotPink2")
			add_name (205, 96, 144, "HotPink3")
			add_name (139, 58, 98, "HotPink4")
			add_name (255, 181, 197, "pink1")
			add_name (238, 169, 184, "pink2")
			add_name (205, 145, 158, "pink3")
			add_name (139, 99, 108, "pink4")
			add_name (255, 174, 185, "LightPink1")
			add_name (238, 162, 173, "LightPink2")
			add_name (205, 140, 149, "LightPink3")
			add_name (139, 95, 101, "LightPink4")
			add_name (255, 130, 171, "PaleVioletRed1")
			add_name (238, 121, 159, "PaleVioletRed2")
			add_name (205, 104, 137, "PaleVioletRed3")
			add_name (139, 71, 93, "PaleVioletRed4")
			add_name (255, 52, 179, "maroon1")
			add_name (238, 48, 167, "maroon2")
			add_name (205, 41, 144, "maroon3")
			add_name (139, 28, 98, "maroon4")
			add_name (255, 62, 150, "VioletRed1")
			add_name (238, 58, 140, "VioletRed2")
			add_name (205, 50, 120, "VioletRed3")
			add_name (139, 34, 82, "VioletRed4")
			add_name (128, 0, 128, "DarkMagenta")
			add_name (255, 0, 255, "magenta1")
			add_name (238, 0, 238, "magenta2")
			add_name (205, 0, 205, "magenta3")
			add_name (139, 0, 139, "magenta4")
			add_name (255, 131, 250, "orchid1")
			add_name (238, 122, 233, "orchid2")
			add_name (205, 105, 201, "orchid3")
			add_name (139, 71, 137, "orchid4")
			add_name (255, 187, 255, "plum1")
			add_name (238, 174, 238, "plum2")
			add_name (205, 150, 205, "plum3")
			add_name (139, 102, 139, "plum4")
			add_name (224, 102, 255, "MediumOrchid1")
			add_name (209, 95, 238, "MediumOrchid2")
			add_name (180, 82, 205, "MediumOrchid3")
			add_name (122, 55, 139, "MediumOrchid4")
			add_name (191, 62, 255, "DarkOrchid1")
			add_name (178, 58, 238, "DarkOrchid2")
			add_name (154, 50, 205, "DarkOrchid3")
			add_name (104, 34, 139, "DarkOrchid4")
			add_name (155, 48, 255, "purple1")
			add_name (145, 44, 238, "purple2")
			add_name (125, 38, 205, "purple3")
			add_name (85, 26, 139, "purple4")
			add_name (171, 130, 255, "MediumPurple1")
			add_name (159, 121, 238, "MediumPurple2")
			add_name (137, 104, 205, "MediumPurple3")
			add_name (93, 71, 139, "MediumPurple4")
			add_name (255, 225, 255, "thistle1")
			add_name (238, 210, 238, "thistle2")
			add_name (205, 181, 205, "thistle3")
			add_name (139, 123, 139, "thistle4")
			add_name (0, 0, 0, "gray0")
			add_name (0, 0, 0, "grey0")
			add_name (3, 3, 3, "gray1")
			add_name (3, 3, 3, "grey1")
			add_name (5, 5, 5, "gray2")
			add_name (5, 5, 5, "grey2")
			add_name (8, 8, 8, "gray3")
			add_name (8, 8, 8, "grey3")
			add_name (10, 10, 10, "gray4")
			add_name (10, 10, 10, "grey4")
			add_name (13, 13, 13, "gray5")
			add_name (13, 13, 13, "grey5")
			add_name (15, 15, 15, "gray6")
			add_name (15, 15, 15, "grey6")
			add_name (18, 18, 18, "gray7")
			add_name (18, 18, 18, "grey7")
			add_name (20, 20, 20, "gray8")
			add_name (20, 20, 20, "grey8")
			add_name (23, 23, 23, "gray9")
			add_name (23, 23, 23, "grey9")
			add_name (26, 26, 26, "gray10")
			add_name (26, 26, 26, "grey10")
			add_name (28, 28, 28, "gray11")
			add_name (28, 28, 28, "grey11")
			add_name (31, 31, 31, "gray12")
			add_name (31, 31, 31, "grey12")
			add_name (33, 33, 33, "gray13")
			add_name (33, 33, 33, "grey13")
			add_name (36, 36, 36, "gray14")
			add_name (36, 36, 36, "grey14")
			add_name (38, 38, 38, "gray15")
			add_name (38, 38, 38, "grey15")
			add_name (41, 41, 41, "gray16")
			add_name (41, 41, 41, "grey16")
			add_name (43, 43, 43, "gray17")
			add_name (43, 43, 43, "grey17")
			add_name (46, 46, 46, "gray18")
			add_name (46, 46, 46, "grey18")
			add_name (48, 48, 48, "gray19")
			add_name (48, 48, 48, "grey19")
			add_name (51, 51, 51, "gray20")
			add_name (51, 51, 51, "grey20")
			add_name (54, 54, 54, "gray21")
			add_name (54, 54, 54, "grey21")
			add_name (56, 56, 56, "gray22")
			add_name (56, 56, 56, "grey22")
			add_name (59, 59, 59, "gray23")
			add_name (59, 59, 59, "grey23")
			add_name (61, 61, 61, "gray24")
			add_name (61, 61, 61, "grey24")
			add_name (64, 64, 64, "gray25")
			add_name (64, 64, 64, "grey25")
			add_name (66, 66, 66, "gray26")
			add_name (66, 66, 66, "grey26")
			add_name (69, 69, 69, "gray27")
			add_name (69, 69, 69, "grey27")
			add_name (71, 71, 71, "gray28")
			add_name (71, 71, 71, "grey28")
			add_name (74, 74, 74, "gray29")
			add_name (74, 74, 74, "grey29")
			add_name (77, 77, 77, "gray30")
			add_name (77, 77, 77, "grey30")
			add_name (79, 79, 79, "gray31")
			add_name (79, 79, 79, "grey31")
			add_name (82, 82, 82, "gray32")
			add_name (82, 82, 82, "grey32")
			add_name (84, 84, 84, "gray33")
			add_name (84, 84, 84, "grey33")
			add_name (87, 87, 87, "gray34")
			add_name (87, 87, 87, "grey34")
			add_name (89, 89, 89, "gray35")
			add_name (89, 89, 89, "grey35")
			add_name (92, 92, 92, "gray36")
			add_name (92, 92, 92, "grey36")
			add_name (94, 94, 94, "gray37")
			add_name (94, 94, 94, "grey37")
			add_name (97, 97, 97, "gray38")
			add_name (97, 97, 97, "grey38")
			add_name (99, 99, 99, "gray39")
			add_name (99, 99, 99, "grey39")
			add_name (102, 102, 102, "gray40")
			add_name (102, 102, 102, "grey40")
			add_name (105, 105, 105, "gray41")
			add_name (105, 105, 105, "grey41")
			add_name (107, 107, 107, "gray42")
			add_name (107, 107, 107, "grey42")
			add_name (110, 110, 110, "gray43")
			add_name (110, 110, 110, "grey43")
			add_name (112, 112, 112, "gray44")
			add_name (112, 112, 112, "grey44")
			add_name (115, 115, 115, "gray45")
			add_name (115, 115, 115, "grey45")
			add_name (117, 117, 117, "gray46")
			add_name (117, 117, 117, "grey46")
			add_name (120, 120, 120, "gray47")
			add_name (120, 120, 120, "grey47")
			add_name (122, 122, 122, "gray48")
			add_name (122, 122, 122, "grey48")
			add_name (125, 125, 125, "gray49")
			add_name (125, 125, 125, "grey49")
			add_name (127, 127, 127, "gray50")
			add_name (127, 127, 127, "grey50")
			add_name (130, 130, 130, "gray51")
			add_name (130, 130, 130, "grey51")
			add_name (133, 133, 133, "gray52")
			add_name (133, 133, 133, "grey52")
			add_name (135, 135, 135, "gray53")
			add_name (135, 135, 135, "grey53")
			add_name (138, 138, 138, "gray54")
			add_name (138, 138, 138, "grey54")
			add_name (140, 140, 140, "gray55")
			add_name (140, 140, 140, "grey55")
			add_name (143, 143, 143, "gray56")
			add_name (143, 143, 143, "grey56")
			add_name (145, 145, 145, "gray57")
			add_name (145, 145, 145, "grey57")
			add_name (148, 148, 148, "gray58")
			add_name (148, 148, 148, "grey58")
			add_name (150, 150, 150, "gray59")
			add_name (150, 150, 150, "grey59")
			add_name (153, 153, 153, "gray60")
			add_name (153, 153, 153, "grey60")
			add_name (156, 156, 156, "gray61")
			add_name (156, 156, 156, "grey61")
			add_name (158, 158, 158, "gray62")
			add_name (158, 158, 158, "grey62")
			add_name (161, 161, 161, "gray63")
			add_name (161, 161, 161, "grey63")
			add_name (163, 163, 163, "gray64")
			add_name (163, 163, 163, "grey64")
			add_name (166, 166, 166, "gray65")
			add_name (166, 166, 166, "grey65")
			add_name (168, 168, 168, "gray66")
			add_name (168, 168, 168, "grey66")
			add_name (171, 171, 171, "gray67")
			add_name (171, 171, 171, "grey67")
			add_name (173, 173, 173, "gray68")
			add_name (173, 173, 173, "grey68")
			add_name (176, 176, 176, "gray69")
			add_name (176, 176, 176, "grey69")
			add_name (179, 179, 179, "gray70")
			add_name (179, 179, 179, "grey70")
			add_name (181, 181, 181, "gray71")
			add_name (181, 181, 181, "grey71")
			add_name (184, 184, 184, "gray72")
			add_name (184, 184, 184, "grey72")
			add_name (186, 186, 186, "gray73")
			add_name (186, 186, 186, "grey73")
			add_name (189, 189, 189, "gray74")
			add_name (189, 189, 189, "grey74")
			add_name (191, 191, 191, "gray75")
			add_name (191, 191, 191, "grey75")
			add_name (194, 194, 194, "gray76")
			add_name (194, 194, 194, "grey76")
			add_name (196, 196, 196, "gray77")
			add_name (196, 196, 196, "grey77")
			add_name (199, 199, 199, "gray78")
			add_name (199, 199, 199, "grey78")
			add_name (201, 201, 201, "gray79")
			add_name (201, 201, 201, "grey79")
			add_name (204, 204, 204, "gray80")
			add_name (204, 204, 204, "grey80")
			add_name (207, 207, 207, "gray81")
			add_name (207, 207, 207, "grey81")
			add_name (209, 209, 209, "gray82")
			add_name (209, 209, 209, "grey82")
			add_name (212, 212, 212, "gray83")
			add_name (212, 212, 212, "grey83")
			add_name (214, 214, 214, "gray84")
			add_name (214, 214, 214, "grey84")
			add_name (217, 217, 217, "gray85")
			add_name (217, 217, 217, "grey85")
			add_name (219, 219, 219, "gray86")
			add_name (219, 219, 219, "grey86")
			add_name (222, 222, 222, "gray87")
			add_name (222, 222, 222, "grey87")
			add_name (224, 224, 224, "gray88")
			add_name (224, 224, 224, "grey88")
			add_name (227, 227, 227, "gray89")
			add_name (227, 227, 227, "grey89")
			add_name (229, 229, 229, "gray90")
			add_name (229, 229, 229, "grey90")
			add_name (232, 232, 232, "gray91")
			add_name (232, 232, 232, "grey91")
			add_name (235, 235, 235, "gray92")
			add_name (235, 235, 235, "grey92")
			add_name (237, 237, 237, "gray93")
			add_name (237, 237, 237, "grey93")
			add_name (240, 240, 240, "gray94")
			add_name (240, 240, 240, "grey94")
			add_name (242, 242, 242, "gray95")
			add_name (242, 242, 242, "grey95")
			add_name (245, 245, 245, "gray96")
			add_name (245, 245, 245, "grey96")
			add_name (247, 247, 247, "gray97")
			add_name (247, 247, 247, "grey97")
			add_name (250, 250, 250, "gray98")
			add_name (250, 250, 250, "grey98")
			add_name (252, 252, 252, "gray99")
			add_name (252, 252, 252, "grey99")
			add_name (255, 255, 255, "gray100")
			add_name (255, 255, 255, "grey100")
			add_name (75, 0, 130, "Indigo")
			add_name (220, 20, 60, "Crimson")
			!! color.make_system (Color_window)
			add_name (color.red, color.green, color.blue, "Color_window")
			!! color.make_system (Color_windowtext)
			add_name (color.red, color.green, color.blue, "Color_windowtext")
		end

	add_name (r, g, b: INTEGER; color_name: STRING) is
			-- Add a item in the hash-table, with the key color_name
		require
			color_name_not_void: color_name /= Void
		local
			rgb_tripple: RGB_TRIPLE
		do
			!! rgb_tripple.make (r, g, b)
			names.put (rgb_tripple, clone (color_name))
		end

end -- class COLOR_NAMES_WINDOWS
 
--|----------------------------------------------------------------
--| EiffelVision: library of reusable components for ISE Eiffel.
--| Copyright (C) 1986-1998 Interactive Software Engineering Inc.
--| All rights reserved. Duplication and distribution prohibited.
--| May be used only with ISE Eiffel, under terms of user license. 
--| Contact ISE for any other use.
--|
--| Interactive Software Engineering Inc.
--| ISE Building, 2nd floor
--| 270 Storke Road, Goleta, CA 93117 USA
--| Telephone 805-685-1006, Fax 805-685-6869
--| Electronic mail <info@eiffel.com>
--| Customer support e-mail <support@eiffel.com>
--| For latest info see award-winning pages: http://www.eiffel.com
--|----------------------------------------------------------------

