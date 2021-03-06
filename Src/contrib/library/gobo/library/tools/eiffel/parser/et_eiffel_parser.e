note

	description:

		"Eiffel parsers"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 1999-2012, Eric Bezault and others"
	license: "MIT License"
	date: "$Date$"
	revision: "$Revision$"

class ET_EIFFEL_PARSER

inherit

	ET_EIFFEL_PARSER_SKELETON
		undefine
			read_token
		redefine
			yyparse
		end

	ET_EIFFEL_SCANNER
		rename
			make as make_eiffel_scanner
		undefine
			reset, set_syntax_error
		end

create

	make


feature {NONE} -- Implementation

	yy_build_parser_tables
			-- Build parser tables.
		do
			yytranslate := yytranslate_template
			yyr1 := yyr1_template
			yytypes1 := yytypes1_template
			yytypes2 := yytypes2_template
			yydefact := yydefact_template
			yydefgoto := yydefgoto_template
			yypact := yypact_template
			yypgoto := yypgoto_template
			yytable := yytable_template
			yycheck := yycheck_template
		end

	yy_create_value_stacks
			-- Create value stacks.
		do
			create yyspecial_routines1
			yyvsc1 := yyInitial_yyvs_size
			yyvs1 := yyspecial_routines1.make (yyvsc1)
			create yyspecial_routines2
			yyvsc2 := yyInitial_yyvs_size
			yyvs2 := yyspecial_routines2.make (yyvsc2)
			create yyspecial_routines3
			yyvsc3 := yyInitial_yyvs_size
			yyvs3 := yyspecial_routines3.make (yyvsc3)
			create yyspecial_routines4
			yyvsc4 := yyInitial_yyvs_size
			yyvs4 := yyspecial_routines4.make (yyvsc4)
			create yyspecial_routines5
			yyvsc5 := yyInitial_yyvs_size
			yyvs5 := yyspecial_routines5.make (yyvsc5)
			create yyspecial_routines6
			yyvsc6 := yyInitial_yyvs_size
			yyvs6 := yyspecial_routines6.make (yyvsc6)
			create yyspecial_routines7
			yyvsc7 := yyInitial_yyvs_size
			yyvs7 := yyspecial_routines7.make (yyvsc7)
			create yyspecial_routines8
			yyvsc8 := yyInitial_yyvs_size
			yyvs8 := yyspecial_routines8.make (yyvsc8)
			create yyspecial_routines9
			yyvsc9 := yyInitial_yyvs_size
			yyvs9 := yyspecial_routines9.make (yyvsc9)
			create yyspecial_routines10
			yyvsc10 := yyInitial_yyvs_size
			yyvs10 := yyspecial_routines10.make (yyvsc10)
			create yyspecial_routines11
			yyvsc11 := yyInitial_yyvs_size
			yyvs11 := yyspecial_routines11.make (yyvsc11)
			create yyspecial_routines12
			yyvsc12 := yyInitial_yyvs_size
			yyvs12 := yyspecial_routines12.make (yyvsc12)
			create yyspecial_routines13
			yyvsc13 := yyInitial_yyvs_size
			yyvs13 := yyspecial_routines13.make (yyvsc13)
			create yyspecial_routines14
			yyvsc14 := yyInitial_yyvs_size
			yyvs14 := yyspecial_routines14.make (yyvsc14)
			create yyspecial_routines15
			yyvsc15 := yyInitial_yyvs_size
			yyvs15 := yyspecial_routines15.make (yyvsc15)
			create yyspecial_routines16
			yyvsc16 := yyInitial_yyvs_size
			yyvs16 := yyspecial_routines16.make (yyvsc16)
			create yyspecial_routines17
			yyvsc17 := yyInitial_yyvs_size
			yyvs17 := yyspecial_routines17.make (yyvsc17)
			create yyspecial_routines18
			yyvsc18 := yyInitial_yyvs_size
			yyvs18 := yyspecial_routines18.make (yyvsc18)
			create yyspecial_routines19
			yyvsc19 := yyInitial_yyvs_size
			yyvs19 := yyspecial_routines19.make (yyvsc19)
			create yyspecial_routines20
			yyvsc20 := yyInitial_yyvs_size
			yyvs20 := yyspecial_routines20.make (yyvsc20)
			create yyspecial_routines21
			yyvsc21 := yyInitial_yyvs_size
			yyvs21 := yyspecial_routines21.make (yyvsc21)
			create yyspecial_routines22
			yyvsc22 := yyInitial_yyvs_size
			yyvs22 := yyspecial_routines22.make (yyvsc22)
			create yyspecial_routines23
			yyvsc23 := yyInitial_yyvs_size
			yyvs23 := yyspecial_routines23.make (yyvsc23)
			create yyspecial_routines24
			yyvsc24 := yyInitial_yyvs_size
			yyvs24 := yyspecial_routines24.make (yyvsc24)
			create yyspecial_routines25
			yyvsc25 := yyInitial_yyvs_size
			yyvs25 := yyspecial_routines25.make (yyvsc25)
			create yyspecial_routines26
			yyvsc26 := yyInitial_yyvs_size
			yyvs26 := yyspecial_routines26.make (yyvsc26)
			create yyspecial_routines27
			yyvsc27 := yyInitial_yyvs_size
			yyvs27 := yyspecial_routines27.make (yyvsc27)
			create yyspecial_routines28
			yyvsc28 := yyInitial_yyvs_size
			yyvs28 := yyspecial_routines28.make (yyvsc28)
			create yyspecial_routines29
			yyvsc29 := yyInitial_yyvs_size
			yyvs29 := yyspecial_routines29.make (yyvsc29)
			create yyspecial_routines30
			yyvsc30 := yyInitial_yyvs_size
			yyvs30 := yyspecial_routines30.make (yyvsc30)
			create yyspecial_routines31
			yyvsc31 := yyInitial_yyvs_size
			yyvs31 := yyspecial_routines31.make (yyvsc31)
			create yyspecial_routines32
			yyvsc32 := yyInitial_yyvs_size
			yyvs32 := yyspecial_routines32.make (yyvsc32)
			create yyspecial_routines33
			yyvsc33 := yyInitial_yyvs_size
			yyvs33 := yyspecial_routines33.make (yyvsc33)
			create yyspecial_routines34
			yyvsc34 := yyInitial_yyvs_size
			yyvs34 := yyspecial_routines34.make (yyvsc34)
			create yyspecial_routines35
			yyvsc35 := yyInitial_yyvs_size
			yyvs35 := yyspecial_routines35.make (yyvsc35)
			create yyspecial_routines36
			yyvsc36 := yyInitial_yyvs_size
			yyvs36 := yyspecial_routines36.make (yyvsc36)
			create yyspecial_routines37
			yyvsc37 := yyInitial_yyvs_size
			yyvs37 := yyspecial_routines37.make (yyvsc37)
			create yyspecial_routines38
			yyvsc38 := yyInitial_yyvs_size
			yyvs38 := yyspecial_routines38.make (yyvsc38)
			create yyspecial_routines39
			yyvsc39 := yyInitial_yyvs_size
			yyvs39 := yyspecial_routines39.make (yyvsc39)
			create yyspecial_routines40
			yyvsc40 := yyInitial_yyvs_size
			yyvs40 := yyspecial_routines40.make (yyvsc40)
			create yyspecial_routines41
			yyvsc41 := yyInitial_yyvs_size
			yyvs41 := yyspecial_routines41.make (yyvsc41)
			create yyspecial_routines42
			yyvsc42 := yyInitial_yyvs_size
			yyvs42 := yyspecial_routines42.make (yyvsc42)
			create yyspecial_routines43
			yyvsc43 := yyInitial_yyvs_size
			yyvs43 := yyspecial_routines43.make (yyvsc43)
			create yyspecial_routines44
			yyvsc44 := yyInitial_yyvs_size
			yyvs44 := yyspecial_routines44.make (yyvsc44)
			create yyspecial_routines45
			yyvsc45 := yyInitial_yyvs_size
			yyvs45 := yyspecial_routines45.make (yyvsc45)
			create yyspecial_routines46
			yyvsc46 := yyInitial_yyvs_size
			yyvs46 := yyspecial_routines46.make (yyvsc46)
			create yyspecial_routines47
			yyvsc47 := yyInitial_yyvs_size
			yyvs47 := yyspecial_routines47.make (yyvsc47)
			create yyspecial_routines48
			yyvsc48 := yyInitial_yyvs_size
			yyvs48 := yyspecial_routines48.make (yyvsc48)
			create yyspecial_routines49
			yyvsc49 := yyInitial_yyvs_size
			yyvs49 := yyspecial_routines49.make (yyvsc49)
			create yyspecial_routines50
			yyvsc50 := yyInitial_yyvs_size
			yyvs50 := yyspecial_routines50.make (yyvsc50)
			create yyspecial_routines51
			yyvsc51 := yyInitial_yyvs_size
			yyvs51 := yyspecial_routines51.make (yyvsc51)
			create yyspecial_routines52
			yyvsc52 := yyInitial_yyvs_size
			yyvs52 := yyspecial_routines52.make (yyvsc52)
			create yyspecial_routines53
			yyvsc53 := yyInitial_yyvs_size
			yyvs53 := yyspecial_routines53.make (yyvsc53)
			create yyspecial_routines54
			yyvsc54 := yyInitial_yyvs_size
			yyvs54 := yyspecial_routines54.make (yyvsc54)
			create yyspecial_routines55
			yyvsc55 := yyInitial_yyvs_size
			yyvs55 := yyspecial_routines55.make (yyvsc55)
			create yyspecial_routines56
			yyvsc56 := yyInitial_yyvs_size
			yyvs56 := yyspecial_routines56.make (yyvsc56)
			create yyspecial_routines57
			yyvsc57 := yyInitial_yyvs_size
			yyvs57 := yyspecial_routines57.make (yyvsc57)
			create yyspecial_routines58
			yyvsc58 := yyInitial_yyvs_size
			yyvs58 := yyspecial_routines58.make (yyvsc58)
			create yyspecial_routines59
			yyvsc59 := yyInitial_yyvs_size
			yyvs59 := yyspecial_routines59.make (yyvsc59)
			create yyspecial_routines60
			yyvsc60 := yyInitial_yyvs_size
			yyvs60 := yyspecial_routines60.make (yyvsc60)
			create yyspecial_routines61
			yyvsc61 := yyInitial_yyvs_size
			yyvs61 := yyspecial_routines61.make (yyvsc61)
			create yyspecial_routines62
			yyvsc62 := yyInitial_yyvs_size
			yyvs62 := yyspecial_routines62.make (yyvsc62)
			create yyspecial_routines63
			yyvsc63 := yyInitial_yyvs_size
			yyvs63 := yyspecial_routines63.make (yyvsc63)
			create yyspecial_routines64
			yyvsc64 := yyInitial_yyvs_size
			yyvs64 := yyspecial_routines64.make (yyvsc64)
			create yyspecial_routines65
			yyvsc65 := yyInitial_yyvs_size
			yyvs65 := yyspecial_routines65.make (yyvsc65)
			create yyspecial_routines66
			yyvsc66 := yyInitial_yyvs_size
			yyvs66 := yyspecial_routines66.make (yyvsc66)
			create yyspecial_routines67
			yyvsc67 := yyInitial_yyvs_size
			yyvs67 := yyspecial_routines67.make (yyvsc67)
			create yyspecial_routines68
			yyvsc68 := yyInitial_yyvs_size
			yyvs68 := yyspecial_routines68.make (yyvsc68)
			create yyspecial_routines69
			yyvsc69 := yyInitial_yyvs_size
			yyvs69 := yyspecial_routines69.make (yyvsc69)
			create yyspecial_routines70
			yyvsc70 := yyInitial_yyvs_size
			yyvs70 := yyspecial_routines70.make (yyvsc70)
			create yyspecial_routines71
			yyvsc71 := yyInitial_yyvs_size
			yyvs71 := yyspecial_routines71.make (yyvsc71)
			create yyspecial_routines72
			yyvsc72 := yyInitial_yyvs_size
			yyvs72 := yyspecial_routines72.make (yyvsc72)
			create yyspecial_routines73
			yyvsc73 := yyInitial_yyvs_size
			yyvs73 := yyspecial_routines73.make (yyvsc73)
			create yyspecial_routines74
			yyvsc74 := yyInitial_yyvs_size
			yyvs74 := yyspecial_routines74.make (yyvsc74)
			create yyspecial_routines75
			yyvsc75 := yyInitial_yyvs_size
			yyvs75 := yyspecial_routines75.make (yyvsc75)
			create yyspecial_routines76
			yyvsc76 := yyInitial_yyvs_size
			yyvs76 := yyspecial_routines76.make (yyvsc76)
			create yyspecial_routines77
			yyvsc77 := yyInitial_yyvs_size
			yyvs77 := yyspecial_routines77.make (yyvsc77)
			create yyspecial_routines78
			yyvsc78 := yyInitial_yyvs_size
			yyvs78 := yyspecial_routines78.make (yyvsc78)
			create yyspecial_routines79
			yyvsc79 := yyInitial_yyvs_size
			yyvs79 := yyspecial_routines79.make (yyvsc79)
			create yyspecial_routines80
			yyvsc80 := yyInitial_yyvs_size
			yyvs80 := yyspecial_routines80.make (yyvsc80)
			create yyspecial_routines81
			yyvsc81 := yyInitial_yyvs_size
			yyvs81 := yyspecial_routines81.make (yyvsc81)
			create yyspecial_routines82
			yyvsc82 := yyInitial_yyvs_size
			yyvs82 := yyspecial_routines82.make (yyvsc82)
			create yyspecial_routines83
			yyvsc83 := yyInitial_yyvs_size
			yyvs83 := yyspecial_routines83.make (yyvsc83)
			create yyspecial_routines84
			yyvsc84 := yyInitial_yyvs_size
			yyvs84 := yyspecial_routines84.make (yyvsc84)
			create yyspecial_routines85
			yyvsc85 := yyInitial_yyvs_size
			yyvs85 := yyspecial_routines85.make (yyvsc85)
			create yyspecial_routines86
			yyvsc86 := yyInitial_yyvs_size
			yyvs86 := yyspecial_routines86.make (yyvsc86)
			create yyspecial_routines87
			yyvsc87 := yyInitial_yyvs_size
			yyvs87 := yyspecial_routines87.make (yyvsc87)
			create yyspecial_routines88
			yyvsc88 := yyInitial_yyvs_size
			yyvs88 := yyspecial_routines88.make (yyvsc88)
			create yyspecial_routines89
			yyvsc89 := yyInitial_yyvs_size
			yyvs89 := yyspecial_routines89.make (yyvsc89)
			create yyspecial_routines90
			yyvsc90 := yyInitial_yyvs_size
			yyvs90 := yyspecial_routines90.make (yyvsc90)
			create yyspecial_routines91
			yyvsc91 := yyInitial_yyvs_size
			yyvs91 := yyspecial_routines91.make (yyvsc91)
			create yyspecial_routines92
			yyvsc92 := yyInitial_yyvs_size
			yyvs92 := yyspecial_routines92.make (yyvsc92)
			create yyspecial_routines93
			yyvsc93 := yyInitial_yyvs_size
			yyvs93 := yyspecial_routines93.make (yyvsc93)
			create yyspecial_routines94
			yyvsc94 := yyInitial_yyvs_size
			yyvs94 := yyspecial_routines94.make (yyvsc94)
			create yyspecial_routines95
			yyvsc95 := yyInitial_yyvs_size
			yyvs95 := yyspecial_routines95.make (yyvsc95)
			create yyspecial_routines96
			yyvsc96 := yyInitial_yyvs_size
			yyvs96 := yyspecial_routines96.make (yyvsc96)
			create yyspecial_routines97
			yyvsc97 := yyInitial_yyvs_size
			yyvs97 := yyspecial_routines97.make (yyvsc97)
			create yyspecial_routines98
			yyvsc98 := yyInitial_yyvs_size
			yyvs98 := yyspecial_routines98.make (yyvsc98)
			create yyspecial_routines99
			yyvsc99 := yyInitial_yyvs_size
			yyvs99 := yyspecial_routines99.make (yyvsc99)
			create yyspecial_routines100
			yyvsc100 := yyInitial_yyvs_size
			yyvs100 := yyspecial_routines100.make (yyvsc100)
			create yyspecial_routines101
			yyvsc101 := yyInitial_yyvs_size
			yyvs101 := yyspecial_routines101.make (yyvsc101)
			create yyspecial_routines102
			yyvsc102 := yyInitial_yyvs_size
			yyvs102 := yyspecial_routines102.make (yyvsc102)
			create yyspecial_routines103
			yyvsc103 := yyInitial_yyvs_size
			yyvs103 := yyspecial_routines103.make (yyvsc103)
			create yyspecial_routines104
			yyvsc104 := yyInitial_yyvs_size
			yyvs104 := yyspecial_routines104.make (yyvsc104)
			create yyspecial_routines105
			yyvsc105 := yyInitial_yyvs_size
			yyvs105 := yyspecial_routines105.make (yyvsc105)
			create yyspecial_routines106
			yyvsc106 := yyInitial_yyvs_size
			yyvs106 := yyspecial_routines106.make (yyvsc106)
			create yyspecial_routines107
			yyvsc107 := yyInitial_yyvs_size
			yyvs107 := yyspecial_routines107.make (yyvsc107)
			create yyspecial_routines108
			yyvsc108 := yyInitial_yyvs_size
			yyvs108 := yyspecial_routines108.make (yyvsc108)
			create yyspecial_routines109
			yyvsc109 := yyInitial_yyvs_size
			yyvs109 := yyspecial_routines109.make (yyvsc109)
			create yyspecial_routines110
			yyvsc110 := yyInitial_yyvs_size
			yyvs110 := yyspecial_routines110.make (yyvsc110)
			create yyspecial_routines111
			yyvsc111 := yyInitial_yyvs_size
			yyvs111 := yyspecial_routines111.make (yyvsc111)
			create yyspecial_routines112
			yyvsc112 := yyInitial_yyvs_size
			yyvs112 := yyspecial_routines112.make (yyvsc112)
			create yyspecial_routines113
			yyvsc113 := yyInitial_yyvs_size
			yyvs113 := yyspecial_routines113.make (yyvsc113)
			create yyspecial_routines114
			yyvsc114 := yyInitial_yyvs_size
			yyvs114 := yyspecial_routines114.make (yyvsc114)
			create yyspecial_routines115
			yyvsc115 := yyInitial_yyvs_size
			yyvs115 := yyspecial_routines115.make (yyvsc115)
			create yyspecial_routines116
			yyvsc116 := yyInitial_yyvs_size
			yyvs116 := yyspecial_routines116.make (yyvsc116)
			create yyspecial_routines117
			yyvsc117 := yyInitial_yyvs_size
			yyvs117 := yyspecial_routines117.make (yyvsc117)
			create yyspecial_routines118
			yyvsc118 := yyInitial_yyvs_size
			yyvs118 := yyspecial_routines118.make (yyvsc118)
			create yyspecial_routines119
			yyvsc119 := yyInitial_yyvs_size
			yyvs119 := yyspecial_routines119.make (yyvsc119)
			create yyspecial_routines120
			yyvsc120 := yyInitial_yyvs_size
			yyvs120 := yyspecial_routines120.make (yyvsc120)
			create yyspecial_routines121
			yyvsc121 := yyInitial_yyvs_size
			yyvs121 := yyspecial_routines121.make (yyvsc121)
		end

	yy_init_value_stacks
			-- Initialize value stacks.
		do
			yyvsp1 := -1
			yyvsp2 := -1
			yyvsp3 := -1
			yyvsp4 := -1
			yyvsp5 := -1
			yyvsp6 := -1
			yyvsp7 := -1
			yyvsp8 := -1
			yyvsp9 := -1
			yyvsp10 := -1
			yyvsp11 := -1
			yyvsp12 := -1
			yyvsp13 := -1
			yyvsp14 := -1
			yyvsp15 := -1
			yyvsp16 := -1
			yyvsp17 := -1
			yyvsp18 := -1
			yyvsp19 := -1
			yyvsp20 := -1
			yyvsp21 := -1
			yyvsp22 := -1
			yyvsp23 := -1
			yyvsp24 := -1
			yyvsp25 := -1
			yyvsp26 := -1
			yyvsp27 := -1
			yyvsp28 := -1
			yyvsp29 := -1
			yyvsp30 := -1
			yyvsp31 := -1
			yyvsp32 := -1
			yyvsp33 := -1
			yyvsp34 := -1
			yyvsp35 := -1
			yyvsp36 := -1
			yyvsp37 := -1
			yyvsp38 := -1
			yyvsp39 := -1
			yyvsp40 := -1
			yyvsp41 := -1
			yyvsp42 := -1
			yyvsp43 := -1
			yyvsp44 := -1
			yyvsp45 := -1
			yyvsp46 := -1
			yyvsp47 := -1
			yyvsp48 := -1
			yyvsp49 := -1
			yyvsp50 := -1
			yyvsp51 := -1
			yyvsp52 := -1
			yyvsp53 := -1
			yyvsp54 := -1
			yyvsp55 := -1
			yyvsp56 := -1
			yyvsp57 := -1
			yyvsp58 := -1
			yyvsp59 := -1
			yyvsp60 := -1
			yyvsp61 := -1
			yyvsp62 := -1
			yyvsp63 := -1
			yyvsp64 := -1
			yyvsp65 := -1
			yyvsp66 := -1
			yyvsp67 := -1
			yyvsp68 := -1
			yyvsp69 := -1
			yyvsp70 := -1
			yyvsp71 := -1
			yyvsp72 := -1
			yyvsp73 := -1
			yyvsp74 := -1
			yyvsp75 := -1
			yyvsp76 := -1
			yyvsp77 := -1
			yyvsp78 := -1
			yyvsp79 := -1
			yyvsp80 := -1
			yyvsp81 := -1
			yyvsp82 := -1
			yyvsp83 := -1
			yyvsp84 := -1
			yyvsp85 := -1
			yyvsp86 := -1
			yyvsp87 := -1
			yyvsp88 := -1
			yyvsp89 := -1
			yyvsp90 := -1
			yyvsp91 := -1
			yyvsp92 := -1
			yyvsp93 := -1
			yyvsp94 := -1
			yyvsp95 := -1
			yyvsp96 := -1
			yyvsp97 := -1
			yyvsp98 := -1
			yyvsp99 := -1
			yyvsp100 := -1
			yyvsp101 := -1
			yyvsp102 := -1
			yyvsp103 := -1
			yyvsp104 := -1
			yyvsp105 := -1
			yyvsp106 := -1
			yyvsp107 := -1
			yyvsp108 := -1
			yyvsp109 := -1
			yyvsp110 := -1
			yyvsp111 := -1
			yyvsp112 := -1
			yyvsp113 := -1
			yyvsp114 := -1
			yyvsp115 := -1
			yyvsp116 := -1
			yyvsp117 := -1
			yyvsp118 := -1
			yyvsp119 := -1
			yyvsp120 := -1
			yyvsp121 := -1
		end

	yy_clear_value_stacks
			-- Clear objects in semantic value stacks so that
			-- they can be collected by the garbage collector.
		do
			yyvs1.keep_head (0)
			yyvs2.keep_head (0)
			yyvs3.keep_head (0)
			yyvs4.keep_head (0)
			yyvs5.keep_head (0)
			yyvs6.keep_head (0)
			yyvs7.keep_head (0)
			yyvs8.keep_head (0)
			yyvs9.keep_head (0)
			yyvs10.keep_head (0)
			yyvs11.keep_head (0)
			yyvs12.keep_head (0)
			yyvs13.keep_head (0)
			yyvs14.keep_head (0)
			yyvs15.keep_head (0)
			yyvs16.keep_head (0)
			yyvs17.keep_head (0)
			yyvs18.keep_head (0)
			yyvs19.keep_head (0)
			yyvs20.keep_head (0)
			yyvs21.keep_head (0)
			yyvs22.keep_head (0)
			yyvs23.keep_head (0)
			yyvs24.keep_head (0)
			yyvs25.keep_head (0)
			yyvs26.keep_head (0)
			yyvs27.keep_head (0)
			yyvs28.keep_head (0)
			yyvs29.keep_head (0)
			yyvs30.keep_head (0)
			yyvs31.keep_head (0)
			yyvs32.keep_head (0)
			yyvs33.keep_head (0)
			yyvs34.keep_head (0)
			yyvs35.keep_head (0)
			yyvs36.keep_head (0)
			yyvs37.keep_head (0)
			yyvs38.keep_head (0)
			yyvs39.keep_head (0)
			yyvs40.keep_head (0)
			yyvs41.keep_head (0)
			yyvs42.keep_head (0)
			yyvs43.keep_head (0)
			yyvs44.keep_head (0)
			yyvs45.keep_head (0)
			yyvs46.keep_head (0)
			yyvs47.keep_head (0)
			yyvs48.keep_head (0)
			yyvs49.keep_head (0)
			yyvs50.keep_head (0)
			yyvs51.keep_head (0)
			yyvs52.keep_head (0)
			yyvs53.keep_head (0)
			yyvs54.keep_head (0)
			yyvs55.keep_head (0)
			yyvs56.keep_head (0)
			yyvs57.keep_head (0)
			yyvs58.keep_head (0)
			yyvs59.keep_head (0)
			yyvs60.keep_head (0)
			yyvs61.keep_head (0)
			yyvs62.keep_head (0)
			yyvs63.keep_head (0)
			yyvs64.keep_head (0)
			yyvs65.keep_head (0)
			yyvs66.keep_head (0)
			yyvs67.keep_head (0)
			yyvs68.keep_head (0)
			yyvs69.keep_head (0)
			yyvs70.keep_head (0)
			yyvs71.keep_head (0)
			yyvs72.keep_head (0)
			yyvs73.keep_head (0)
			yyvs74.keep_head (0)
			yyvs75.keep_head (0)
			yyvs76.keep_head (0)
			yyvs77.keep_head (0)
			yyvs78.keep_head (0)
			yyvs79.keep_head (0)
			yyvs80.keep_head (0)
			yyvs81.keep_head (0)
			yyvs82.keep_head (0)
			yyvs83.keep_head (0)
			yyvs84.keep_head (0)
			yyvs85.keep_head (0)
			yyvs86.keep_head (0)
			yyvs87.keep_head (0)
			yyvs88.keep_head (0)
			yyvs89.keep_head (0)
			yyvs90.keep_head (0)
			yyvs91.keep_head (0)
			yyvs92.keep_head (0)
			yyvs93.keep_head (0)
			yyvs94.keep_head (0)
			yyvs95.keep_head (0)
			yyvs96.keep_head (0)
			yyvs97.keep_head (0)
			yyvs98.keep_head (0)
			yyvs99.keep_head (0)
			yyvs100.keep_head (0)
			yyvs101.keep_head (0)
			yyvs102.keep_head (0)
			yyvs103.keep_head (0)
			yyvs104.keep_head (0)
			yyvs105.keep_head (0)
			yyvs106.keep_head (0)
			yyvs107.keep_head (0)
			yyvs108.keep_head (0)
			yyvs109.keep_head (0)
			yyvs110.keep_head (0)
			yyvs111.keep_head (0)
			yyvs112.keep_head (0)
			yyvs113.keep_head (0)
			yyvs114.keep_head (0)
			yyvs115.keep_head (0)
			yyvs116.keep_head (0)
			yyvs117.keep_head (0)
			yyvs118.keep_head (0)
			yyvs119.keep_head (0)
			yyvs120.keep_head (0)
			yyvs121.keep_head (0)
		end

	yy_push_last_value (yychar1: INTEGER)
			-- Push semantic value associated with token `last_token'
			-- (with internal id `yychar1') on top of corresponding
			-- value stack.
		do
			inspect yytypes2.item (yychar1)
			when 1 then
				yyvsp1 := yyvsp1 + 1
				if yyvsp1 >= yyvsc1 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs1")
					end
					yyvsc1 := yyvsc1 + yyInitial_yyvs_size
					yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
				end
				yyspecial_routines1.force (yyvs1, last_detachable_any_value, yyvsp1)
			when 2 then
				yyvsp2 := yyvsp2 + 1
				if yyvsp2 >= yyvsc2 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs2")
					end
					yyvsc2 := yyvsc2 + yyInitial_yyvs_size
					yyvs2 := yyspecial_routines2.aliased_resized_area (yyvs2, yyvsc2)
				end
				yyspecial_routines2.force (yyvs2, last_et_keyword_value, yyvsp2)
			when 3 then
				yyvsp3 := yyvsp3 + 1
				if yyvsp3 >= yyvsc3 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs3")
					end
					yyvsc3 := yyvsc3 + yyInitial_yyvs_size
					yyvs3 := yyspecial_routines3.aliased_resized_area (yyvs3, yyvsc3)
				end
				yyspecial_routines3.force (yyvs3, last_et_agent_keyword_value, yyvsp3)
			when 4 then
				yyvsp4 := yyvsp4 + 1
				if yyvsp4 >= yyvsc4 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs4")
					end
					yyvsc4 := yyvsc4 + yyInitial_yyvs_size
					yyvs4 := yyspecial_routines4.aliased_resized_area (yyvs4, yyvsc4)
				end
				yyspecial_routines4.force (yyvs4, last_et_precursor_keyword_value, yyvsp4)
			when 5 then
				yyvsp5 := yyvsp5 + 1
				if yyvsp5 >= yyvsc5 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs5")
					end
					yyvsc5 := yyvsc5 + yyInitial_yyvs_size
					yyvs5 := yyspecial_routines5.aliased_resized_area (yyvs5, yyvsc5)
				end
				yyspecial_routines5.force (yyvs5, last_et_symbol_value, yyvsp5)
			when 6 then
				yyvsp6 := yyvsp6 + 1
				if yyvsp6 >= yyvsc6 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs6")
					end
					yyvsc6 := yyvsc6 + yyInitial_yyvs_size
					yyvs6 := yyspecial_routines6.aliased_resized_area (yyvs6, yyvsc6)
				end
				yyspecial_routines6.force (yyvs6, last_et_position_value, yyvsp6)
			when 7 then
				yyvsp7 := yyvsp7 + 1
				if yyvsp7 >= yyvsc7 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs7")
					end
					yyvsc7 := yyvsc7 + yyInitial_yyvs_size
					yyvs7 := yyspecial_routines7.aliased_resized_area (yyvs7, yyvsc7)
				end
				yyspecial_routines7.force (yyvs7, last_et_bit_constant_value, yyvsp7)
			when 8 then
				yyvsp8 := yyvsp8 + 1
				if yyvsp8 >= yyvsc8 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs8")
					end
					yyvsc8 := yyvsc8 + yyInitial_yyvs_size
					yyvs8 := yyspecial_routines8.aliased_resized_area (yyvs8, yyvsc8)
				end
				yyspecial_routines8.force (yyvs8, last_et_boolean_constant_value, yyvsp8)
			when 9 then
				yyvsp9 := yyvsp9 + 1
				if yyvsp9 >= yyvsc9 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs9")
					end
					yyvsc9 := yyvsc9 + yyInitial_yyvs_size
					yyvs9 := yyspecial_routines9.aliased_resized_area (yyvs9, yyvsc9)
				end
				yyspecial_routines9.force (yyvs9, last_et_break_value, yyvsp9)
			when 10 then
				yyvsp10 := yyvsp10 + 1
				if yyvsp10 >= yyvsc10 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs10")
					end
					yyvsc10 := yyvsc10 + yyInitial_yyvs_size
					yyvs10 := yyspecial_routines10.aliased_resized_area (yyvs10, yyvsc10)
				end
				yyspecial_routines10.force (yyvs10, last_et_character_constant_value, yyvsp10)
			when 11 then
				yyvsp11 := yyvsp11 + 1
				if yyvsp11 >= yyvsc11 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs11")
					end
					yyvsc11 := yyvsc11 + yyInitial_yyvs_size
					yyvs11 := yyspecial_routines11.aliased_resized_area (yyvs11, yyvsc11)
				end
				yyspecial_routines11.force (yyvs11, last_et_current_value, yyvsp11)
			when 12 then
				yyvsp12 := yyvsp12 + 1
				if yyvsp12 >= yyvsc12 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs12")
					end
					yyvsc12 := yyvsc12 + yyInitial_yyvs_size
					yyvs12 := yyspecial_routines12.aliased_resized_area (yyvs12, yyvsc12)
				end
				yyspecial_routines12.force (yyvs12, last_et_free_operator_value, yyvsp12)
			when 13 then
				yyvsp13 := yyvsp13 + 1
				if yyvsp13 >= yyvsc13 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs13")
					end
					yyvsc13 := yyvsc13 + yyInitial_yyvs_size
					yyvs13 := yyspecial_routines13.aliased_resized_area (yyvs13, yyvsc13)
				end
				yyspecial_routines13.force (yyvs13, last_et_identifier_value, yyvsp13)
			when 14 then
				yyvsp14 := yyvsp14 + 1
				if yyvsp14 >= yyvsc14 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs14")
					end
					yyvsc14 := yyvsc14 + yyInitial_yyvs_size
					yyvs14 := yyspecial_routines14.aliased_resized_area (yyvs14, yyvsc14)
				end
				yyspecial_routines14.force (yyvs14, last_et_integer_constant_value, yyvsp14)
			when 15 then
				yyvsp15 := yyvsp15 + 1
				if yyvsp15 >= yyvsc15 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs15")
					end
					yyvsc15 := yyvsc15 + yyInitial_yyvs_size
					yyvs15 := yyspecial_routines15.aliased_resized_area (yyvs15, yyvsc15)
				end
				yyspecial_routines15.force (yyvs15, last_et_keyword_operator_value, yyvsp15)
			when 16 then
				yyvsp16 := yyvsp16 + 1
				if yyvsp16 >= yyvsc16 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs16")
					end
					yyvsc16 := yyvsc16 + yyInitial_yyvs_size
					yyvs16 := yyspecial_routines16.aliased_resized_area (yyvs16, yyvsc16)
				end
				yyspecial_routines16.force (yyvs16, last_et_manifest_string_value, yyvsp16)
			when 17 then
				yyvsp17 := yyvsp17 + 1
				if yyvsp17 >= yyvsc17 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs17")
					end
					yyvsc17 := yyvsc17 + yyInitial_yyvs_size
					yyvs17 := yyspecial_routines17.aliased_resized_area (yyvs17, yyvsc17)
				end
				yyspecial_routines17.force (yyvs17, last_et_real_constant_value, yyvsp17)
			when 18 then
				yyvsp18 := yyvsp18 + 1
				if yyvsp18 >= yyvsc18 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs18")
					end
					yyvsc18 := yyvsc18 + yyInitial_yyvs_size
					yyvs18 := yyspecial_routines18.aliased_resized_area (yyvs18, yyvsc18)
				end
				yyspecial_routines18.force (yyvs18, last_et_result_value, yyvsp18)
			when 19 then
				yyvsp19 := yyvsp19 + 1
				if yyvsp19 >= yyvsc19 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs19")
					end
					yyvsc19 := yyvsc19 + yyInitial_yyvs_size
					yyvs19 := yyspecial_routines19.aliased_resized_area (yyvs19, yyvsc19)
				end
				yyspecial_routines19.force (yyvs19, last_et_retry_instruction_value, yyvsp19)
			when 20 then
				yyvsp20 := yyvsp20 + 1
				if yyvsp20 >= yyvsc20 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs20")
					end
					yyvsc20 := yyvsc20 + yyInitial_yyvs_size
					yyvs20 := yyspecial_routines20.aliased_resized_area (yyvs20, yyvsc20)
				end
				yyspecial_routines20.force (yyvs20, last_et_symbol_operator_value, yyvsp20)
			when 21 then
				yyvsp21 := yyvsp21 + 1
				if yyvsp21 >= yyvsc21 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs21")
					end
					yyvsc21 := yyvsc21 + yyInitial_yyvs_size
					yyvs21 := yyspecial_routines21.aliased_resized_area (yyvs21, yyvsc21)
				end
				yyspecial_routines21.force (yyvs21, last_et_void_value, yyvsp21)
			when 22 then
				yyvsp22 := yyvsp22 + 1
				if yyvsp22 >= yyvsc22 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs22")
					end
					yyvsc22 := yyvsc22 + yyInitial_yyvs_size
					yyvs22 := yyspecial_routines22.aliased_resized_area (yyvs22, yyvsc22)
				end
				yyspecial_routines22.force (yyvs22, last_et_semicolon_symbol_value, yyvsp22)
			when 23 then
				yyvsp23 := yyvsp23 + 1
				if yyvsp23 >= yyvsc23 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs23")
					end
					yyvsc23 := yyvsc23 + yyInitial_yyvs_size
					yyvs23 := yyspecial_routines23.aliased_resized_area (yyvs23, yyvsc23)
				end
				yyspecial_routines23.force (yyvs23, last_et_bracket_symbol_value, yyvsp23)
			when 24 then
				yyvsp24 := yyvsp24 + 1
				if yyvsp24 >= yyvsc24 then
					debug ("GEYACC")
						std.error.put_line ("Resize yyvs24")
					end
					yyvsc24 := yyvsc24 + yyInitial_yyvs_size
					yyvs24 := yyspecial_routines24.aliased_resized_area (yyvs24, yyvsc24)
				end
				yyspecial_routines24.force (yyvs24, last_et_question_mark_symbol_value, yyvsp24)
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: not a token type: ")
					std.error.put_integer (yytypes2.item (yychar1))
					std.error.put_new_line
				end
				abort
			end
		end

	yy_push_error_value
			-- Push semantic value associated with token 'error'
			-- on top of corresponding value stack.
		local
			yyval1: detachable ANY
		do
			yyvsp1 := yyvsp1 + 1
			if yyvsp1 >= yyvsc1 then
				debug ("GEYACC")
					std.error.put_line ("Resize yyvs1")
				end
				yyvsc1 := yyvsc1 + yyInitial_yyvs_size
				yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
			end
			yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
		end

	yy_pop_last_value (yystate: INTEGER)
			-- Pop semantic value from stack when in state `yystate'.
		local
			yy_type_id: INTEGER
		do
			yy_type_id := yytypes1.item (yystate)
			inspect yy_type_id
			when 1 then
				yyvsp1 := yyvsp1 - 1
			when 2 then
				yyvsp2 := yyvsp2 - 1
			when 3 then
				yyvsp3 := yyvsp3 - 1
			when 4 then
				yyvsp4 := yyvsp4 - 1
			when 5 then
				yyvsp5 := yyvsp5 - 1
			when 6 then
				yyvsp6 := yyvsp6 - 1
			when 7 then
				yyvsp7 := yyvsp7 - 1
			when 8 then
				yyvsp8 := yyvsp8 - 1
			when 9 then
				yyvsp9 := yyvsp9 - 1
			when 10 then
				yyvsp10 := yyvsp10 - 1
			when 11 then
				yyvsp11 := yyvsp11 - 1
			when 12 then
				yyvsp12 := yyvsp12 - 1
			when 13 then
				yyvsp13 := yyvsp13 - 1
			when 14 then
				yyvsp14 := yyvsp14 - 1
			when 15 then
				yyvsp15 := yyvsp15 - 1
			when 16 then
				yyvsp16 := yyvsp16 - 1
			when 17 then
				yyvsp17 := yyvsp17 - 1
			when 18 then
				yyvsp18 := yyvsp18 - 1
			when 19 then
				yyvsp19 := yyvsp19 - 1
			when 20 then
				yyvsp20 := yyvsp20 - 1
			when 21 then
				yyvsp21 := yyvsp21 - 1
			when 22 then
				yyvsp22 := yyvsp22 - 1
			when 23 then
				yyvsp23 := yyvsp23 - 1
			when 24 then
				yyvsp24 := yyvsp24 - 1
			when 25 then
				yyvsp25 := yyvsp25 - 1
			when 26 then
				yyvsp26 := yyvsp26 - 1
			when 27 then
				yyvsp27 := yyvsp27 - 1
			when 28 then
				yyvsp28 := yyvsp28 - 1
			when 29 then
				yyvsp29 := yyvsp29 - 1
			when 30 then
				yyvsp30 := yyvsp30 - 1
			when 31 then
				yyvsp31 := yyvsp31 - 1
			when 32 then
				yyvsp32 := yyvsp32 - 1
			when 33 then
				yyvsp33 := yyvsp33 - 1
			when 34 then
				yyvsp34 := yyvsp34 - 1
			when 35 then
				yyvsp35 := yyvsp35 - 1
			when 36 then
				yyvsp36 := yyvsp36 - 1
			when 37 then
				yyvsp37 := yyvsp37 - 1
			when 38 then
				yyvsp38 := yyvsp38 - 1
			when 39 then
				yyvsp39 := yyvsp39 - 1
			when 40 then
				yyvsp40 := yyvsp40 - 1
			when 41 then
				yyvsp41 := yyvsp41 - 1
			when 42 then
				yyvsp42 := yyvsp42 - 1
			when 43 then
				yyvsp43 := yyvsp43 - 1
			when 44 then
				yyvsp44 := yyvsp44 - 1
			when 45 then
				yyvsp45 := yyvsp45 - 1
			when 46 then
				yyvsp46 := yyvsp46 - 1
			when 47 then
				yyvsp47 := yyvsp47 - 1
			when 48 then
				yyvsp48 := yyvsp48 - 1
			when 49 then
				yyvsp49 := yyvsp49 - 1
			when 50 then
				yyvsp50 := yyvsp50 - 1
			when 51 then
				yyvsp51 := yyvsp51 - 1
			when 52 then
				yyvsp52 := yyvsp52 - 1
			when 53 then
				yyvsp53 := yyvsp53 - 1
			when 54 then
				yyvsp54 := yyvsp54 - 1
			when 55 then
				yyvsp55 := yyvsp55 - 1
			when 56 then
				yyvsp56 := yyvsp56 - 1
			when 57 then
				yyvsp57 := yyvsp57 - 1
			when 58 then
				yyvsp58 := yyvsp58 - 1
			when 59 then
				yyvsp59 := yyvsp59 - 1
			when 60 then
				yyvsp60 := yyvsp60 - 1
			when 61 then
				yyvsp61 := yyvsp61 - 1
			when 62 then
				yyvsp62 := yyvsp62 - 1
			when 63 then
				yyvsp63 := yyvsp63 - 1
			when 64 then
				yyvsp64 := yyvsp64 - 1
			when 65 then
				yyvsp65 := yyvsp65 - 1
			when 66 then
				yyvsp66 := yyvsp66 - 1
			when 67 then
				yyvsp67 := yyvsp67 - 1
			when 68 then
				yyvsp68 := yyvsp68 - 1
			when 69 then
				yyvsp69 := yyvsp69 - 1
			when 70 then
				yyvsp70 := yyvsp70 - 1
			when 71 then
				yyvsp71 := yyvsp71 - 1
			when 72 then
				yyvsp72 := yyvsp72 - 1
			when 73 then
				yyvsp73 := yyvsp73 - 1
			when 74 then
				yyvsp74 := yyvsp74 - 1
			when 75 then
				yyvsp75 := yyvsp75 - 1
			when 76 then
				yyvsp76 := yyvsp76 - 1
			when 77 then
				yyvsp77 := yyvsp77 - 1
			when 78 then
				yyvsp78 := yyvsp78 - 1
			when 79 then
				yyvsp79 := yyvsp79 - 1
			when 80 then
				yyvsp80 := yyvsp80 - 1
			when 81 then
				yyvsp81 := yyvsp81 - 1
			when 82 then
				yyvsp82 := yyvsp82 - 1
			when 83 then
				yyvsp83 := yyvsp83 - 1
			when 84 then
				yyvsp84 := yyvsp84 - 1
			when 85 then
				yyvsp85 := yyvsp85 - 1
			when 86 then
				yyvsp86 := yyvsp86 - 1
			when 87 then
				yyvsp87 := yyvsp87 - 1
			when 88 then
				yyvsp88 := yyvsp88 - 1
			when 89 then
				yyvsp89 := yyvsp89 - 1
			when 90 then
				yyvsp90 := yyvsp90 - 1
			when 91 then
				yyvsp91 := yyvsp91 - 1
			when 92 then
				yyvsp92 := yyvsp92 - 1
			when 93 then
				yyvsp93 := yyvsp93 - 1
			when 94 then
				yyvsp94 := yyvsp94 - 1
			when 95 then
				yyvsp95 := yyvsp95 - 1
			when 96 then
				yyvsp96 := yyvsp96 - 1
			when 97 then
				yyvsp97 := yyvsp97 - 1
			when 98 then
				yyvsp98 := yyvsp98 - 1
			when 99 then
				yyvsp99 := yyvsp99 - 1
			when 100 then
				yyvsp100 := yyvsp100 - 1
			when 101 then
				yyvsp101 := yyvsp101 - 1
			when 102 then
				yyvsp102 := yyvsp102 - 1
			when 103 then
				yyvsp103 := yyvsp103 - 1
			when 104 then
				yyvsp104 := yyvsp104 - 1
			when 105 then
				yyvsp105 := yyvsp105 - 1
			when 106 then
				yyvsp106 := yyvsp106 - 1
			when 107 then
				yyvsp107 := yyvsp107 - 1
			when 108 then
				yyvsp108 := yyvsp108 - 1
			when 109 then
				yyvsp109 := yyvsp109 - 1
			when 110 then
				yyvsp110 := yyvsp110 - 1
			when 111 then
				yyvsp111 := yyvsp111 - 1
			when 112 then
				yyvsp112 := yyvsp112 - 1
			when 113 then
				yyvsp113 := yyvsp113 - 1
			when 114 then
				yyvsp114 := yyvsp114 - 1
			when 115 then
				yyvsp115 := yyvsp115 - 1
			when 116 then
				yyvsp116 := yyvsp116 - 1
			when 117 then
				yyvsp117 := yyvsp117 - 1
			when 118 then
				yyvsp118 := yyvsp118 - 1
			when 119 then
				yyvsp119 := yyvsp119 - 1
			when 120 then
				yyvsp120 := yyvsp120 - 1
			when 121 then
				yyvsp121 := yyvsp121 - 1
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown type id: ")
					std.error.put_integer (yy_type_id)
					std.error.put_new_line
				end
				abort
			end
		end

	yy_run_geyacc
			-- You must run geyacc to regenerate this class.
		do
		end

feature {NONE} -- Semantic actions

	yy_do_action (yy_act: INTEGER)
			-- Execute semantic action.
		do
			if yy_act <= 200 then
				yy_do_action_1_200 (yy_act)
			elseif yy_act <= 400 then
				yy_do_action_201_400 (yy_act)
			elseif yy_act <= 600 then
				yy_do_action_401_600 (yy_act)
			elseif yy_act <= 800 then
				yy_do_action_601_800 (yy_act)
			elseif yy_act <= 1000 then
				yy_do_action_801_1000 (yy_act)
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown rule id: ")
					std.error.put_integer (yy_act)
					std.error.put_new_line
				end
				abort
			end
		end

	yy_do_action_1_200 (yy_act: INTEGER)
			-- Execute semantic action.
		do
			inspect yy_act
			when 1 then
					--|#line 231 "et_eiffel_parser.y"
				yy_do_action_1
			when 2 then
					--|#line 235 "et_eiffel_parser.y"
				yy_do_action_2
			when 3 then
					--|#line 243 "et_eiffel_parser.y"
				yy_do_action_3
			when 4 then
					--|#line 252 "et_eiffel_parser.y"
				yy_do_action_4
			when 5 then
					--|#line 253 "et_eiffel_parser.y"
				yy_do_action_5
			when 6 then
					--|#line 253 "et_eiffel_parser.y"
				yy_do_action_6
			when 7 then
					--|#line 264 "et_eiffel_parser.y"
				yy_do_action_7
			when 8 then
					--|#line 270 "et_eiffel_parser.y"
				yy_do_action_8
			when 9 then
					--|#line 276 "et_eiffel_parser.y"
				yy_do_action_9
			when 10 then
					--|#line 282 "et_eiffel_parser.y"
				yy_do_action_10
			when 11 then
					--|#line 288 "et_eiffel_parser.y"
				yy_do_action_11
			when 12 then
					--|#line 294 "et_eiffel_parser.y"
				yy_do_action_12
			when 13 then
					--|#line 294 "et_eiffel_parser.y"
				yy_do_action_13
			when 14 then
					--|#line 310 "et_eiffel_parser.y"
				yy_do_action_14
			when 15 then
					--|#line 315 "et_eiffel_parser.y"
				yy_do_action_15
			when 16 then
					--|#line 330 "et_eiffel_parser.y"
				yy_do_action_16
			when 17 then
					--|#line 335 "et_eiffel_parser.y"
				yy_do_action_17
			when 18 then
					--|#line 337 "et_eiffel_parser.y"
				yy_do_action_18
			when 19 then
					--|#line 337 "et_eiffel_parser.y"
				yy_do_action_19
			when 20 then
					--|#line 348 "et_eiffel_parser.y"
				yy_do_action_20
			when 21 then
					--|#line 350 "et_eiffel_parser.y"
				yy_do_action_21
			when 22 then
					--|#line 350 "et_eiffel_parser.y"
				yy_do_action_22
			when 23 then
					--|#line 363 "et_eiffel_parser.y"
				yy_do_action_23
			when 24 then
					--|#line 365 "et_eiffel_parser.y"
				yy_do_action_24
			when 25 then
					--|#line 369 "et_eiffel_parser.y"
				yy_do_action_25
			when 26 then
					--|#line 380 "et_eiffel_parser.y"
				yy_do_action_26
			when 27 then
					--|#line 380 "et_eiffel_parser.y"
				yy_do_action_27
			when 28 then
					--|#line 389 "et_eiffel_parser.y"
				yy_do_action_28
			when 29 then
					--|#line 389 "et_eiffel_parser.y"
				yy_do_action_29
			when 30 then
					--|#line 400 "et_eiffel_parser.y"
				yy_do_action_30
			when 31 then
					--|#line 407 "et_eiffel_parser.y"
				yy_do_action_31
			when 32 then
					--|#line 413 "et_eiffel_parser.y"
				yy_do_action_32
			when 33 then
					--|#line 417 "et_eiffel_parser.y"
				yy_do_action_33
			when 34 then
					--|#line 428 "et_eiffel_parser.y"
				yy_do_action_34
			when 35 then
					--|#line 440 "et_eiffel_parser.y"
				yy_do_action_35
			when 36 then
					--|#line 440 "et_eiffel_parser.y"
				yy_do_action_36
			when 37 then
					--|#line 449 "et_eiffel_parser.y"
				yy_do_action_37
			when 38 then
					--|#line 449 "et_eiffel_parser.y"
				yy_do_action_38
			when 39 then
					--|#line 460 "et_eiffel_parser.y"
				yy_do_action_39
			when 40 then
					--|#line 467 "et_eiffel_parser.y"
				yy_do_action_40
			when 41 then
					--|#line 471 "et_eiffel_parser.y"
				yy_do_action_41
			when 42 then
					--|#line 477 "et_eiffel_parser.y"
				yy_do_action_42
			when 43 then
					--|#line 479 "et_eiffel_parser.y"
				yy_do_action_43
			when 44 then
					--|#line 484 "et_eiffel_parser.y"
				yy_do_action_44
			when 45 then
					--|#line 495 "et_eiffel_parser.y"
				yy_do_action_45
			when 46 then
					--|#line 504 "et_eiffel_parser.y"
				yy_do_action_46
			when 47 then
					--|#line 506 "et_eiffel_parser.y"
				yy_do_action_47
			when 48 then
					--|#line 508 "et_eiffel_parser.y"
				yy_do_action_48
			when 49 then
					--|#line 510 "et_eiffel_parser.y"
				yy_do_action_49
			when 50 then
					--|#line 512 "et_eiffel_parser.y"
				yy_do_action_50
			when 51 then
					--|#line 514 "et_eiffel_parser.y"
				yy_do_action_51
			when 52 then
					--|#line 516 "et_eiffel_parser.y"
				yy_do_action_52
			when 53 then
					--|#line 518 "et_eiffel_parser.y"
				yy_do_action_53
			when 54 then
					--|#line 520 "et_eiffel_parser.y"
				yy_do_action_54
			when 55 then
					--|#line 524 "et_eiffel_parser.y"
				yy_do_action_55
			when 56 then
					--|#line 535 "et_eiffel_parser.y"
				yy_do_action_56
			when 57 then
					--|#line 545 "et_eiffel_parser.y"
				yy_do_action_57
			when 58 then
					--|#line 556 "et_eiffel_parser.y"
				yy_do_action_58
			when 59 then
					--|#line 567 "et_eiffel_parser.y"
				yy_do_action_59
			when 60 then
					--|#line 580 "et_eiffel_parser.y"
				yy_do_action_60
			when 61 then
					--|#line 582 "et_eiffel_parser.y"
				yy_do_action_61
			when 62 then
					--|#line 586 "et_eiffel_parser.y"
				yy_do_action_62
			when 63 then
					--|#line 588 "et_eiffel_parser.y"
				yy_do_action_63
			when 64 then
					--|#line 594 "et_eiffel_parser.y"
				yy_do_action_64
			when 65 then
					--|#line 598 "et_eiffel_parser.y"
				yy_do_action_65
			when 66 then
					--|#line 604 "et_eiffel_parser.y"
				yy_do_action_66
			when 67 then
					--|#line 604 "et_eiffel_parser.y"
				yy_do_action_67
			when 68 then
					--|#line 618 "et_eiffel_parser.y"
				yy_do_action_68
			when 69 then
					--|#line 629 "et_eiffel_parser.y"
				yy_do_action_69
			when 70 then
					--|#line 638 "et_eiffel_parser.y"
				yy_do_action_70
			when 71 then
					--|#line 647 "et_eiffel_parser.y"
				yy_do_action_71
			when 72 then
					--|#line 654 "et_eiffel_parser.y"
				yy_do_action_72
			when 73 then
					--|#line 661 "et_eiffel_parser.y"
				yy_do_action_73
			when 74 then
					--|#line 668 "et_eiffel_parser.y"
				yy_do_action_74
			when 75 then
					--|#line 675 "et_eiffel_parser.y"
				yy_do_action_75
			when 76 then
					--|#line 682 "et_eiffel_parser.y"
				yy_do_action_76
			when 77 then
					--|#line 689 "et_eiffel_parser.y"
				yy_do_action_77
			when 78 then
					--|#line 696 "et_eiffel_parser.y"
				yy_do_action_78
			when 79 then
					--|#line 703 "et_eiffel_parser.y"
				yy_do_action_79
			when 80 then
					--|#line 712 "et_eiffel_parser.y"
				yy_do_action_80
			when 81 then
					--|#line 714 "et_eiffel_parser.y"
				yy_do_action_81
			when 82 then
					--|#line 714 "et_eiffel_parser.y"
				yy_do_action_82
			when 83 then
					--|#line 727 "et_eiffel_parser.y"
				yy_do_action_83
			when 84 then
					--|#line 738 "et_eiffel_parser.y"
				yy_do_action_84
			when 85 then
					--|#line 746 "et_eiffel_parser.y"
				yy_do_action_85
			when 86 then
					--|#line 755 "et_eiffel_parser.y"
				yy_do_action_86
			when 87 then
					--|#line 757 "et_eiffel_parser.y"
				yy_do_action_87
			when 88 then
					--|#line 759 "et_eiffel_parser.y"
				yy_do_action_88
			when 89 then
					--|#line 761 "et_eiffel_parser.y"
				yy_do_action_89
			when 90 then
					--|#line 763 "et_eiffel_parser.y"
				yy_do_action_90
			when 91 then
					--|#line 765 "et_eiffel_parser.y"
				yy_do_action_91
			when 92 then
					--|#line 767 "et_eiffel_parser.y"
				yy_do_action_92
			when 93 then
					--|#line 769 "et_eiffel_parser.y"
				yy_do_action_93
			when 94 then
					--|#line 771 "et_eiffel_parser.y"
				yy_do_action_94
			when 95 then
					--|#line 773 "et_eiffel_parser.y"
				yy_do_action_95
			when 96 then
					--|#line 775 "et_eiffel_parser.y"
				yy_do_action_96
			when 97 then
					--|#line 777 "et_eiffel_parser.y"
				yy_do_action_97
			when 98 then
					--|#line 779 "et_eiffel_parser.y"
				yy_do_action_98
			when 99 then
					--|#line 781 "et_eiffel_parser.y"
				yy_do_action_99
			when 100 then
					--|#line 783 "et_eiffel_parser.y"
				yy_do_action_100
			when 101 then
					--|#line 785 "et_eiffel_parser.y"
				yy_do_action_101
			when 102 then
					--|#line 787 "et_eiffel_parser.y"
				yy_do_action_102
			when 103 then
					--|#line 789 "et_eiffel_parser.y"
				yy_do_action_103
			when 104 then
					--|#line 791 "et_eiffel_parser.y"
				yy_do_action_104
			when 105 then
					--|#line 793 "et_eiffel_parser.y"
				yy_do_action_105
			when 106 then
					--|#line 795 "et_eiffel_parser.y"
				yy_do_action_106
			when 107 then
					--|#line 797 "et_eiffel_parser.y"
				yy_do_action_107
			when 108 then
					--|#line 799 "et_eiffel_parser.y"
				yy_do_action_108
			when 109 then
					--|#line 801 "et_eiffel_parser.y"
				yy_do_action_109
			when 110 then
					--|#line 803 "et_eiffel_parser.y"
				yy_do_action_110
			when 111 then
					--|#line 807 "et_eiffel_parser.y"
				yy_do_action_111
			when 112 then
					--|#line 809 "et_eiffel_parser.y"
				yy_do_action_112
			when 113 then
					--|#line 811 "et_eiffel_parser.y"
				yy_do_action_113
			when 114 then
					--|#line 813 "et_eiffel_parser.y"
				yy_do_action_114
			when 115 then
					--|#line 815 "et_eiffel_parser.y"
				yy_do_action_115
			when 116 then
					--|#line 817 "et_eiffel_parser.y"
				yy_do_action_116
			when 117 then
					--|#line 819 "et_eiffel_parser.y"
				yy_do_action_117
			when 118 then
					--|#line 821 "et_eiffel_parser.y"
				yy_do_action_118
			when 119 then
					--|#line 823 "et_eiffel_parser.y"
				yy_do_action_119
			when 120 then
					--|#line 825 "et_eiffel_parser.y"
				yy_do_action_120
			when 121 then
					--|#line 827 "et_eiffel_parser.y"
				yy_do_action_121
			when 122 then
					--|#line 829 "et_eiffel_parser.y"
				yy_do_action_122
			when 123 then
					--|#line 831 "et_eiffel_parser.y"
				yy_do_action_123
			when 124 then
					--|#line 833 "et_eiffel_parser.y"
				yy_do_action_124
			when 125 then
					--|#line 835 "et_eiffel_parser.y"
				yy_do_action_125
			when 126 then
					--|#line 837 "et_eiffel_parser.y"
				yy_do_action_126
			when 127 then
					--|#line 839 "et_eiffel_parser.y"
				yy_do_action_127
			when 128 then
					--|#line 841 "et_eiffel_parser.y"
				yy_do_action_128
			when 129 then
					--|#line 843 "et_eiffel_parser.y"
				yy_do_action_129
			when 130 then
					--|#line 845 "et_eiffel_parser.y"
				yy_do_action_130
			when 131 then
					--|#line 847 "et_eiffel_parser.y"
				yy_do_action_131
			when 132 then
					--|#line 849 "et_eiffel_parser.y"
				yy_do_action_132
			when 133 then
					--|#line 851 "et_eiffel_parser.y"
				yy_do_action_133
			when 134 then
					--|#line 853 "et_eiffel_parser.y"
				yy_do_action_134
			when 135 then
					--|#line 855 "et_eiffel_parser.y"
				yy_do_action_135
			when 136 then
					--|#line 859 "et_eiffel_parser.y"
				yy_do_action_136
			when 137 then
					--|#line 861 "et_eiffel_parser.y"
				yy_do_action_137
			when 138 then
					--|#line 865 "et_eiffel_parser.y"
				yy_do_action_138
			when 139 then
					--|#line 868 "et_eiffel_parser.y"
				yy_do_action_139
			when 140 then
					--|#line 876 "et_eiffel_parser.y"
				yy_do_action_140
			when 141 then
					--|#line 887 "et_eiffel_parser.y"
				yy_do_action_141
			when 142 then
					--|#line 892 "et_eiffel_parser.y"
				yy_do_action_142
			when 143 then
					--|#line 897 "et_eiffel_parser.y"
				yy_do_action_143
			when 144 then
					--|#line 904 "et_eiffel_parser.y"
				yy_do_action_144
			when 145 then
					--|#line 913 "et_eiffel_parser.y"
				yy_do_action_145
			when 146 then
					--|#line 915 "et_eiffel_parser.y"
				yy_do_action_146
			when 147 then
					--|#line 919 "et_eiffel_parser.y"
				yy_do_action_147
			when 148 then
					--|#line 922 "et_eiffel_parser.y"
				yy_do_action_148
			when 149 then
					--|#line 928 "et_eiffel_parser.y"
				yy_do_action_149
			when 150 then
					--|#line 936 "et_eiffel_parser.y"
				yy_do_action_150
			when 151 then
					--|#line 941 "et_eiffel_parser.y"
				yy_do_action_151
			when 152 then
					--|#line 946 "et_eiffel_parser.y"
				yy_do_action_152
			when 153 then
					--|#line 951 "et_eiffel_parser.y"
				yy_do_action_153
			when 154 then
					--|#line 962 "et_eiffel_parser.y"
				yy_do_action_154
			when 155 then
					--|#line 973 "et_eiffel_parser.y"
				yy_do_action_155
			when 156 then
					--|#line 986 "et_eiffel_parser.y"
				yy_do_action_156
			when 157 then
					--|#line 995 "et_eiffel_parser.y"
				yy_do_action_157
			when 158 then
					--|#line 1006 "et_eiffel_parser.y"
				yy_do_action_158
			when 159 then
					--|#line 1008 "et_eiffel_parser.y"
				yy_do_action_159
			when 160 then
					--|#line 1014 "et_eiffel_parser.y"
				yy_do_action_160
			when 161 then
					--|#line 1016 "et_eiffel_parser.y"
				yy_do_action_161
			when 162 then
					--|#line 1018 "et_eiffel_parser.y"
				yy_do_action_162
			when 163 then
					--|#line 1025 "et_eiffel_parser.y"
				yy_do_action_163
			when 164 then
					--|#line 1033 "et_eiffel_parser.y"
				yy_do_action_164
			when 165 then
					--|#line 1040 "et_eiffel_parser.y"
				yy_do_action_165
			when 166 then
					--|#line 1047 "et_eiffel_parser.y"
				yy_do_action_166
			when 167 then
					--|#line 1055 "et_eiffel_parser.y"
				yy_do_action_167
			when 168 then
					--|#line 1062 "et_eiffel_parser.y"
				yy_do_action_168
			when 169 then
					--|#line 1069 "et_eiffel_parser.y"
				yy_do_action_169
			when 170 then
					--|#line 1076 "et_eiffel_parser.y"
				yy_do_action_170
			when 171 then
					--|#line 1085 "et_eiffel_parser.y"
				yy_do_action_171
			when 172 then
					--|#line 1094 "et_eiffel_parser.y"
				yy_do_action_172
			when 173 then
					--|#line 1101 "et_eiffel_parser.y"
				yy_do_action_173
			when 174 then
					--|#line 1108 "et_eiffel_parser.y"
				yy_do_action_174
			when 175 then
					--|#line 1115 "et_eiffel_parser.y"
				yy_do_action_175
			when 176 then
					--|#line 1122 "et_eiffel_parser.y"
				yy_do_action_176
			when 177 then
					--|#line 1131 "et_eiffel_parser.y"
				yy_do_action_177
			when 178 then
					--|#line 1138 "et_eiffel_parser.y"
				yy_do_action_178
			when 179 then
					--|#line 1145 "et_eiffel_parser.y"
				yy_do_action_179
			when 180 then
					--|#line 1152 "et_eiffel_parser.y"
				yy_do_action_180
			when 181 then
					--|#line 1161 "et_eiffel_parser.y"
				yy_do_action_181
			when 182 then
					--|#line 1168 "et_eiffel_parser.y"
				yy_do_action_182
			when 183 then
					--|#line 1179 "et_eiffel_parser.y"
				yy_do_action_183
			when 184 then
					--|#line 1181 "et_eiffel_parser.y"
				yy_do_action_184
			when 185 then
					--|#line 1181 "et_eiffel_parser.y"
				yy_do_action_185
			when 186 then
					--|#line 1194 "et_eiffel_parser.y"
				yy_do_action_186
			when 187 then
					--|#line 1201 "et_eiffel_parser.y"
				yy_do_action_187
			when 188 then
					--|#line 1210 "et_eiffel_parser.y"
				yy_do_action_188
			when 189 then
					--|#line 1219 "et_eiffel_parser.y"
				yy_do_action_189
			when 190 then
					--|#line 1228 "et_eiffel_parser.y"
				yy_do_action_190
			when 191 then
					--|#line 1239 "et_eiffel_parser.y"
				yy_do_action_191
			when 192 then
					--|#line 1241 "et_eiffel_parser.y"
				yy_do_action_192
			when 193 then
					--|#line 1241 "et_eiffel_parser.y"
				yy_do_action_193
			when 194 then
					--|#line 1254 "et_eiffel_parser.y"
				yy_do_action_194
			when 195 then
					--|#line 1256 "et_eiffel_parser.y"
				yy_do_action_195
			when 196 then
					--|#line 1260 "et_eiffel_parser.y"
				yy_do_action_196
			when 197 then
					--|#line 1271 "et_eiffel_parser.y"
				yy_do_action_197
			when 198 then
					--|#line 1271 "et_eiffel_parser.y"
				yy_do_action_198
			when 199 then
					--|#line 1286 "et_eiffel_parser.y"
				yy_do_action_199
			when 200 then
					--|#line 1290 "et_eiffel_parser.y"
				yy_do_action_200
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown rule id: ")
					std.error.put_integer (yy_act)
					std.error.put_new_line
				end
				abort
			end
		end

	yy_do_action_201_400 (yy_act: INTEGER)
			-- Execute semantic action.
		do
			inspect yy_act
			when 201 then
					--|#line 1295 "et_eiffel_parser.y"
				yy_do_action_201
			when 202 then
					--|#line 1295 "et_eiffel_parser.y"
				yy_do_action_202
			when 203 then
					--|#line 1305 "et_eiffel_parser.y"
				yy_do_action_203
			when 204 then
					--|#line 1309 "et_eiffel_parser.y"
				yy_do_action_204
			when 205 then
					--|#line 1320 "et_eiffel_parser.y"
				yy_do_action_205
			when 206 then
					--|#line 1328 "et_eiffel_parser.y"
				yy_do_action_206
			when 207 then
					--|#line 1339 "et_eiffel_parser.y"
				yy_do_action_207
			when 208 then
					--|#line 1339 "et_eiffel_parser.y"
				yy_do_action_208
			when 209 then
					--|#line 1350 "et_eiffel_parser.y"
				yy_do_action_209
			when 210 then
					--|#line 1354 "et_eiffel_parser.y"
				yy_do_action_210
			when 211 then
					--|#line 1361 "et_eiffel_parser.y"
				yy_do_action_211
			when 212 then
					--|#line 1369 "et_eiffel_parser.y"
				yy_do_action_212
			when 213 then
					--|#line 1376 "et_eiffel_parser.y"
				yy_do_action_213
			when 214 then
					--|#line 1386 "et_eiffel_parser.y"
				yy_do_action_214
			when 215 then
					--|#line 1395 "et_eiffel_parser.y"
				yy_do_action_215
			when 216 then
					--|#line 1406 "et_eiffel_parser.y"
				yy_do_action_216
			when 217 then
					--|#line 1408 "et_eiffel_parser.y"
				yy_do_action_217
			when 218 then
					--|#line 1408 "et_eiffel_parser.y"
				yy_do_action_218
			when 219 then
					--|#line 1421 "et_eiffel_parser.y"
				yy_do_action_219
			when 220 then
					--|#line 1423 "et_eiffel_parser.y"
				yy_do_action_220
			when 221 then
					--|#line 1427 "et_eiffel_parser.y"
				yy_do_action_221
			when 222 then
					--|#line 1429 "et_eiffel_parser.y"
				yy_do_action_222
			when 223 then
					--|#line 1429 "et_eiffel_parser.y"
				yy_do_action_223
			when 224 then
					--|#line 1442 "et_eiffel_parser.y"
				yy_do_action_224
			when 225 then
					--|#line 1444 "et_eiffel_parser.y"
				yy_do_action_225
			when 226 then
					--|#line 1448 "et_eiffel_parser.y"
				yy_do_action_226
			when 227 then
					--|#line 1450 "et_eiffel_parser.y"
				yy_do_action_227
			when 228 then
					--|#line 1450 "et_eiffel_parser.y"
				yy_do_action_228
			when 229 then
					--|#line 1463 "et_eiffel_parser.y"
				yy_do_action_229
			when 230 then
					--|#line 1465 "et_eiffel_parser.y"
				yy_do_action_230
			when 231 then
					--|#line 1469 "et_eiffel_parser.y"
				yy_do_action_231
			when 232 then
					--|#line 1480 "et_eiffel_parser.y"
				yy_do_action_232
			when 233 then
					--|#line 1488 "et_eiffel_parser.y"
				yy_do_action_233
			when 234 then
					--|#line 1497 "et_eiffel_parser.y"
				yy_do_action_234
			when 235 then
					--|#line 1508 "et_eiffel_parser.y"
				yy_do_action_235
			when 236 then
					--|#line 1510 "et_eiffel_parser.y"
				yy_do_action_236
			when 237 then
					--|#line 1517 "et_eiffel_parser.y"
				yy_do_action_237
			when 238 then
					--|#line 1524 "et_eiffel_parser.y"
				yy_do_action_238
			when 239 then
					--|#line 1535 "et_eiffel_parser.y"
				yy_do_action_239
			when 240 then
					--|#line 1535 "et_eiffel_parser.y"
				yy_do_action_240
			when 241 then
					--|#line 1550 "et_eiffel_parser.y"
				yy_do_action_241
			when 242 then
					--|#line 1552 "et_eiffel_parser.y"
				yy_do_action_242
			when 243 then
					--|#line 1554 "et_eiffel_parser.y"
				yy_do_action_243
			when 244 then
					--|#line 1554 "et_eiffel_parser.y"
				yy_do_action_244
			when 245 then
					--|#line 1566 "et_eiffel_parser.y"
				yy_do_action_245
			when 246 then
					--|#line 1566 "et_eiffel_parser.y"
				yy_do_action_246
			when 247 then
					--|#line 1578 "et_eiffel_parser.y"
				yy_do_action_247
			when 248 then
					--|#line 1580 "et_eiffel_parser.y"
				yy_do_action_248
			when 249 then
					--|#line 1582 "et_eiffel_parser.y"
				yy_do_action_249
			when 250 then
					--|#line 1582 "et_eiffel_parser.y"
				yy_do_action_250
			when 251 then
					--|#line 1594 "et_eiffel_parser.y"
				yy_do_action_251
			when 252 then
					--|#line 1594 "et_eiffel_parser.y"
				yy_do_action_252
			when 253 then
					--|#line 1608 "et_eiffel_parser.y"
				yy_do_action_253
			when 254 then
					--|#line 1619 "et_eiffel_parser.y"
				yy_do_action_254
			when 255 then
					--|#line 1631 "et_eiffel_parser.y"
				yy_do_action_255
			when 256 then
					--|#line 1640 "et_eiffel_parser.y"
				yy_do_action_256
			when 257 then
					--|#line 1651 "et_eiffel_parser.y"
				yy_do_action_257
			when 258 then
					--|#line 1653 "et_eiffel_parser.y"
				yy_do_action_258
			when 259 then
					--|#line 1657 "et_eiffel_parser.y"
				yy_do_action_259
			when 260 then
					--|#line 1657 "et_eiffel_parser.y"
				yy_do_action_260
			when 261 then
					--|#line 1670 "et_eiffel_parser.y"
				yy_do_action_261
			when 262 then
					--|#line 1677 "et_eiffel_parser.y"
				yy_do_action_262
			when 263 then
					--|#line 1684 "et_eiffel_parser.y"
				yy_do_action_263
			when 264 then
					--|#line 1693 "et_eiffel_parser.y"
				yy_do_action_264
			when 265 then
					--|#line 1702 "et_eiffel_parser.y"
				yy_do_action_265
			when 266 then
					--|#line 1706 "et_eiffel_parser.y"
				yy_do_action_266
			when 267 then
					--|#line 1712 "et_eiffel_parser.y"
				yy_do_action_267
			when 268 then
					--|#line 1714 "et_eiffel_parser.y"
				yy_do_action_268
			when 269 then
					--|#line 1714 "et_eiffel_parser.y"
				yy_do_action_269
			when 270 then
					--|#line 1727 "et_eiffel_parser.y"
				yy_do_action_270
			when 271 then
					--|#line 1738 "et_eiffel_parser.y"
				yy_do_action_271
			when 272 then
					--|#line 1747 "et_eiffel_parser.y"
				yy_do_action_272
			when 273 then
					--|#line 1758 "et_eiffel_parser.y"
				yy_do_action_273
			when 274 then
					--|#line 1763 "et_eiffel_parser.y"
				yy_do_action_274
			when 275 then
					--|#line 1767 "et_eiffel_parser.y"
				yy_do_action_275
			when 276 then
					--|#line 1775 "et_eiffel_parser.y"
				yy_do_action_276
			when 277 then
					--|#line 1782 "et_eiffel_parser.y"
				yy_do_action_277
			when 278 then
					--|#line 1791 "et_eiffel_parser.y"
				yy_do_action_278
			when 279 then
					--|#line 1798 "et_eiffel_parser.y"
				yy_do_action_279
			when 280 then
					--|#line 1807 "et_eiffel_parser.y"
				yy_do_action_280
			when 281 then
					--|#line 1812 "et_eiffel_parser.y"
				yy_do_action_281
			when 282 then
					--|#line 1819 "et_eiffel_parser.y"
				yy_do_action_282
			when 283 then
					--|#line 1820 "et_eiffel_parser.y"
				yy_do_action_283
			when 284 then
					--|#line 1821 "et_eiffel_parser.y"
				yy_do_action_284
			when 285 then
					--|#line 1822 "et_eiffel_parser.y"
				yy_do_action_285
			when 286 then
					--|#line 1827 "et_eiffel_parser.y"
				yy_do_action_286
			when 287 then
					--|#line 1832 "et_eiffel_parser.y"
				yy_do_action_287
			when 288 then
					--|#line 1838 "et_eiffel_parser.y"
				yy_do_action_288
			when 289 then
					--|#line 1843 "et_eiffel_parser.y"
				yy_do_action_289
			when 290 then
					--|#line 1849 "et_eiffel_parser.y"
				yy_do_action_290
			when 291 then
					--|#line 1855 "et_eiffel_parser.y"
				yy_do_action_291
			when 292 then
					--|#line 1864 "et_eiffel_parser.y"
				yy_do_action_292
			when 293 then
					--|#line 1869 "et_eiffel_parser.y"
				yy_do_action_293
			when 294 then
					--|#line 1875 "et_eiffel_parser.y"
				yy_do_action_294
			when 295 then
					--|#line 1880 "et_eiffel_parser.y"
				yy_do_action_295
			when 296 then
					--|#line 1886 "et_eiffel_parser.y"
				yy_do_action_296
			when 297 then
					--|#line 1892 "et_eiffel_parser.y"
				yy_do_action_297
			when 298 then
					--|#line 1901 "et_eiffel_parser.y"
				yy_do_action_298
			when 299 then
					--|#line 1903 "et_eiffel_parser.y"
				yy_do_action_299
			when 300 then
					--|#line 1905 "et_eiffel_parser.y"
				yy_do_action_300
			when 301 then
					--|#line 1909 "et_eiffel_parser.y"
				yy_do_action_301
			when 302 then
					--|#line 1911 "et_eiffel_parser.y"
				yy_do_action_302
			when 303 then
					--|#line 1919 "et_eiffel_parser.y"
				yy_do_action_303
			when 304 then
					--|#line 1921 "et_eiffel_parser.y"
				yy_do_action_304
			when 305 then
					--|#line 1929 "et_eiffel_parser.y"
				yy_do_action_305
			when 306 then
					--|#line 1932 "et_eiffel_parser.y"
				yy_do_action_306
			when 307 then
					--|#line 1941 "et_eiffel_parser.y"
				yy_do_action_307
			when 308 then
					--|#line 1945 "et_eiffel_parser.y"
				yy_do_action_308
			when 309 then
					--|#line 1955 "et_eiffel_parser.y"
				yy_do_action_309
			when 310 then
					--|#line 1958 "et_eiffel_parser.y"
				yy_do_action_310
			when 311 then
					--|#line 1967 "et_eiffel_parser.y"
				yy_do_action_311
			when 312 then
					--|#line 1971 "et_eiffel_parser.y"
				yy_do_action_312
			when 313 then
					--|#line 1981 "et_eiffel_parser.y"
				yy_do_action_313
			when 314 then
					--|#line 1983 "et_eiffel_parser.y"
				yy_do_action_314
			when 315 then
					--|#line 1991 "et_eiffel_parser.y"
				yy_do_action_315
			when 316 then
					--|#line 1994 "et_eiffel_parser.y"
				yy_do_action_316
			when 317 then
					--|#line 2003 "et_eiffel_parser.y"
				yy_do_action_317
			when 318 then
					--|#line 2006 "et_eiffel_parser.y"
				yy_do_action_318
			when 319 then
					--|#line 2015 "et_eiffel_parser.y"
				yy_do_action_319
			when 320 then
					--|#line 2019 "et_eiffel_parser.y"
				yy_do_action_320
			when 321 then
					--|#line 2031 "et_eiffel_parser.y"
				yy_do_action_321
			when 322 then
					--|#line 2034 "et_eiffel_parser.y"
				yy_do_action_322
			when 323 then
					--|#line 2038 "et_eiffel_parser.y"
				yy_do_action_323
			when 324 then
					--|#line 2041 "et_eiffel_parser.y"
				yy_do_action_324
			when 325 then
					--|#line 2045 "et_eiffel_parser.y"
				yy_do_action_325
			when 326 then
					--|#line 2047 "et_eiffel_parser.y"
				yy_do_action_326
			when 327 then
					--|#line 2050 "et_eiffel_parser.y"
				yy_do_action_327
			when 328 then
					--|#line 2053 "et_eiffel_parser.y"
				yy_do_action_328
			when 329 then
					--|#line 2059 "et_eiffel_parser.y"
				yy_do_action_329
			when 330 then
					--|#line 2067 "et_eiffel_parser.y"
				yy_do_action_330
			when 331 then
					--|#line 2071 "et_eiffel_parser.y"
				yy_do_action_331
			when 332 then
					--|#line 2073 "et_eiffel_parser.y"
				yy_do_action_332
			when 333 then
					--|#line 2077 "et_eiffel_parser.y"
				yy_do_action_333
			when 334 then
					--|#line 2079 "et_eiffel_parser.y"
				yy_do_action_334
			when 335 then
					--|#line 2083 "et_eiffel_parser.y"
				yy_do_action_335
			when 336 then
					--|#line 2085 "et_eiffel_parser.y"
				yy_do_action_336
			when 337 then
					--|#line 2091 "et_eiffel_parser.y"
				yy_do_action_337
			when 338 then
					--|#line 2093 "et_eiffel_parser.y"
				yy_do_action_338
			when 339 then
					--|#line 2095 "et_eiffel_parser.y"
				yy_do_action_339
			when 340 then
					--|#line 2097 "et_eiffel_parser.y"
				yy_do_action_340
			when 341 then
					--|#line 2099 "et_eiffel_parser.y"
				yy_do_action_341
			when 342 then
					--|#line 2101 "et_eiffel_parser.y"
				yy_do_action_342
			when 343 then
					--|#line 2103 "et_eiffel_parser.y"
				yy_do_action_343
			when 344 then
					--|#line 2105 "et_eiffel_parser.y"
				yy_do_action_344
			when 345 then
					--|#line 2107 "et_eiffel_parser.y"
				yy_do_action_345
			when 346 then
					--|#line 2109 "et_eiffel_parser.y"
				yy_do_action_346
			when 347 then
					--|#line 2111 "et_eiffel_parser.y"
				yy_do_action_347
			when 348 then
					--|#line 2113 "et_eiffel_parser.y"
				yy_do_action_348
			when 349 then
					--|#line 2115 "et_eiffel_parser.y"
				yy_do_action_349
			when 350 then
					--|#line 2117 "et_eiffel_parser.y"
				yy_do_action_350
			when 351 then
					--|#line 2119 "et_eiffel_parser.y"
				yy_do_action_351
			when 352 then
					--|#line 2121 "et_eiffel_parser.y"
				yy_do_action_352
			when 353 then
					--|#line 2123 "et_eiffel_parser.y"
				yy_do_action_353
			when 354 then
					--|#line 2125 "et_eiffel_parser.y"
				yy_do_action_354
			when 355 then
					--|#line 2127 "et_eiffel_parser.y"
				yy_do_action_355
			when 356 then
					--|#line 2129 "et_eiffel_parser.y"
				yy_do_action_356
			when 357 then
					--|#line 2131 "et_eiffel_parser.y"
				yy_do_action_357
			when 358 then
					--|#line 2133 "et_eiffel_parser.y"
				yy_do_action_358
			when 359 then
					--|#line 2135 "et_eiffel_parser.y"
				yy_do_action_359
			when 360 then
					--|#line 2138 "et_eiffel_parser.y"
				yy_do_action_360
			when 361 then
					--|#line 2140 "et_eiffel_parser.y"
				yy_do_action_361
			when 362 then
					--|#line 2142 "et_eiffel_parser.y"
				yy_do_action_362
			when 363 then
					--|#line 2144 "et_eiffel_parser.y"
				yy_do_action_363
			when 364 then
					--|#line 2146 "et_eiffel_parser.y"
				yy_do_action_364
			when 365 then
					--|#line 2148 "et_eiffel_parser.y"
				yy_do_action_365
			when 366 then
					--|#line 2150 "et_eiffel_parser.y"
				yy_do_action_366
			when 367 then
					--|#line 2152 "et_eiffel_parser.y"
				yy_do_action_367
			when 368 then
					--|#line 2154 "et_eiffel_parser.y"
				yy_do_action_368
			when 369 then
					--|#line 2156 "et_eiffel_parser.y"
				yy_do_action_369
			when 370 then
					--|#line 2158 "et_eiffel_parser.y"
				yy_do_action_370
			when 371 then
					--|#line 2160 "et_eiffel_parser.y"
				yy_do_action_371
			when 372 then
					--|#line 2162 "et_eiffel_parser.y"
				yy_do_action_372
			when 373 then
					--|#line 2164 "et_eiffel_parser.y"
				yy_do_action_373
			when 374 then
					--|#line 2166 "et_eiffel_parser.y"
				yy_do_action_374
			when 375 then
					--|#line 2168 "et_eiffel_parser.y"
				yy_do_action_375
			when 376 then
					--|#line 2170 "et_eiffel_parser.y"
				yy_do_action_376
			when 377 then
					--|#line 2172 "et_eiffel_parser.y"
				yy_do_action_377
			when 378 then
					--|#line 2176 "et_eiffel_parser.y"
				yy_do_action_378
			when 379 then
					--|#line 2178 "et_eiffel_parser.y"
				yy_do_action_379
			when 380 then
					--|#line 2182 "et_eiffel_parser.y"
				yy_do_action_380
			when 381 then
					--|#line 2184 "et_eiffel_parser.y"
				yy_do_action_381
			when 382 then
					--|#line 2186 "et_eiffel_parser.y"
				yy_do_action_382
			when 383 then
					--|#line 2188 "et_eiffel_parser.y"
				yy_do_action_383
			when 384 then
					--|#line 2190 "et_eiffel_parser.y"
				yy_do_action_384
			when 385 then
					--|#line 2192 "et_eiffel_parser.y"
				yy_do_action_385
			when 386 then
					--|#line 2194 "et_eiffel_parser.y"
				yy_do_action_386
			when 387 then
					--|#line 2196 "et_eiffel_parser.y"
				yy_do_action_387
			when 388 then
					--|#line 2198 "et_eiffel_parser.y"
				yy_do_action_388
			when 389 then
					--|#line 2200 "et_eiffel_parser.y"
				yy_do_action_389
			when 390 then
					--|#line 2202 "et_eiffel_parser.y"
				yy_do_action_390
			when 391 then
					--|#line 2204 "et_eiffel_parser.y"
				yy_do_action_391
			when 392 then
					--|#line 2206 "et_eiffel_parser.y"
				yy_do_action_392
			when 393 then
					--|#line 2208 "et_eiffel_parser.y"
				yy_do_action_393
			when 394 then
					--|#line 2210 "et_eiffel_parser.y"
				yy_do_action_394
			when 395 then
					--|#line 2212 "et_eiffel_parser.y"
				yy_do_action_395
			when 396 then
					--|#line 2214 "et_eiffel_parser.y"
				yy_do_action_396
			when 397 then
					--|#line 2216 "et_eiffel_parser.y"
				yy_do_action_397
			when 398 then
					--|#line 2218 "et_eiffel_parser.y"
				yy_do_action_398
			when 399 then
					--|#line 2220 "et_eiffel_parser.y"
				yy_do_action_399
			when 400 then
					--|#line 2222 "et_eiffel_parser.y"
				yy_do_action_400
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown rule id: ")
					std.error.put_integer (yy_act)
					std.error.put_new_line
				end
				abort
			end
		end

	yy_do_action_401_600 (yy_act: INTEGER)
			-- Execute semantic action.
		do
			inspect yy_act
			when 401 then
					--|#line 2225 "et_eiffel_parser.y"
				yy_do_action_401
			when 402 then
					--|#line 2231 "et_eiffel_parser.y"
				yy_do_action_402
			when 403 then
					--|#line 2238 "et_eiffel_parser.y"
				yy_do_action_403
			when 404 then
					--|#line 2240 "et_eiffel_parser.y"
				yy_do_action_404
			when 405 then
					--|#line 2248 "et_eiffel_parser.y"
				yy_do_action_405
			when 406 then
					--|#line 2259 "et_eiffel_parser.y"
				yy_do_action_406
			when 407 then
					--|#line 2266 "et_eiffel_parser.y"
				yy_do_action_407
			when 408 then
					--|#line 2273 "et_eiffel_parser.y"
				yy_do_action_408
			when 409 then
					--|#line 2283 "et_eiffel_parser.y"
				yy_do_action_409
			when 410 then
					--|#line 2294 "et_eiffel_parser.y"
				yy_do_action_410
			when 411 then
					--|#line 2301 "et_eiffel_parser.y"
				yy_do_action_411
			when 412 then
					--|#line 2310 "et_eiffel_parser.y"
				yy_do_action_412
			when 413 then
					--|#line 2319 "et_eiffel_parser.y"
				yy_do_action_413
			when 414 then
					--|#line 2328 "et_eiffel_parser.y"
				yy_do_action_414
			when 415 then
					--|#line 2337 "et_eiffel_parser.y"
				yy_do_action_415
			when 416 then
					--|#line 2348 "et_eiffel_parser.y"
				yy_do_action_416
			when 417 then
					--|#line 2350 "et_eiffel_parser.y"
				yy_do_action_417
			when 418 then
					--|#line 2352 "et_eiffel_parser.y"
				yy_do_action_418
			when 419 then
					--|#line 2352 "et_eiffel_parser.y"
				yy_do_action_419
			when 420 then
					--|#line 2365 "et_eiffel_parser.y"
				yy_do_action_420
			when 421 then
					--|#line 2372 "et_eiffel_parser.y"
				yy_do_action_421
			when 422 then
					--|#line 2379 "et_eiffel_parser.y"
				yy_do_action_422
			when 423 then
					--|#line 2389 "et_eiffel_parser.y"
				yy_do_action_423
			when 424 then
					--|#line 2400 "et_eiffel_parser.y"
				yy_do_action_424
			when 425 then
					--|#line 2407 "et_eiffel_parser.y"
				yy_do_action_425
			when 426 then
					--|#line 2416 "et_eiffel_parser.y"
				yy_do_action_426
			when 427 then
					--|#line 2425 "et_eiffel_parser.y"
				yy_do_action_427
			when 428 then
					--|#line 2434 "et_eiffel_parser.y"
				yy_do_action_428
			when 429 then
					--|#line 2443 "et_eiffel_parser.y"
				yy_do_action_429
			when 430 then
					--|#line 2454 "et_eiffel_parser.y"
				yy_do_action_430
			when 431 then
					--|#line 2456 "et_eiffel_parser.y"
				yy_do_action_431
			when 432 then
					--|#line 2458 "et_eiffel_parser.y"
				yy_do_action_432
			when 433 then
					--|#line 2460 "et_eiffel_parser.y"
				yy_do_action_433
			when 434 then
					--|#line 2462 "et_eiffel_parser.y"
				yy_do_action_434
			when 435 then
					--|#line 2464 "et_eiffel_parser.y"
				yy_do_action_435
			when 436 then
					--|#line 2466 "et_eiffel_parser.y"
				yy_do_action_436
			when 437 then
					--|#line 2468 "et_eiffel_parser.y"
				yy_do_action_437
			when 438 then
					--|#line 2472 "et_eiffel_parser.y"
				yy_do_action_438
			when 439 then
					--|#line 2474 "et_eiffel_parser.y"
				yy_do_action_439
			when 440 then
					--|#line 2476 "et_eiffel_parser.y"
				yy_do_action_440
			when 441 then
					--|#line 2478 "et_eiffel_parser.y"
				yy_do_action_441
			when 442 then
					--|#line 2480 "et_eiffel_parser.y"
				yy_do_action_442
			when 443 then
					--|#line 2484 "et_eiffel_parser.y"
				yy_do_action_443
			when 444 then
					--|#line 2486 "et_eiffel_parser.y"
				yy_do_action_444
			when 445 then
					--|#line 2488 "et_eiffel_parser.y"
				yy_do_action_445
			when 446 then
					--|#line 2490 "et_eiffel_parser.y"
				yy_do_action_446
			when 447 then
					--|#line 2492 "et_eiffel_parser.y"
				yy_do_action_447
			when 448 then
					--|#line 2496 "et_eiffel_parser.y"
				yy_do_action_448
			when 449 then
					--|#line 2498 "et_eiffel_parser.y"
				yy_do_action_449
			when 450 then
					--|#line 2502 "et_eiffel_parser.y"
				yy_do_action_450
			when 451 then
					--|#line 2504 "et_eiffel_parser.y"
				yy_do_action_451
			when 452 then
					--|#line 2508 "et_eiffel_parser.y"
				yy_do_action_452
			when 453 then
					--|#line 2512 "et_eiffel_parser.y"
				yy_do_action_453
			when 454 then
					--|#line 2514 "et_eiffel_parser.y"
				yy_do_action_454
			when 455 then
					--|#line 2518 "et_eiffel_parser.y"
				yy_do_action_455
			when 456 then
					--|#line 2520 "et_eiffel_parser.y"
				yy_do_action_456
			when 457 then
					--|#line 2524 "et_eiffel_parser.y"
				yy_do_action_457
			when 458 then
					--|#line 2526 "et_eiffel_parser.y"
				yy_do_action_458
			when 459 then
					--|#line 2530 "et_eiffel_parser.y"
				yy_do_action_459
			when 460 then
					--|#line 2532 "et_eiffel_parser.y"
				yy_do_action_460
			when 461 then
					--|#line 2538 "et_eiffel_parser.y"
				yy_do_action_461
			when 462 then
					--|#line 2540 "et_eiffel_parser.y"
				yy_do_action_462
			when 463 then
					--|#line 2546 "et_eiffel_parser.y"
				yy_do_action_463
			when 464 then
					--|#line 2548 "et_eiffel_parser.y"
				yy_do_action_464
			when 465 then
					--|#line 2552 "et_eiffel_parser.y"
				yy_do_action_465
			when 466 then
					--|#line 2554 "et_eiffel_parser.y"
				yy_do_action_466
			when 467 then
					--|#line 2556 "et_eiffel_parser.y"
				yy_do_action_467
			when 468 then
					--|#line 2558 "et_eiffel_parser.y"
				yy_do_action_468
			when 469 then
					--|#line 2560 "et_eiffel_parser.y"
				yy_do_action_469
			when 470 then
					--|#line 2562 "et_eiffel_parser.y"
				yy_do_action_470
			when 471 then
					--|#line 2564 "et_eiffel_parser.y"
				yy_do_action_471
			when 472 then
					--|#line 2566 "et_eiffel_parser.y"
				yy_do_action_472
			when 473 then
					--|#line 2568 "et_eiffel_parser.y"
				yy_do_action_473
			when 474 then
					--|#line 2570 "et_eiffel_parser.y"
				yy_do_action_474
			when 475 then
					--|#line 2572 "et_eiffel_parser.y"
				yy_do_action_475
			when 476 then
					--|#line 2574 "et_eiffel_parser.y"
				yy_do_action_476
			when 477 then
					--|#line 2576 "et_eiffel_parser.y"
				yy_do_action_477
			when 478 then
					--|#line 2578 "et_eiffel_parser.y"
				yy_do_action_478
			when 479 then
					--|#line 2580 "et_eiffel_parser.y"
				yy_do_action_479
			when 480 then
					--|#line 2582 "et_eiffel_parser.y"
				yy_do_action_480
			when 481 then
					--|#line 2584 "et_eiffel_parser.y"
				yy_do_action_481
			when 482 then
					--|#line 2586 "et_eiffel_parser.y"
				yy_do_action_482
			when 483 then
					--|#line 2588 "et_eiffel_parser.y"
				yy_do_action_483
			when 484 then
					--|#line 2590 "et_eiffel_parser.y"
				yy_do_action_484
			when 485 then
					--|#line 2592 "et_eiffel_parser.y"
				yy_do_action_485
			when 486 then
					--|#line 2594 "et_eiffel_parser.y"
				yy_do_action_486
			when 487 then
					--|#line 2596 "et_eiffel_parser.y"
				yy_do_action_487
			when 488 then
					--|#line 2598 "et_eiffel_parser.y"
				yy_do_action_488
			when 489 then
					--|#line 2600 "et_eiffel_parser.y"
				yy_do_action_489
			when 490 then
					--|#line 2604 "et_eiffel_parser.y"
				yy_do_action_490
			when 491 then
					--|#line 2606 "et_eiffel_parser.y"
				yy_do_action_491
			when 492 then
					--|#line 2608 "et_eiffel_parser.y"
				yy_do_action_492
			when 493 then
					--|#line 2610 "et_eiffel_parser.y"
				yy_do_action_493
			when 494 then
					--|#line 2612 "et_eiffel_parser.y"
				yy_do_action_494
			when 495 then
					--|#line 2614 "et_eiffel_parser.y"
				yy_do_action_495
			when 496 then
					--|#line 2616 "et_eiffel_parser.y"
				yy_do_action_496
			when 497 then
					--|#line 2618 "et_eiffel_parser.y"
				yy_do_action_497
			when 498 then
					--|#line 2620 "et_eiffel_parser.y"
				yy_do_action_498
			when 499 then
					--|#line 2622 "et_eiffel_parser.y"
				yy_do_action_499
			when 500 then
					--|#line 2624 "et_eiffel_parser.y"
				yy_do_action_500
			when 501 then
					--|#line 2626 "et_eiffel_parser.y"
				yy_do_action_501
			when 502 then
					--|#line 2628 "et_eiffel_parser.y"
				yy_do_action_502
			when 503 then
					--|#line 2630 "et_eiffel_parser.y"
				yy_do_action_503
			when 504 then
					--|#line 2632 "et_eiffel_parser.y"
				yy_do_action_504
			when 505 then
					--|#line 2634 "et_eiffel_parser.y"
				yy_do_action_505
			when 506 then
					--|#line 2636 "et_eiffel_parser.y"
				yy_do_action_506
			when 507 then
					--|#line 2638 "et_eiffel_parser.y"
				yy_do_action_507
			when 508 then
					--|#line 2640 "et_eiffel_parser.y"
				yy_do_action_508
			when 509 then
					--|#line 2642 "et_eiffel_parser.y"
				yy_do_action_509
			when 510 then
					--|#line 2644 "et_eiffel_parser.y"
				yy_do_action_510
			when 511 then
					--|#line 2646 "et_eiffel_parser.y"
				yy_do_action_511
			when 512 then
					--|#line 2648 "et_eiffel_parser.y"
				yy_do_action_512
			when 513 then
					--|#line 2650 "et_eiffel_parser.y"
				yy_do_action_513
			when 514 then
					--|#line 2652 "et_eiffel_parser.y"
				yy_do_action_514
			when 515 then
					--|#line 2656 "et_eiffel_parser.y"
				yy_do_action_515
			when 516 then
					--|#line 2658 "et_eiffel_parser.y"
				yy_do_action_516
			when 517 then
					--|#line 2660 "et_eiffel_parser.y"
				yy_do_action_517
			when 518 then
					--|#line 2662 "et_eiffel_parser.y"
				yy_do_action_518
			when 519 then
					--|#line 2664 "et_eiffel_parser.y"
				yy_do_action_519
			when 520 then
					--|#line 2666 "et_eiffel_parser.y"
				yy_do_action_520
			when 521 then
					--|#line 2668 "et_eiffel_parser.y"
				yy_do_action_521
			when 522 then
					--|#line 2670 "et_eiffel_parser.y"
				yy_do_action_522
			when 523 then
					--|#line 2672 "et_eiffel_parser.y"
				yy_do_action_523
			when 524 then
					--|#line 2674 "et_eiffel_parser.y"
				yy_do_action_524
			when 525 then
					--|#line 2676 "et_eiffel_parser.y"
				yy_do_action_525
			when 526 then
					--|#line 2678 "et_eiffel_parser.y"
				yy_do_action_526
			when 527 then
					--|#line 2680 "et_eiffel_parser.y"
				yy_do_action_527
			when 528 then
					--|#line 2682 "et_eiffel_parser.y"
				yy_do_action_528
			when 529 then
					--|#line 2684 "et_eiffel_parser.y"
				yy_do_action_529
			when 530 then
					--|#line 2686 "et_eiffel_parser.y"
				yy_do_action_530
			when 531 then
					--|#line 2688 "et_eiffel_parser.y"
				yy_do_action_531
			when 532 then
					--|#line 2690 "et_eiffel_parser.y"
				yy_do_action_532
			when 533 then
					--|#line 2692 "et_eiffel_parser.y"
				yy_do_action_533
			when 534 then
					--|#line 2694 "et_eiffel_parser.y"
				yy_do_action_534
			when 535 then
					--|#line 2696 "et_eiffel_parser.y"
				yy_do_action_535
			when 536 then
					--|#line 2698 "et_eiffel_parser.y"
				yy_do_action_536
			when 537 then
					--|#line 2700 "et_eiffel_parser.y"
				yy_do_action_537
			when 538 then
					--|#line 2702 "et_eiffel_parser.y"
				yy_do_action_538
			when 539 then
					--|#line 2704 "et_eiffel_parser.y"
				yy_do_action_539
			when 540 then
					--|#line 2706 "et_eiffel_parser.y"
				yy_do_action_540
			when 541 then
					--|#line 2710 "et_eiffel_parser.y"
				yy_do_action_541
			when 542 then
					--|#line 2714 "et_eiffel_parser.y"
				yy_do_action_542
			when 543 then
					--|#line 2716 "et_eiffel_parser.y"
				yy_do_action_543
			when 544 then
					--|#line 2720 "et_eiffel_parser.y"
				yy_do_action_544
			when 545 then
					--|#line 2723 "et_eiffel_parser.y"
				yy_do_action_545
			when 546 then
					--|#line 2731 "et_eiffel_parser.y"
				yy_do_action_546
			when 547 then
					--|#line 2738 "et_eiffel_parser.y"
				yy_do_action_547
			when 548 then
					--|#line 2749 "et_eiffel_parser.y"
				yy_do_action_548
			when 549 then
					--|#line 2754 "et_eiffel_parser.y"
				yy_do_action_549
			when 550 then
					--|#line 2759 "et_eiffel_parser.y"
				yy_do_action_550
			when 551 then
					--|#line 2766 "et_eiffel_parser.y"
				yy_do_action_551
			when 552 then
					--|#line 2772 "et_eiffel_parser.y"
				yy_do_action_552
			when 553 then
					--|#line 2781 "et_eiffel_parser.y"
				yy_do_action_553
			when 554 then
					--|#line 2783 "et_eiffel_parser.y"
				yy_do_action_554
			when 555 then
					--|#line 2787 "et_eiffel_parser.y"
				yy_do_action_555
			when 556 then
					--|#line 2790 "et_eiffel_parser.y"
				yy_do_action_556
			when 557 then
					--|#line 2796 "et_eiffel_parser.y"
				yy_do_action_557
			when 558 then
					--|#line 2804 "et_eiffel_parser.y"
				yy_do_action_558
			when 559 then
					--|#line 2809 "et_eiffel_parser.y"
				yy_do_action_559
			when 560 then
					--|#line 2814 "et_eiffel_parser.y"
				yy_do_action_560
			when 561 then
					--|#line 2819 "et_eiffel_parser.y"
				yy_do_action_561
			when 562 then
					--|#line 2830 "et_eiffel_parser.y"
				yy_do_action_562
			when 563 then
					--|#line 2841 "et_eiffel_parser.y"
				yy_do_action_563
			when 564 then
					--|#line 2854 "et_eiffel_parser.y"
				yy_do_action_564
			when 565 then
					--|#line 2863 "et_eiffel_parser.y"
				yy_do_action_565
			when 566 then
					--|#line 2872 "et_eiffel_parser.y"
				yy_do_action_566
			when 567 then
					--|#line 2874 "et_eiffel_parser.y"
				yy_do_action_567
			when 568 then
					--|#line 2876 "et_eiffel_parser.y"
				yy_do_action_568
			when 569 then
					--|#line 2880 "et_eiffel_parser.y"
				yy_do_action_569
			when 570 then
					--|#line 2882 "et_eiffel_parser.y"
				yy_do_action_570
			when 571 then
					--|#line 2884 "et_eiffel_parser.y"
				yy_do_action_571
			when 572 then
					--|#line 2886 "et_eiffel_parser.y"
				yy_do_action_572
			when 573 then
					--|#line 2888 "et_eiffel_parser.y"
				yy_do_action_573
			when 574 then
					--|#line 2890 "et_eiffel_parser.y"
				yy_do_action_574
			when 575 then
					--|#line 2892 "et_eiffel_parser.y"
				yy_do_action_575
			when 576 then
					--|#line 2894 "et_eiffel_parser.y"
				yy_do_action_576
			when 577 then
					--|#line 2896 "et_eiffel_parser.y"
				yy_do_action_577
			when 578 then
					--|#line 2898 "et_eiffel_parser.y"
				yy_do_action_578
			when 579 then
					--|#line 2900 "et_eiffel_parser.y"
				yy_do_action_579
			when 580 then
					--|#line 2902 "et_eiffel_parser.y"
				yy_do_action_580
			when 581 then
					--|#line 2904 "et_eiffel_parser.y"
				yy_do_action_581
			when 582 then
					--|#line 2906 "et_eiffel_parser.y"
				yy_do_action_582
			when 583 then
					--|#line 2908 "et_eiffel_parser.y"
				yy_do_action_583
			when 584 then
					--|#line 2910 "et_eiffel_parser.y"
				yy_do_action_584
			when 585 then
					--|#line 2912 "et_eiffel_parser.y"
				yy_do_action_585
			when 586 then
					--|#line 2914 "et_eiffel_parser.y"
				yy_do_action_586
			when 587 then
					--|#line 2916 "et_eiffel_parser.y"
				yy_do_action_587
			when 588 then
					--|#line 2918 "et_eiffel_parser.y"
				yy_do_action_588
			when 589 then
					--|#line 2920 "et_eiffel_parser.y"
				yy_do_action_589
			when 590 then
					--|#line 2924 "et_eiffel_parser.y"
				yy_do_action_590
			when 591 then
					--|#line 2932 "et_eiffel_parser.y"
				yy_do_action_591
			when 592 then
					--|#line 2942 "et_eiffel_parser.y"
				yy_do_action_592
			when 593 then
					--|#line 2944 "et_eiffel_parser.y"
				yy_do_action_593
			when 594 then
					--|#line 2952 "et_eiffel_parser.y"
				yy_do_action_594
			when 595 then
					--|#line 2960 "et_eiffel_parser.y"
				yy_do_action_595
			when 596 then
					--|#line 2968 "et_eiffel_parser.y"
				yy_do_action_596
			when 597 then
					--|#line 2976 "et_eiffel_parser.y"
				yy_do_action_597
			when 598 then
					--|#line 2984 "et_eiffel_parser.y"
				yy_do_action_598
			when 599 then
					--|#line 2994 "et_eiffel_parser.y"
				yy_do_action_599
			when 600 then
					--|#line 3004 "et_eiffel_parser.y"
				yy_do_action_600
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown rule id: ")
					std.error.put_integer (yy_act)
					std.error.put_new_line
				end
				abort
			end
		end

	yy_do_action_601_800 (yy_act: INTEGER)
			-- Execute semantic action.
		do
			inspect yy_act
			when 601 then
					--|#line 3014 "et_eiffel_parser.y"
				yy_do_action_601
			when 602 then
					--|#line 3024 "et_eiffel_parser.y"
				yy_do_action_602
			when 603 then
					--|#line 3032 "et_eiffel_parser.y"
				yy_do_action_603
			when 604 then
					--|#line 3040 "et_eiffel_parser.y"
				yy_do_action_604
			when 605 then
					--|#line 3048 "et_eiffel_parser.y"
				yy_do_action_605
			when 606 then
					--|#line 3056 "et_eiffel_parser.y"
				yy_do_action_606
			when 607 then
					--|#line 3064 "et_eiffel_parser.y"
				yy_do_action_607
			when 608 then
					--|#line 3072 "et_eiffel_parser.y"
				yy_do_action_608
			when 609 then
					--|#line 3080 "et_eiffel_parser.y"
				yy_do_action_609
			when 610 then
					--|#line 3088 "et_eiffel_parser.y"
				yy_do_action_610
			when 611 then
					--|#line 3100 "et_eiffel_parser.y"
				yy_do_action_611
			when 612 then
					--|#line 3104 "et_eiffel_parser.y"
				yy_do_action_612
			when 613 then
					--|#line 3108 "et_eiffel_parser.y"
				yy_do_action_613
			when 614 then
					--|#line 3112 "et_eiffel_parser.y"
				yy_do_action_614
			when 615 then
					--|#line 3116 "et_eiffel_parser.y"
				yy_do_action_615
			when 616 then
					--|#line 3120 "et_eiffel_parser.y"
				yy_do_action_616
			when 617 then
					--|#line 3124 "et_eiffel_parser.y"
				yy_do_action_617
			when 618 then
					--|#line 3128 "et_eiffel_parser.y"
				yy_do_action_618
			when 619 then
					--|#line 3132 "et_eiffel_parser.y"
				yy_do_action_619
			when 620 then
					--|#line 3134 "et_eiffel_parser.y"
				yy_do_action_620
			when 621 then
					--|#line 3138 "et_eiffel_parser.y"
				yy_do_action_621
			when 622 then
					--|#line 3142 "et_eiffel_parser.y"
				yy_do_action_622
			when 623 then
					--|#line 3149 "et_eiffel_parser.y"
				yy_do_action_623
			when 624 then
					--|#line 3151 "et_eiffel_parser.y"
				yy_do_action_624
			when 625 then
					--|#line 3155 "et_eiffel_parser.y"
				yy_do_action_625
			when 626 then
					--|#line 3157 "et_eiffel_parser.y"
				yy_do_action_626
			when 627 then
					--|#line 3161 "et_eiffel_parser.y"
				yy_do_action_627
			when 628 then
					--|#line 3172 "et_eiffel_parser.y"
				yy_do_action_628
			when 629 then
					--|#line 3172 "et_eiffel_parser.y"
				yy_do_action_629
			when 630 then
					--|#line 3193 "et_eiffel_parser.y"
				yy_do_action_630
			when 631 then
					--|#line 3195 "et_eiffel_parser.y"
				yy_do_action_631
			when 632 then
					--|#line 3197 "et_eiffel_parser.y"
				yy_do_action_632
			when 633 then
					--|#line 3199 "et_eiffel_parser.y"
				yy_do_action_633
			when 634 then
					--|#line 3201 "et_eiffel_parser.y"
				yy_do_action_634
			when 635 then
					--|#line 3203 "et_eiffel_parser.y"
				yy_do_action_635
			when 636 then
					--|#line 3205 "et_eiffel_parser.y"
				yy_do_action_636
			when 637 then
					--|#line 3207 "et_eiffel_parser.y"
				yy_do_action_637
			when 638 then
					--|#line 3209 "et_eiffel_parser.y"
				yy_do_action_638
			when 639 then
					--|#line 3211 "et_eiffel_parser.y"
				yy_do_action_639
			when 640 then
					--|#line 3213 "et_eiffel_parser.y"
				yy_do_action_640
			when 641 then
					--|#line 3221 "et_eiffel_parser.y"
				yy_do_action_641
			when 642 then
					--|#line 3234 "et_eiffel_parser.y"
				yy_do_action_642
			when 643 then
					--|#line 3236 "et_eiffel_parser.y"
				yy_do_action_643
			when 644 then
					--|#line 3238 "et_eiffel_parser.y"
				yy_do_action_644
			when 645 then
					--|#line 3240 "et_eiffel_parser.y"
				yy_do_action_645
			when 646 then
					--|#line 3242 "et_eiffel_parser.y"
				yy_do_action_646
			when 647 then
					--|#line 3248 "et_eiffel_parser.y"
				yy_do_action_647
			when 648 then
					--|#line 3250 "et_eiffel_parser.y"
				yy_do_action_648
			when 649 then
					--|#line 3252 "et_eiffel_parser.y"
				yy_do_action_649
			when 650 then
					--|#line 3254 "et_eiffel_parser.y"
				yy_do_action_650
			when 651 then
					--|#line 3258 "et_eiffel_parser.y"
				yy_do_action_651
			when 652 then
					--|#line 3264 "et_eiffel_parser.y"
				yy_do_action_652
			when 653 then
					--|#line 3266 "et_eiffel_parser.y"
				yy_do_action_653
			when 654 then
					--|#line 3268 "et_eiffel_parser.y"
				yy_do_action_654
			when 655 then
					--|#line 3270 "et_eiffel_parser.y"
				yy_do_action_655
			when 656 then
					--|#line 3274 "et_eiffel_parser.y"
				yy_do_action_656
			when 657 then
					--|#line 3276 "et_eiffel_parser.y"
				yy_do_action_657
			when 658 then
					--|#line 3278 "et_eiffel_parser.y"
				yy_do_action_658
			when 659 then
					--|#line 3280 "et_eiffel_parser.y"
				yy_do_action_659
			when 660 then
					--|#line 3284 "et_eiffel_parser.y"
				yy_do_action_660
			when 661 then
					--|#line 3286 "et_eiffel_parser.y"
				yy_do_action_661
			when 662 then
					--|#line 3292 "et_eiffel_parser.y"
				yy_do_action_662
			when 663 then
					--|#line 3294 "et_eiffel_parser.y"
				yy_do_action_663
			when 664 then
					--|#line 3296 "et_eiffel_parser.y"
				yy_do_action_664
			when 665 then
					--|#line 3298 "et_eiffel_parser.y"
				yy_do_action_665
			when 666 then
					--|#line 3302 "et_eiffel_parser.y"
				yy_do_action_666
			when 667 then
					--|#line 3309 "et_eiffel_parser.y"
				yy_do_action_667
			when 668 then
					--|#line 3316 "et_eiffel_parser.y"
				yy_do_action_668
			when 669 then
					--|#line 3325 "et_eiffel_parser.y"
				yy_do_action_669
			when 670 then
					--|#line 3336 "et_eiffel_parser.y"
				yy_do_action_670
			when 671 then
					--|#line 3338 "et_eiffel_parser.y"
				yy_do_action_671
			when 672 then
					--|#line 3342 "et_eiffel_parser.y"
				yy_do_action_672
			when 673 then
					--|#line 3344 "et_eiffel_parser.y"
				yy_do_action_673
			when 674 then
					--|#line 3351 "et_eiffel_parser.y"
				yy_do_action_674
			when 675 then
					--|#line 3358 "et_eiffel_parser.y"
				yy_do_action_675
			when 676 then
					--|#line 3367 "et_eiffel_parser.y"
				yy_do_action_676
			when 677 then
					--|#line 3376 "et_eiffel_parser.y"
				yy_do_action_677
			when 678 then
					--|#line 3378 "et_eiffel_parser.y"
				yy_do_action_678
			when 679 then
					--|#line 3378 "et_eiffel_parser.y"
				yy_do_action_679
			when 680 then
					--|#line 3391 "et_eiffel_parser.y"
				yy_do_action_680
			when 681 then
					--|#line 3402 "et_eiffel_parser.y"
				yy_do_action_681
			when 682 then
					--|#line 3410 "et_eiffel_parser.y"
				yy_do_action_682
			when 683 then
					--|#line 3419 "et_eiffel_parser.y"
				yy_do_action_683
			when 684 then
					--|#line 3428 "et_eiffel_parser.y"
				yy_do_action_684
			when 685 then
					--|#line 3430 "et_eiffel_parser.y"
				yy_do_action_685
			when 686 then
					--|#line 3434 "et_eiffel_parser.y"
				yy_do_action_686
			when 687 then
					--|#line 3436 "et_eiffel_parser.y"
				yy_do_action_687
			when 688 then
					--|#line 3438 "et_eiffel_parser.y"
				yy_do_action_688
			when 689 then
					--|#line 3440 "et_eiffel_parser.y"
				yy_do_action_689
			when 690 then
					--|#line 3446 "et_eiffel_parser.y"
				yy_do_action_690
			when 691 then
					--|#line 3450 "et_eiffel_parser.y"
				yy_do_action_691
			when 692 then
					--|#line 3452 "et_eiffel_parser.y"
				yy_do_action_692
			when 693 then
					--|#line 3458 "et_eiffel_parser.y"
				yy_do_action_693
			when 694 then
					--|#line 3462 "et_eiffel_parser.y"
				yy_do_action_694
			when 695 then
					--|#line 3464 "et_eiffel_parser.y"
				yy_do_action_695
			when 696 then
					--|#line 3466 "et_eiffel_parser.y"
				yy_do_action_696
			when 697 then
					--|#line 3466 "et_eiffel_parser.y"
				yy_do_action_697
			when 698 then
					--|#line 3479 "et_eiffel_parser.y"
				yy_do_action_698
			when 699 then
					--|#line 3490 "et_eiffel_parser.y"
				yy_do_action_699
			when 700 then
					--|#line 3499 "et_eiffel_parser.y"
				yy_do_action_700
			when 701 then
					--|#line 3510 "et_eiffel_parser.y"
				yy_do_action_701
			when 702 then
					--|#line 3512 "et_eiffel_parser.y"
				yy_do_action_702
			when 703 then
					--|#line 3514 "et_eiffel_parser.y"
				yy_do_action_703
			when 704 then
					--|#line 3516 "et_eiffel_parser.y"
				yy_do_action_704
			when 705 then
					--|#line 3518 "et_eiffel_parser.y"
				yy_do_action_705
			when 706 then
					--|#line 3520 "et_eiffel_parser.y"
				yy_do_action_706
			when 707 then
					--|#line 3522 "et_eiffel_parser.y"
				yy_do_action_707
			when 708 then
					--|#line 3526 "et_eiffel_parser.y"
				yy_do_action_708
			when 709 then
					--|#line 3528 "et_eiffel_parser.y"
				yy_do_action_709
			when 710 then
					--|#line 3532 "et_eiffel_parser.y"
				yy_do_action_710
			when 711 then
					--|#line 3536 "et_eiffel_parser.y"
				yy_do_action_711
			when 712 then
					--|#line 3538 "et_eiffel_parser.y"
				yy_do_action_712
			when 713 then
					--|#line 3542 "et_eiffel_parser.y"
				yy_do_action_713
			when 714 then
					--|#line 3544 "et_eiffel_parser.y"
				yy_do_action_714
			when 715 then
					--|#line 3548 "et_eiffel_parser.y"
				yy_do_action_715
			when 716 then
					--|#line 3550 "et_eiffel_parser.y"
				yy_do_action_716
			when 717 then
					--|#line 3554 "et_eiffel_parser.y"
				yy_do_action_717
			when 718 then
					--|#line 3556 "et_eiffel_parser.y"
				yy_do_action_718
			when 719 then
					--|#line 3558 "et_eiffel_parser.y"
				yy_do_action_719
			when 720 then
					--|#line 3560 "et_eiffel_parser.y"
				yy_do_action_720
			when 721 then
					--|#line 3562 "et_eiffel_parser.y"
				yy_do_action_721
			when 722 then
					--|#line 3564 "et_eiffel_parser.y"
				yy_do_action_722
			when 723 then
					--|#line 3572 "et_eiffel_parser.y"
				yy_do_action_723
			when 724 then
					--|#line 3574 "et_eiffel_parser.y"
				yy_do_action_724
			when 725 then
					--|#line 3578 "et_eiffel_parser.y"
				yy_do_action_725
			when 726 then
					--|#line 3586 "et_eiffel_parser.y"
				yy_do_action_726
			when 727 then
					--|#line 3592 "et_eiffel_parser.y"
				yy_do_action_727
			when 728 then
					--|#line 3594 "et_eiffel_parser.y"
				yy_do_action_728
			when 729 then
					--|#line 3596 "et_eiffel_parser.y"
				yy_do_action_729
			when 730 then
					--|#line 3596 "et_eiffel_parser.y"
				yy_do_action_730
			when 731 then
					--|#line 3609 "et_eiffel_parser.y"
				yy_do_action_731
			when 732 then
					--|#line 3620 "et_eiffel_parser.y"
				yy_do_action_732
			when 733 then
					--|#line 3628 "et_eiffel_parser.y"
				yy_do_action_733
			when 734 then
					--|#line 3637 "et_eiffel_parser.y"
				yy_do_action_734
			when 735 then
					--|#line 3646 "et_eiffel_parser.y"
				yy_do_action_735
			when 736 then
					--|#line 3648 "et_eiffel_parser.y"
				yy_do_action_736
			when 737 then
					--|#line 3650 "et_eiffel_parser.y"
				yy_do_action_737
			when 738 then
					--|#line 3652 "et_eiffel_parser.y"
				yy_do_action_738
			when 739 then
					--|#line 3659 "et_eiffel_parser.y"
				yy_do_action_739
			when 740 then
					--|#line 3661 "et_eiffel_parser.y"
				yy_do_action_740
			when 741 then
					--|#line 3667 "et_eiffel_parser.y"
				yy_do_action_741
			when 742 then
					--|#line 3669 "et_eiffel_parser.y"
				yy_do_action_742
			when 743 then
					--|#line 3673 "et_eiffel_parser.y"
				yy_do_action_743
			when 744 then
					--|#line 3675 "et_eiffel_parser.y"
				yy_do_action_744
			when 745 then
					--|#line 3677 "et_eiffel_parser.y"
				yy_do_action_745
			when 746 then
					--|#line 3679 "et_eiffel_parser.y"
				yy_do_action_746
			when 747 then
					--|#line 3681 "et_eiffel_parser.y"
				yy_do_action_747
			when 748 then
					--|#line 3683 "et_eiffel_parser.y"
				yy_do_action_748
			when 749 then
					--|#line 3685 "et_eiffel_parser.y"
				yy_do_action_749
			when 750 then
					--|#line 3687 "et_eiffel_parser.y"
				yy_do_action_750
			when 751 then
					--|#line 3689 "et_eiffel_parser.y"
				yy_do_action_751
			when 752 then
					--|#line 3691 "et_eiffel_parser.y"
				yy_do_action_752
			when 753 then
					--|#line 3693 "et_eiffel_parser.y"
				yy_do_action_753
			when 754 then
					--|#line 3695 "et_eiffel_parser.y"
				yy_do_action_754
			when 755 then
					--|#line 3697 "et_eiffel_parser.y"
				yy_do_action_755
			when 756 then
					--|#line 3699 "et_eiffel_parser.y"
				yy_do_action_756
			when 757 then
					--|#line 3701 "et_eiffel_parser.y"
				yy_do_action_757
			when 758 then
					--|#line 3703 "et_eiffel_parser.y"
				yy_do_action_758
			when 759 then
					--|#line 3705 "et_eiffel_parser.y"
				yy_do_action_759
			when 760 then
					--|#line 3707 "et_eiffel_parser.y"
				yy_do_action_760
			when 761 then
					--|#line 3709 "et_eiffel_parser.y"
				yy_do_action_761
			when 762 then
					--|#line 3711 "et_eiffel_parser.y"
				yy_do_action_762
			when 763 then
					--|#line 3713 "et_eiffel_parser.y"
				yy_do_action_763
			when 764 then
					--|#line 3715 "et_eiffel_parser.y"
				yy_do_action_764
			when 765 then
					--|#line 3719 "et_eiffel_parser.y"
				yy_do_action_765
			when 766 then
					--|#line 3721 "et_eiffel_parser.y"
				yy_do_action_766
			when 767 then
					--|#line 3723 "et_eiffel_parser.y"
				yy_do_action_767
			when 768 then
					--|#line 3725 "et_eiffel_parser.y"
				yy_do_action_768
			when 769 then
					--|#line 3727 "et_eiffel_parser.y"
				yy_do_action_769
			when 770 then
					--|#line 3729 "et_eiffel_parser.y"
				yy_do_action_770
			when 771 then
					--|#line 3733 "et_eiffel_parser.y"
				yy_do_action_771
			when 772 then
					--|#line 3735 "et_eiffel_parser.y"
				yy_do_action_772
			when 773 then
					--|#line 3737 "et_eiffel_parser.y"
				yy_do_action_773
			when 774 then
					--|#line 3739 "et_eiffel_parser.y"
				yy_do_action_774
			when 775 then
					--|#line 3741 "et_eiffel_parser.y"
				yy_do_action_775
			when 776 then
					--|#line 3743 "et_eiffel_parser.y"
				yy_do_action_776
			when 777 then
					--|#line 3745 "et_eiffel_parser.y"
				yy_do_action_777
			when 778 then
					--|#line 3747 "et_eiffel_parser.y"
				yy_do_action_778
			when 779 then
					--|#line 3749 "et_eiffel_parser.y"
				yy_do_action_779
			when 780 then
					--|#line 3751 "et_eiffel_parser.y"
				yy_do_action_780
			when 781 then
					--|#line 3753 "et_eiffel_parser.y"
				yy_do_action_781
			when 782 then
					--|#line 3755 "et_eiffel_parser.y"
				yy_do_action_782
			when 783 then
					--|#line 3757 "et_eiffel_parser.y"
				yy_do_action_783
			when 784 then
					--|#line 3759 "et_eiffel_parser.y"
				yy_do_action_784
			when 785 then
					--|#line 3767 "et_eiffel_parser.y"
				yy_do_action_785
			when 786 then
					--|#line 3769 "et_eiffel_parser.y"
				yy_do_action_786
			when 787 then
					--|#line 3771 "et_eiffel_parser.y"
				yy_do_action_787
			when 788 then
					--|#line 3773 "et_eiffel_parser.y"
				yy_do_action_788
			when 789 then
					--|#line 3777 "et_eiffel_parser.y"
				yy_do_action_789
			when 790 then
					--|#line 3779 "et_eiffel_parser.y"
				yy_do_action_790
			when 791 then
					--|#line 3781 "et_eiffel_parser.y"
				yy_do_action_791
			when 792 then
					--|#line 3783 "et_eiffel_parser.y"
				yy_do_action_792
			when 793 then
					--|#line 3785 "et_eiffel_parser.y"
				yy_do_action_793
			when 794 then
					--|#line 3787 "et_eiffel_parser.y"
				yy_do_action_794
			when 795 then
					--|#line 3789 "et_eiffel_parser.y"
				yy_do_action_795
			when 796 then
					--|#line 3791 "et_eiffel_parser.y"
				yy_do_action_796
			when 797 then
					--|#line 3793 "et_eiffel_parser.y"
				yy_do_action_797
			when 798 then
					--|#line 3795 "et_eiffel_parser.y"
				yy_do_action_798
			when 799 then
					--|#line 3797 "et_eiffel_parser.y"
				yy_do_action_799
			when 800 then
					--|#line 3799 "et_eiffel_parser.y"
				yy_do_action_800
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown rule id: ")
					std.error.put_integer (yy_act)
					std.error.put_new_line
				end
				abort
			end
		end

	yy_do_action_801_1000 (yy_act: INTEGER)
			-- Execute semantic action.
		do
			inspect yy_act
			when 801 then
					--|#line 3801 "et_eiffel_parser.y"
				yy_do_action_801
			when 802 then
					--|#line 3834 "et_eiffel_parser.y"
				yy_do_action_802
			when 803 then
					--|#line 3836 "et_eiffel_parser.y"
				yy_do_action_803
			when 804 then
					--|#line 3838 "et_eiffel_parser.y"
				yy_do_action_804
			when 805 then
					--|#line 3840 "et_eiffel_parser.y"
				yy_do_action_805
			when 806 then
					--|#line 3844 "et_eiffel_parser.y"
				yy_do_action_806
			when 807 then
					--|#line 3846 "et_eiffel_parser.y"
				yy_do_action_807
			when 808 then
					--|#line 3848 "et_eiffel_parser.y"
				yy_do_action_808
			when 809 then
					--|#line 3852 "et_eiffel_parser.y"
				yy_do_action_809
			when 810 then
					--|#line 3854 "et_eiffel_parser.y"
				yy_do_action_810
			when 811 then
					--|#line 3858 "et_eiffel_parser.y"
				yy_do_action_811
			when 812 then
					--|#line 3858 "et_eiffel_parser.y"
				yy_do_action_812
			when 813 then
					--|#line 3871 "et_eiffel_parser.y"
				yy_do_action_813
			when 814 then
					--|#line 3871 "et_eiffel_parser.y"
				yy_do_action_814
			when 815 then
					--|#line 3884 "et_eiffel_parser.y"
				yy_do_action_815
			when 816 then
					--|#line 3895 "et_eiffel_parser.y"
				yy_do_action_816
			when 817 then
					--|#line 3903 "et_eiffel_parser.y"
				yy_do_action_817
			when 818 then
					--|#line 3912 "et_eiffel_parser.y"
				yy_do_action_818
			when 819 then
					--|#line 3920 "et_eiffel_parser.y"
				yy_do_action_819
			when 820 then
					--|#line 3922 "et_eiffel_parser.y"
				yy_do_action_820
			when 821 then
					--|#line 3922 "et_eiffel_parser.y"
				yy_do_action_821
			when 822 then
					--|#line 3935 "et_eiffel_parser.y"
				yy_do_action_822
			when 823 then
					--|#line 3946 "et_eiffel_parser.y"
				yy_do_action_823
			when 824 then
					--|#line 3954 "et_eiffel_parser.y"
				yy_do_action_824
			when 825 then
					--|#line 3963 "et_eiffel_parser.y"
				yy_do_action_825
			when 826 then
					--|#line 3965 "et_eiffel_parser.y"
				yy_do_action_826
			when 827 then
					--|#line 3965 "et_eiffel_parser.y"
				yy_do_action_827
			when 828 then
					--|#line 3978 "et_eiffel_parser.y"
				yy_do_action_828
			when 829 then
					--|#line 3989 "et_eiffel_parser.y"
				yy_do_action_829
			when 830 then
					--|#line 3997 "et_eiffel_parser.y"
				yy_do_action_830
			when 831 then
					--|#line 4006 "et_eiffel_parser.y"
				yy_do_action_831
			when 832 then
					--|#line 4008 "et_eiffel_parser.y"
				yy_do_action_832
			when 833 then
					--|#line 4008 "et_eiffel_parser.y"
				yy_do_action_833
			when 834 then
					--|#line 4023 "et_eiffel_parser.y"
				yy_do_action_834
			when 835 then
					--|#line 4034 "et_eiffel_parser.y"
				yy_do_action_835
			when 836 then
					--|#line 4042 "et_eiffel_parser.y"
				yy_do_action_836
			when 837 then
					--|#line 4051 "et_eiffel_parser.y"
				yy_do_action_837
			when 838 then
					--|#line 4053 "et_eiffel_parser.y"
				yy_do_action_838
			when 839 then
					--|#line 4055 "et_eiffel_parser.y"
				yy_do_action_839
			when 840 then
					--|#line 4057 "et_eiffel_parser.y"
				yy_do_action_840
			when 841 then
					--|#line 4059 "et_eiffel_parser.y"
				yy_do_action_841
			when 842 then
					--|#line 4061 "et_eiffel_parser.y"
				yy_do_action_842
			when 843 then
					--|#line 4065 "et_eiffel_parser.y"
				yy_do_action_843
			when 844 then
					--|#line 4069 "et_eiffel_parser.y"
				yy_do_action_844
			when 845 then
					--|#line 4073 "et_eiffel_parser.y"
				yy_do_action_845
			when 846 then
					--|#line 4079 "et_eiffel_parser.y"
				yy_do_action_846
			when 847 then
					--|#line 4081 "et_eiffel_parser.y"
				yy_do_action_847
			when 848 then
					--|#line 4085 "et_eiffel_parser.y"
				yy_do_action_848
			when 849 then
					--|#line 4092 "et_eiffel_parser.y"
				yy_do_action_849
			when 850 then
					--|#line 4102 "et_eiffel_parser.y"
				yy_do_action_850
			when 851 then
					--|#line 4108 "et_eiffel_parser.y"
				yy_do_action_851
			when 852 then
					--|#line 4114 "et_eiffel_parser.y"
				yy_do_action_852
			when 853 then
					--|#line 4120 "et_eiffel_parser.y"
				yy_do_action_853
			when 854 then
					--|#line 4126 "et_eiffel_parser.y"
				yy_do_action_854
			when 855 then
					--|#line 4132 "et_eiffel_parser.y"
				yy_do_action_855
			when 856 then
					--|#line 4138 "et_eiffel_parser.y"
				yy_do_action_856
			when 857 then
					--|#line 4144 "et_eiffel_parser.y"
				yy_do_action_857
			when 858 then
					--|#line 4150 "et_eiffel_parser.y"
				yy_do_action_858
			when 859 then
					--|#line 4155 "et_eiffel_parser.y"
				yy_do_action_859
			when 860 then
					--|#line 4161 "et_eiffel_parser.y"
				yy_do_action_860
			when 861 then
					--|#line 4169 "et_eiffel_parser.y"
				yy_do_action_861
			when 862 then
					--|#line 4176 "et_eiffel_parser.y"
				yy_do_action_862
			when 863 then
					--|#line 4180 "et_eiffel_parser.y"
				yy_do_action_863
			when 864 then
					--|#line 4182 "et_eiffel_parser.y"
				yy_do_action_864
			when 865 then
					--|#line 4184 "et_eiffel_parser.y"
				yy_do_action_865
			when 866 then
					--|#line 4186 "et_eiffel_parser.y"
				yy_do_action_866
			when 867 then
					--|#line 4188 "et_eiffel_parser.y"
				yy_do_action_867
			when 868 then
					--|#line 4192 "et_eiffel_parser.y"
				yy_do_action_868
			when 869 then
					--|#line 4194 "et_eiffel_parser.y"
				yy_do_action_869
			when 870 then
					--|#line 4196 "et_eiffel_parser.y"
				yy_do_action_870
			when 871 then
					--|#line 4196 "et_eiffel_parser.y"
				yy_do_action_871
			when 872 then
					--|#line 4209 "et_eiffel_parser.y"
				yy_do_action_872
			when 873 then
					--|#line 4220 "et_eiffel_parser.y"
				yy_do_action_873
			when 874 then
					--|#line 4228 "et_eiffel_parser.y"
				yy_do_action_874
			when 875 then
					--|#line 4237 "et_eiffel_parser.y"
				yy_do_action_875
			when 876 then
					--|#line 4246 "et_eiffel_parser.y"
				yy_do_action_876
			when 877 then
					--|#line 4248 "et_eiffel_parser.y"
				yy_do_action_877
			when 878 then
					--|#line 4250 "et_eiffel_parser.y"
				yy_do_action_878
			when 879 then
					--|#line 4256 "et_eiffel_parser.y"
				yy_do_action_879
			when 880 then
					--|#line 4258 "et_eiffel_parser.y"
				yy_do_action_880
			when 881 then
					--|#line 4262 "et_eiffel_parser.y"
				yy_do_action_881
			when 882 then
					--|#line 4264 "et_eiffel_parser.y"
				yy_do_action_882
			when 883 then
					--|#line 4266 "et_eiffel_parser.y"
				yy_do_action_883
			when 884 then
					--|#line 4268 "et_eiffel_parser.y"
				yy_do_action_884
			when 885 then
					--|#line 4270 "et_eiffel_parser.y"
				yy_do_action_885
			when 886 then
					--|#line 4272 "et_eiffel_parser.y"
				yy_do_action_886
			when 887 then
					--|#line 4274 "et_eiffel_parser.y"
				yy_do_action_887
			when 888 then
					--|#line 4276 "et_eiffel_parser.y"
				yy_do_action_888
			when 889 then
					--|#line 4278 "et_eiffel_parser.y"
				yy_do_action_889
			when 890 then
					--|#line 4280 "et_eiffel_parser.y"
				yy_do_action_890
			when 891 then
					--|#line 4282 "et_eiffel_parser.y"
				yy_do_action_891
			when 892 then
					--|#line 4284 "et_eiffel_parser.y"
				yy_do_action_892
			when 893 then
					--|#line 4286 "et_eiffel_parser.y"
				yy_do_action_893
			when 894 then
					--|#line 4288 "et_eiffel_parser.y"
				yy_do_action_894
			when 895 then
					--|#line 4290 "et_eiffel_parser.y"
				yy_do_action_895
			when 896 then
					--|#line 4292 "et_eiffel_parser.y"
				yy_do_action_896
			when 897 then
					--|#line 4294 "et_eiffel_parser.y"
				yy_do_action_897
			when 898 then
					--|#line 4296 "et_eiffel_parser.y"
				yy_do_action_898
			when 899 then
					--|#line 4298 "et_eiffel_parser.y"
				yy_do_action_899
			when 900 then
					--|#line 4300 "et_eiffel_parser.y"
				yy_do_action_900
			when 901 then
					--|#line 4302 "et_eiffel_parser.y"
				yy_do_action_901
			when 902 then
					--|#line 4304 "et_eiffel_parser.y"
				yy_do_action_902
			when 903 then
					--|#line 4306 "et_eiffel_parser.y"
				yy_do_action_903
			when 904 then
					--|#line 4310 "et_eiffel_parser.y"
				yy_do_action_904
			when 905 then
					--|#line 4317 "et_eiffel_parser.y"
				yy_do_action_905
			when 906 then
					--|#line 4319 "et_eiffel_parser.y"
				yy_do_action_906
			when 907 then
					--|#line 4323 "et_eiffel_parser.y"
				yy_do_action_907
			when 908 then
					--|#line 4325 "et_eiffel_parser.y"
				yy_do_action_908
			when 909 then
					--|#line 4329 "et_eiffel_parser.y"
				yy_do_action_909
			when 910 then
					--|#line 4336 "et_eiffel_parser.y"
				yy_do_action_910
			when 911 then
					--|#line 4338 "et_eiffel_parser.y"
				yy_do_action_911
			when 912 then
					--|#line 4342 "et_eiffel_parser.y"
				yy_do_action_912
			when 913 then
					--|#line 4344 "et_eiffel_parser.y"
				yy_do_action_913
			when 914 then
					--|#line 4348 "et_eiffel_parser.y"
				yy_do_action_914
			when 915 then
					--|#line 4350 "et_eiffel_parser.y"
				yy_do_action_915
			when 916 then
					--|#line 4354 "et_eiffel_parser.y"
				yy_do_action_916
			when 917 then
					--|#line 4359 "et_eiffel_parser.y"
				yy_do_action_917
			when 918 then
					--|#line 4366 "et_eiffel_parser.y"
				yy_do_action_918
			when 919 then
					--|#line 4373 "et_eiffel_parser.y"
				yy_do_action_919
			when 920 then
					--|#line 4375 "et_eiffel_parser.y"
				yy_do_action_920
			when 921 then
					--|#line 4379 "et_eiffel_parser.y"
				yy_do_action_921
			when 922 then
					--|#line 4381 "et_eiffel_parser.y"
				yy_do_action_922
			when 923 then
					--|#line 4385 "et_eiffel_parser.y"
				yy_do_action_923
			when 924 then
					--|#line 4390 "et_eiffel_parser.y"
				yy_do_action_924
			when 925 then
					--|#line 4397 "et_eiffel_parser.y"
				yy_do_action_925
			when 926 then
					--|#line 4404 "et_eiffel_parser.y"
				yy_do_action_926
			when 927 then
					--|#line 4406 "et_eiffel_parser.y"
				yy_do_action_927
			when 928 then
					--|#line 4408 "et_eiffel_parser.y"
				yy_do_action_928
			when 929 then
					--|#line 4417 "et_eiffel_parser.y"
				yy_do_action_929
			else
				debug ("GEYACC")
					std.error.put_string ("Error in parser: unknown rule id: ")
					std.error.put_integer (yy_act)
					std.error.put_new_line
				end
				abort
			end
		end

	yy_do_action_1
			--|#line 231 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 231 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 231")
end

			-- END
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp45 := yyvsp45 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_2
			--|#line 235 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 235 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 235")
end

			if yyvs45.item (yyvsp45) /= Void then
				yyvs45.item (yyvsp45).set_leading_break (yyvs9.item (yyvsp9))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 + 1
	yyvsp9 := yyvsp9 -1
	yyvsp45 := yyvsp45 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_3
			--|#line 243 "et_eiffel_parser.y"
		local
			yyval45: ET_CLASS
		do
--|#line 243 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 243")
end

			yyval45 := yyvs45.item (yyvsp45)
			if yyval45 /= Void then
				yyval45.set_first_indexing (yyvs82.item (yyvsp82))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp82 := yyvsp82 -1
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_4
			--|#line 252 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 252 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 252")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_5
			--|#line 253 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 253 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 253")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp45 := yyvsp45 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_6
			--|#line 253 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 253 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 253")
end

			if not current_system.preparse_multiple_mode then
					-- Raise syntax error: it is not valid to have more
					-- than one class text in the same file.
				raise_error
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_7
			--|#line 264 "et_eiffel_parser.y"
		local
			yyval45: ET_CLASS
		do
--|#line 264 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 264")
end

			yyval45 := yyvs45.item (yyvsp45)
			set_class_to_end (yyval45, yyvs101.item (yyvsp101), yyvs105.item (yyvsp105), yyvs60.item (yyvsp60), yyvs57.item (yyvsp57), yyvs71.item (yyvsp71), yyvs90.item (yyvsp90), yyvs82.item (yyvsp82), yyvs2.item (yyvsp2))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 12
	yyvsp80 := yyvsp80 -1
	yyvsp101 := yyvsp101 -1
	yyvsp105 := yyvsp105 -1
	yyvsp60 := yyvsp60 -1
	yyvsp57 := yyvsp57 -1
	yyvsp71 := yyvsp71 -1
	yyvsp90 := yyvsp90 -1
	yyvsp82 := yyvsp82 -1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -2
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_8
			--|#line 270 "et_eiffel_parser.y"
		local
			yyval45: ET_CLASS
		do
--|#line 270 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 270")
end

			yyval45 := yyvs45.item (yyvsp45)
			set_class_to_end (yyval45, yyvs101.item (yyvsp101), yyvs105.item (yyvsp105), yyvs60.item (yyvsp60), yyvs57.item (yyvsp57), yyvs71.item (yyvsp71), yyvs90.item (yyvsp90), yyvs82.item (yyvsp82), yyvs2.item (yyvsp2))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 12
	yyvsp80 := yyvsp80 -1
	yyvsp101 := yyvsp101 -1
	yyvsp105 := yyvsp105 -1
	yyvsp60 := yyvsp60 -1
	yyvsp57 := yyvsp57 -1
	yyvsp71 := yyvsp71 -1
	yyvsp90 := yyvsp90 -1
	yyvsp82 := yyvsp82 -1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -2
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_9
			--|#line 276 "et_eiffel_parser.y"
		local
			yyval45: ET_CLASS
		do
--|#line 276 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 276")
end

			yyval45 := yyvs45.item (yyvsp45)
			set_class_to_end (yyval45, yyvs101.item (yyvsp101), yyvs105.item (yyvsp105), Void, yyvs57.item (yyvsp57), yyvs71.item (yyvsp71), yyvs90.item (yyvsp90), yyvs82.item (yyvsp82), yyvs2.item (yyvsp2))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 11
	yyvsp80 := yyvsp80 -1
	yyvsp101 := yyvsp101 -1
	yyvsp105 := yyvsp105 -1
	yyvsp57 := yyvsp57 -1
	yyvsp71 := yyvsp71 -1
	yyvsp90 := yyvsp90 -1
	yyvsp82 := yyvsp82 -1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -2
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_10
			--|#line 282 "et_eiffel_parser.y"
		local
			yyval45: ET_CLASS
		do
--|#line 282 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 282")
end

			yyval45 := yyvs45.item (yyvsp45)
			set_class_to_end (yyval45, yyvs101.item (yyvsp101), yyvs105.item (yyvsp105), Void, Void, yyvs71.item (yyvsp71), yyvs90.item (yyvsp90), yyvs82.item (yyvsp82), yyvs2.item (yyvsp2))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 10
	yyvsp80 := yyvsp80 -1
	yyvsp101 := yyvsp101 -1
	yyvsp105 := yyvsp105 -1
	yyvsp71 := yyvsp71 -1
	yyvsp90 := yyvsp90 -1
	yyvsp82 := yyvsp82 -1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -2
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_11
			--|#line 288 "et_eiffel_parser.y"
		local
			yyval45: ET_CLASS
		do
--|#line 288 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 288")
end

			yyval45 := yyvs45.item (yyvsp45)
			set_class_to_end (yyval45, yyvs101.item (yyvsp101), yyvs105.item (yyvsp105), Void, Void, Void, yyvs90.item (yyvsp90), yyvs82.item (yyvsp82), yyvs2.item (yyvsp2))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 9
	yyvsp80 := yyvsp80 -1
	yyvsp101 := yyvsp101 -1
	yyvsp105 := yyvsp105 -1
	yyvsp90 := yyvsp90 -1
	yyvsp82 := yyvsp82 -1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -2
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_12
			--|#line 294 "et_eiffel_parser.y"
		local
			yyval45: ET_CLASS
		do
--|#line 294 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 294")
end

			yyval45 := yyvs45.item (yyvsp45 - 2)
			set_class_to_inheritance_end (yyval45, yyvs101.item (yyvsp101), yyvs105.item (yyvsp105))
			if yyvs45.item (yyvsp45 - 1) /= Void then
				yyvs45.item (yyvsp45 - 1).set_first_indexing (yyvs82.item (yyvsp82))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp45 := yyvsp45 -2
	yyvsp80 := yyvsp80 -1
	yyvsp101 := yyvsp101 -1
	yyvsp105 := yyvsp105 -1
	yyvsp82 := yyvsp82 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_13
			--|#line 294 "et_eiffel_parser.y"
		local
			yyval45: ET_CLASS
		do
--|#line 294 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 294")
end

			if not current_system.preparse_multiple_mode then
					-- Raise syntax error: it is not valid to have more
					-- than one class text in the same file.
				raise_error
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp45 := yyvsp45 + 1
	if yyvsp45 >= yyvsc45 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs45")
		end
		yyvsc45 := yyvsc45 + yyInitial_yyvs_size
		yyvs45 := yyspecial_routines45.aliased_resized_area (yyvs45, yyvsc45)
	end
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_14
			--|#line 310 "et_eiffel_parser.y"
		local
			yyval45: ET_CLASS
		do
--|#line 310 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 310")
end

			yyval45 := yyvs45.item (yyvsp45)
			set_class_to_end (yyval45, yyvs101.item (yyvsp101), yyvs105.item (yyvsp105), Void, Void, Void, Void, yyvs82.item (yyvsp82), yyvs2.item (yyvsp2))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp80 := yyvsp80 -1
	yyvsp101 := yyvsp101 -1
	yyvsp105 := yyvsp105 -1
	yyvsp82 := yyvsp82 -1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -2
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_15
			--|#line 315 "et_eiffel_parser.y"
		local
			yyval45: ET_CLASS
		do
--|#line 315 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 315")
end

			yyval45 := yyvs45.item (yyvsp45)
			set_class_to_inheritance_end (yyval45, yyvs101.item (yyvsp101), yyvs105.item (yyvsp105))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp80 := yyvsp80 -1
	yyvsp101 := yyvsp101 -1
	yyvsp105 := yyvsp105 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_16
			--|#line 330 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 330 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 330")
end

set_class_providers 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_17
			--|#line 335 "et_eiffel_parser.y"
		local
			yyval82: ET_INDEXING_LIST
		do
--|#line 335 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 335")
end

yyval82 := ast_factory.new_indexings (yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp82 := yyvsp82 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp82 >= yyvsc82 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs82")
		end
		yyvsc82 := yyvsc82 + yyInitial_yyvs_size
		yyvs82 := yyspecial_routines82.aliased_resized_area (yyvs82, yyvsc82)
	end
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_18
			--|#line 337 "et_eiffel_parser.y"
		local
			yyval82: ET_INDEXING_LIST
		do
--|#line 337 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 337")
end

			yyval82 := yyvs82.item (yyvsp82)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp82 := yyvsp82 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_19
			--|#line 337 "et_eiffel_parser.y"
		local
			yyval82: ET_INDEXING_LIST
		do
--|#line 337 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 337")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp82 := yyvsp82 + 1
	if yyvsp82 >= yyvsc82 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs82")
		end
		yyvsc82 := yyvsc82 + yyInitial_yyvs_size
		yyvs82 := yyspecial_routines82.aliased_resized_area (yyvs82, yyvsc82)
	end
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_20
			--|#line 348 "et_eiffel_parser.y"
		local
			yyval82: ET_INDEXING_LIST
		do
--|#line 348 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 348")
end

yyval82 := ast_factory.new_indexings (yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp82 := yyvsp82 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp82 >= yyvsc82 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs82")
		end
		yyvsc82 := yyvsc82 + yyInitial_yyvs_size
		yyvs82 := yyspecial_routines82.aliased_resized_area (yyvs82, yyvsc82)
	end
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_21
			--|#line 350 "et_eiffel_parser.y"
		local
			yyval82: ET_INDEXING_LIST
		do
--|#line 350 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 350")
end

			yyval82 := yyvs82.item (yyvsp82)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp82 := yyvsp82 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_22
			--|#line 350 "et_eiffel_parser.y"
		local
			yyval82: ET_INDEXING_LIST
		do
--|#line 350 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 350")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp82 := yyvsp82 + 1
	if yyvsp82 >= yyvsc82 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs82")
		end
		yyvsc82 := yyvsc82 + yyInitial_yyvs_size
		yyvs82 := yyspecial_routines82.aliased_resized_area (yyvs82, yyvsc82)
	end
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_23
			--|#line 363 "et_eiffel_parser.y"
		local
			yyval82: ET_INDEXING_LIST
		do
--|#line 363 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 363")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp82 := yyvsp82 + 1
	if yyvsp82 >= yyvsc82 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs82")
		end
		yyvsc82 := yyvsc82 + yyInitial_yyvs_size
		yyvs82 := yyspecial_routines82.aliased_resized_area (yyvs82, yyvsc82)
	end
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_24
			--|#line 365 "et_eiffel_parser.y"
		local
			yyval82: ET_INDEXING_LIST
		do
--|#line 365 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 365")
end

yyval82 := yyvs82.item (yyvsp82) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_25
			--|#line 369 "et_eiffel_parser.y"
		local
			yyval82: ET_INDEXING_LIST
		do
--|#line 369 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 369")
end

			if yyvs83.item (yyvsp83) /= Void then
				yyval82 := ast_factory.new_indexings (last_keyword, counter_value + 1)
				if yyval82 /= Void then
					yyval82.put_first (yyvs83.item (yyvsp83))
				end
			else
				yyval82 := ast_factory.new_indexings (last_keyword, counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp82 := yyvsp82 + 1
	yyvsp83 := yyvsp83 -1
	if yyvsp82 >= yyvsc82 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs82")
		end
		yyvsc82 := yyvsc82 + yyInitial_yyvs_size
		yyvs82 := yyspecial_routines82.aliased_resized_area (yyvs82, yyvsc82)
	end
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_26
			--|#line 380 "et_eiffel_parser.y"
		local
			yyval82: ET_INDEXING_LIST
		do
--|#line 380 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 380")
end

			yyval82 := yyvs82.item (yyvsp82)
			if yyval82 /= Void and yyvs83.item (yyvsp83) /= Void then
				yyval82.put_first (yyvs83.item (yyvsp83))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp82 := yyvsp82 -1
	yyvsp83 := yyvsp83 -1
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_27
			--|#line 380 "et_eiffel_parser.y"
		local
			yyval82: ET_INDEXING_LIST
		do
--|#line 380 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 380")
end

increment_counter 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp82 := yyvsp82 + 1
	if yyvsp82 >= yyvsc82 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs82")
		end
		yyvsc82 := yyvsc82 + yyInitial_yyvs_size
		yyvs82 := yyspecial_routines82.aliased_resized_area (yyvs82, yyvsc82)
	end
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_28
			--|#line 389 "et_eiffel_parser.y"
		local
			yyval82: ET_INDEXING_LIST
		do
--|#line 389 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 389")
end

			yyval82 := yyvs82.item (yyvsp82)
			if yyval82 /= Void and yyvs83.item (yyvsp83) /= Void then
				yyval82.put_first (yyvs83.item (yyvsp83))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp82 := yyvsp82 -1
	yyvsp83 := yyvsp83 -1
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_29
			--|#line 389 "et_eiffel_parser.y"
		local
			yyval82: ET_INDEXING_LIST
		do
--|#line 389 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 389")
end

increment_counter 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp82 := yyvsp82 + 1
	if yyvsp82 >= yyvsc82 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs82")
		end
		yyvsc82 := yyvsc82 + yyInitial_yyvs_size
		yyvs82 := yyspecial_routines82.aliased_resized_area (yyvs82, yyvsc82)
	end
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_30
			--|#line 400 "et_eiffel_parser.y"
		local
			yyval83: ET_INDEXING_ITEM
		do
--|#line 400 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 400")
end

			yyval83 := yyvs83.item (yyvsp83)
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines83.force (yyvs83, yyval83, yyvsp83)
end
		end

	yy_do_action_31
			--|#line 407 "et_eiffel_parser.y"
		local
			yyval83: ET_INDEXING_ITEM
		do
--|#line 407 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 407")
end

			yyval83 := ast_factory.new_tagged_indexing (ast_factory.new_tag (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5)), yyvs86.item (yyvsp86))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp83 := yyvsp83 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp86 := yyvsp86 -1
	if yyvsp83 >= yyvsc83 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs83")
		end
		yyvsc83 := yyvsc83 + yyInitial_yyvs_size
		yyvs83 := yyspecial_routines83.aliased_resized_area (yyvs83, yyvsc83)
	end
	yyspecial_routines83.force (yyvs83, yyval83, yyvsp83)
end
		end

	yy_do_action_32
			--|#line 413 "et_eiffel_parser.y"
		local
			yyval83: ET_INDEXING_ITEM
		do
--|#line 413 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 413")
end

yyval83 := ast_factory.new_indexing_semicolon (yyvs83.item (yyvsp83), yyvs22.item (yyvsp22)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp22 := yyvsp22 -1
	yyspecial_routines83.force (yyvs83, yyval83, yyvsp83)
end
		end

	yy_do_action_33
			--|#line 417 "et_eiffel_parser.y"
		local
			yyval82: ET_INDEXING_LIST
		do
--|#line 417 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 417")
end

			if yyvs83.item (yyvsp83) /= Void then
				yyval82 := ast_factory.new_indexings (last_keyword, counter_value + 1)
				if yyval82 /= Void then
					yyval82.put_first (yyvs83.item (yyvsp83))
				end
			else
				yyval82 := ast_factory.new_indexings (last_keyword, counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp82 := yyvsp82 + 1
	yyvsp83 := yyvsp83 -1
	if yyvsp82 >= yyvsc82 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs82")
		end
		yyvsc82 := yyvsc82 + yyInitial_yyvs_size
		yyvs82 := yyspecial_routines82.aliased_resized_area (yyvs82, yyvsc82)
	end
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_34
			--|#line 428 "et_eiffel_parser.y"
		local
			yyval82: ET_INDEXING_LIST
		do
--|#line 428 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 428")
end

			if yyvs83.item (yyvsp83) /= Void then
				yyval82 := ast_factory.new_indexings (last_keyword, counter_value + 1)
				if yyval82 /= Void then
					yyval82.put_first (yyvs83.item (yyvsp83))
				end
			else
				yyval82 := ast_factory.new_indexings (last_keyword, counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp82 := yyvsp82 + 1
	yyvsp83 := yyvsp83 -1
	if yyvsp82 >= yyvsc82 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs82")
		end
		yyvsc82 := yyvsc82 + yyInitial_yyvs_size
		yyvs82 := yyspecial_routines82.aliased_resized_area (yyvs82, yyvsc82)
	end
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_35
			--|#line 440 "et_eiffel_parser.y"
		local
			yyval82: ET_INDEXING_LIST
		do
--|#line 440 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 440")
end

			yyval82 := yyvs82.item (yyvsp82)
			if yyval82 /= Void and yyvs83.item (yyvsp83) /= Void then
				yyval82.put_first (yyvs83.item (yyvsp83))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp82 := yyvsp82 -1
	yyvsp83 := yyvsp83 -1
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_36
			--|#line 440 "et_eiffel_parser.y"
		local
			yyval82: ET_INDEXING_LIST
		do
--|#line 440 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 440")
end

increment_counter 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp82 := yyvsp82 + 1
	if yyvsp82 >= yyvsc82 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs82")
		end
		yyvsc82 := yyvsc82 + yyInitial_yyvs_size
		yyvs82 := yyspecial_routines82.aliased_resized_area (yyvs82, yyvsc82)
	end
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_37
			--|#line 449 "et_eiffel_parser.y"
		local
			yyval82: ET_INDEXING_LIST
		do
--|#line 449 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 449")
end

			yyval82 := yyvs82.item (yyvsp82)
			if yyval82 /= Void and yyvs83.item (yyvsp83) /= Void then
				yyval82.put_first (yyvs83.item (yyvsp83))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp82 := yyvsp82 -1
	yyvsp83 := yyvsp83 -1
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_38
			--|#line 449 "et_eiffel_parser.y"
		local
			yyval82: ET_INDEXING_LIST
		do
--|#line 449 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 449")
end

increment_counter 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp82 := yyvsp82 + 1
	if yyvsp82 >= yyvsc82 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs82")
		end
		yyvsc82 := yyvsc82 + yyInitial_yyvs_size
		yyvs82 := yyspecial_routines82.aliased_resized_area (yyvs82, yyvsc82)
	end
	yyspecial_routines82.force (yyvs82, yyval82, yyvsp82)
end
		end

	yy_do_action_39
			--|#line 460 "et_eiffel_parser.y"
		local
			yyval83: ET_INDEXING_ITEM
		do
--|#line 460 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 460")
end

			yyval83 := yyvs83.item (yyvsp83)
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines83.force (yyvs83, yyval83, yyvsp83)
end
		end

	yy_do_action_40
			--|#line 467 "et_eiffel_parser.y"
		local
			yyval83: ET_INDEXING_ITEM
		do
--|#line 467 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 467")
end

			yyval83 := ast_factory.new_indexing (yyvs86.item (yyvsp86))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp83 := yyvsp83 + 1
	yyvsp86 := yyvsp86 -1
	if yyvsp83 >= yyvsc83 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs83")
		end
		yyvsc83 := yyvsc83 + yyInitial_yyvs_size
		yyvs83 := yyspecial_routines83.aliased_resized_area (yyvs83, yyvsc83)
	end
	yyspecial_routines83.force (yyvs83, yyval83, yyvsp83)
end
		end

	yy_do_action_41
			--|#line 471 "et_eiffel_parser.y"
		local
			yyval83: ET_INDEXING_ITEM
		do
--|#line 471 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 471")
end

			yyval83 := ast_factory.new_tagged_indexing (ast_factory.new_tag (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5)), yyvs86.item (yyvsp86))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp83 := yyvsp83 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp86 := yyvsp86 -1
	if yyvsp83 >= yyvsc83 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs83")
		end
		yyvsc83 := yyvsc83 + yyInitial_yyvs_size
		yyvs83 := yyspecial_routines83.aliased_resized_area (yyvs83, yyvsc83)
	end
	yyspecial_routines83.force (yyvs83, yyval83, yyvsp83)
end
		end

	yy_do_action_42
			--|#line 477 "et_eiffel_parser.y"
		local
			yyval83: ET_INDEXING_ITEM
		do
--|#line 477 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 477")
end

yyval83 := ast_factory.new_indexing_semicolon (yyvs83.item (yyvsp83), yyvs22.item (yyvsp22)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp22 := yyvsp22 -1
	yyspecial_routines83.force (yyvs83, yyval83, yyvsp83)
end
		end

	yy_do_action_43
			--|#line 479 "et_eiffel_parser.y"
		local
			yyval83: ET_INDEXING_ITEM
		do
--|#line 479 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 479")
end

yyval83 := ast_factory.new_indexing_semicolon (yyvs83.item (yyvsp83), yyvs22.item (yyvsp22)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp22 := yyvsp22 -1
	yyspecial_routines83.force (yyvs83, yyval83, yyvsp83)
end
		end

	yy_do_action_44
			--|#line 484 "et_eiffel_parser.y"
		local
			yyval86: ET_INDEXING_TERM_LIST
		do
--|#line 484 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 484")
end

			if yyvs84.item (yyvsp84) /= Void then
				yyval86 := ast_factory.new_indexing_terms (counter_value + 1)
				if yyval86 /= Void then
					yyval86.put_first (yyvs84.item (yyvsp84))
				end
			else
				yyval86 := ast_factory.new_indexing_terms (counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp86 := yyvsp86 + 1
	yyvsp84 := yyvsp84 -1
	if yyvsp86 >= yyvsc86 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs86")
		end
		yyvsc86 := yyvsc86 + yyInitial_yyvs_size
		yyvs86 := yyspecial_routines86.aliased_resized_area (yyvs86, yyvsc86)
	end
	yyspecial_routines86.force (yyvs86, yyval86, yyvsp86)
end
		end

	yy_do_action_45
			--|#line 495 "et_eiffel_parser.y"
		local
			yyval86: ET_INDEXING_TERM_LIST
		do
--|#line 495 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 495")
end

			yyval86 := yyvs86.item (yyvsp86)
			if yyval86 /= Void and yyvs85.item (yyvsp85) /= Void then
				yyval86.put_first (yyvs85.item (yyvsp85))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp85 := yyvsp85 -1
	yyspecial_routines86.force (yyvs86, yyval86, yyvsp86)
end
		end

	yy_do_action_46
			--|#line 504 "et_eiffel_parser.y"
		local
			yyval84: ET_INDEXING_TERM
		do
--|#line 504 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 504")
end

yyval84 := yyvs13.item (yyvsp13) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp84 := yyvsp84 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp84 >= yyvsc84 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs84")
		end
		yyvsc84 := yyvsc84 + yyInitial_yyvs_size
		yyvs84 := yyspecial_routines84.aliased_resized_area (yyvs84, yyvsc84)
	end
	yyspecial_routines84.force (yyvs84, yyval84, yyvsp84)
end
		end

	yy_do_action_47
			--|#line 506 "et_eiffel_parser.y"
		local
			yyval84: ET_INDEXING_TERM
		do
--|#line 506 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 506")
end

yyval84 := yyvs8.item (yyvsp8) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp84 := yyvsp84 + 1
	yyvsp8 := yyvsp8 -1
	if yyvsp84 >= yyvsc84 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs84")
		end
		yyvsc84 := yyvsc84 + yyInitial_yyvs_size
		yyvs84 := yyspecial_routines84.aliased_resized_area (yyvs84, yyvsc84)
	end
	yyspecial_routines84.force (yyvs84, yyval84, yyvsp84)
end
		end

	yy_do_action_48
			--|#line 508 "et_eiffel_parser.y"
		local
			yyval84: ET_INDEXING_TERM
		do
--|#line 508 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 508")
end

yyval84 := yyvs10.item (yyvsp10) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp84 := yyvsp84 + 1
	yyvsp10 := yyvsp10 -1
	if yyvsp84 >= yyvsc84 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs84")
		end
		yyvsc84 := yyvsc84 + yyInitial_yyvs_size
		yyvs84 := yyspecial_routines84.aliased_resized_area (yyvs84, yyvsc84)
	end
	yyspecial_routines84.force (yyvs84, yyval84, yyvsp84)
end
		end

	yy_do_action_49
			--|#line 510 "et_eiffel_parser.y"
		local
			yyval84: ET_INDEXING_TERM
		do
--|#line 510 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 510")
end

yyval84 := yyvs14.item (yyvsp14) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp84 := yyvsp84 + 1
	yyvsp14 := yyvsp14 -1
	if yyvsp84 >= yyvsc84 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs84")
		end
		yyvsc84 := yyvsc84 + yyInitial_yyvs_size
		yyvs84 := yyspecial_routines84.aliased_resized_area (yyvs84, yyvsc84)
	end
	yyspecial_routines84.force (yyvs84, yyval84, yyvsp84)
end
		end

	yy_do_action_50
			--|#line 512 "et_eiffel_parser.y"
		local
			yyval84: ET_INDEXING_TERM
		do
--|#line 512 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 512")
end

yyval84 := yyvs17.item (yyvsp17) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp84 := yyvsp84 + 1
	yyvsp17 := yyvsp17 -1
	if yyvsp84 >= yyvsc84 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs84")
		end
		yyvsc84 := yyvsc84 + yyInitial_yyvs_size
		yyvs84 := yyspecial_routines84.aliased_resized_area (yyvs84, yyvsc84)
	end
	yyspecial_routines84.force (yyvs84, yyval84, yyvsp84)
end
		end

	yy_do_action_51
			--|#line 514 "et_eiffel_parser.y"
		local
			yyval84: ET_INDEXING_TERM
		do
--|#line 514 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 514")
end

yyval84 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp84 := yyvsp84 + 1
	yyvsp16 := yyvsp16 -1
	if yyvsp84 >= yyvsc84 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs84")
		end
		yyvsc84 := yyvsc84 + yyInitial_yyvs_size
		yyvs84 := yyspecial_routines84.aliased_resized_area (yyvs84, yyvsc84)
	end
	yyspecial_routines84.force (yyvs84, yyval84, yyvsp84)
end
		end

	yy_do_action_52
			--|#line 516 "et_eiffel_parser.y"
		local
			yyval84: ET_INDEXING_TERM
		do
--|#line 516 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 516")
end

yyval84 := yyvs7.item (yyvsp7) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp84 := yyvsp84 + 1
	yyvsp7 := yyvsp7 -1
	if yyvsp84 >= yyvsc84 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs84")
		end
		yyvsc84 := yyvsc84 + yyInitial_yyvs_size
		yyvs84 := yyspecial_routines84.aliased_resized_area (yyvs84, yyvsc84)
	end
	yyspecial_routines84.force (yyvs84, yyval84, yyvsp84)
end
		end

	yy_do_action_53
			--|#line 518 "et_eiffel_parser.y"
		local
			yyval84: ET_INDEXING_TERM
		do
--|#line 518 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 518")
end

yyval84 := ast_factory.new_custom_attribute (yyvs58.item (yyvsp58), Void, yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp84 := yyvsp84 + 1
	yyvsp58 := yyvsp58 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp84 >= yyvsc84 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs84")
		end
		yyvsc84 := yyvsc84 + yyInitial_yyvs_size
		yyvs84 := yyspecial_routines84.aliased_resized_area (yyvs84, yyvsc84)
	end
	yyspecial_routines84.force (yyvs84, yyval84, yyvsp84)
end
		end

	yy_do_action_54
			--|#line 520 "et_eiffel_parser.y"
		local
			yyval84: ET_INDEXING_TERM
		do
--|#line 520 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 520")
end

yyval84 := ast_factory.new_custom_attribute (yyvs58.item (yyvsp58), yyvs100.item (yyvsp100), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp84 := yyvsp84 + 1
	yyvsp58 := yyvsp58 -1
	yyvsp100 := yyvsp100 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp84 >= yyvsc84 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs84")
		end
		yyvsc84 := yyvsc84 + yyInitial_yyvs_size
		yyvs84 := yyspecial_routines84.aliased_resized_area (yyvs84, yyvsc84)
	end
	yyspecial_routines84.force (yyvs84, yyval84, yyvsp84)
end
		end

	yy_do_action_55
			--|#line 524 "et_eiffel_parser.y"
		local
			yyval85: ET_INDEXING_TERM_ITEM
		do
--|#line 524 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 524")
end

			yyval85 := ast_factory.new_indexing_term_comma (yyvs84.item (yyvsp84), yyvs5.item (yyvsp5))
			if yyval85 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp85 := yyvsp85 + 1
	yyvsp84 := yyvsp84 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp85 >= yyvsc85 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs85")
		end
		yyvsc85 := yyvsc85 + yyInitial_yyvs_size
		yyvs85 := yyspecial_routines85.aliased_resized_area (yyvs85, yyvsc85)
	end
	yyspecial_routines85.force (yyvs85, yyval85, yyvsp85)
end
		end

	yy_do_action_56
			--|#line 535 "et_eiffel_parser.y"
		local
			yyval45: ET_CLASS
		do
--|#line 535 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 535")
end

			yyval45 := new_class (yyvs13.item (yyvsp13))
			if yyval45 /= Void then
				yyval45.set_class_keyword (yyvs2.item (yyvsp2))
				yyval45.set_frozen_keyword (yyvs2.item (yyvsp2 - 2))
				yyval45.set_external_keyword (yyvs2.item (yyvsp2 - 1))
			end
			last_class := yyval45
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp45 := yyvsp45 + 1
	yyvsp2 := yyvsp2 -3
	yyvsp13 := yyvsp13 -1
	if yyvsp45 >= yyvsc45 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs45")
		end
		yyvsc45 := yyvsc45 + yyInitial_yyvs_size
		yyvs45 := yyspecial_routines45.aliased_resized_area (yyvs45, yyvsc45)
	end
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_57
			--|#line 545 "et_eiffel_parser.y"
		local
			yyval45: ET_CLASS
		do
--|#line 545 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 545")
end

			yyval45 := new_class (yyvs13.item (yyvsp13))
			if yyval45 /= Void then
				yyval45.set_class_keyword (yyvs2.item (yyvsp2))
				yyval45.set_class_mark (yyvs2.item (yyvsp2 - 2))
				yyval45.set_frozen_keyword (yyvs2.item (yyvsp2 - 3))
				yyval45.set_external_keyword (yyvs2.item (yyvsp2 - 1))
			end
			last_class := yyval45
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp45 := yyvsp45 + 1
	yyvsp2 := yyvsp2 -4
	yyvsp13 := yyvsp13 -1
	if yyvsp45 >= yyvsc45 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs45")
		end
		yyvsc45 := yyvsc45 + yyInitial_yyvs_size
		yyvs45 := yyspecial_routines45.aliased_resized_area (yyvs45, yyvsc45)
	end
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_58
			--|#line 556 "et_eiffel_parser.y"
		local
			yyval45: ET_CLASS
		do
--|#line 556 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 556")
end

			yyval45 := new_class (yyvs13.item (yyvsp13))
			if yyval45 /= Void then
				yyval45.set_class_keyword (yyvs2.item (yyvsp2))
				yyval45.set_class_mark (yyvs2.item (yyvsp2 - 2))
				yyval45.set_frozen_keyword (yyvs2.item (yyvsp2 - 3))
				yyval45.set_external_keyword (yyvs2.item (yyvsp2 - 1))
			end
			last_class := yyval45
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp45 := yyvsp45 + 1
	yyvsp2 := yyvsp2 -4
	yyvsp13 := yyvsp13 -1
	if yyvsp45 >= yyvsc45 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs45")
		end
		yyvsc45 := yyvsc45 + yyInitial_yyvs_size
		yyvs45 := yyspecial_routines45.aliased_resized_area (yyvs45, yyvsc45)
	end
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_59
			--|#line 567 "et_eiffel_parser.y"
		local
			yyval45: ET_CLASS
		do
--|#line 567 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 567")
end

			yyval45 := new_class (yyvs13.item (yyvsp13))
			if yyval45 /= Void then
				yyval45.set_class_keyword (yyvs2.item (yyvsp2))
				yyval45.set_class_mark (yyvs2.item (yyvsp2 - 2))
				yyval45.set_frozen_keyword (yyvs2.item (yyvsp2 - 3))
				yyval45.set_external_keyword (yyvs2.item (yyvsp2 - 1))
			end
			last_class := yyval45
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp45 := yyvsp45 + 1
	yyvsp2 := yyvsp2 -4
	yyvsp13 := yyvsp13 -1
	if yyvsp45 >= yyvsc45 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs45")
		end
		yyvsc45 := yyvsc45 + yyInitial_yyvs_size
		yyvs45 := yyspecial_routines45.aliased_resized_area (yyvs45, yyvsc45)
	end
	yyspecial_routines45.force (yyvs45, yyval45, yyvsp45)
end
		end

	yy_do_action_60
			--|#line 580 "et_eiffel_parser.y"
		local
			yyval2: ET_KEYWORD
		do
--|#line 580 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 580")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp2 := yyvsp2 + 1
	if yyvsp2 >= yyvsc2 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs2")
		end
		yyvsc2 := yyvsc2 + yyInitial_yyvs_size
		yyvs2 := yyspecial_routines2.aliased_resized_area (yyvs2, yyvsc2)
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
		end

	yy_do_action_61
			--|#line 582 "et_eiffel_parser.y"
		local
			yyval2: ET_KEYWORD
		do
--|#line 582 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 582")
end

yyval2 := yyvs2.item (yyvsp2) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
		end

	yy_do_action_62
			--|#line 586 "et_eiffel_parser.y"
		local
			yyval2: ET_KEYWORD
		do
--|#line 586 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 586")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp2 := yyvsp2 + 1
	if yyvsp2 >= yyvsc2 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs2")
		end
		yyvsc2 := yyvsc2 + yyInitial_yyvs_size
		yyvs2 := yyspecial_routines2.aliased_resized_area (yyvs2, yyvsc2)
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
		end

	yy_do_action_63
			--|#line 588 "et_eiffel_parser.y"
		local
			yyval2: ET_KEYWORD
		do
--|#line 588 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 588")
end

yyval2 := yyvs2.item (yyvsp2) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
		end

	yy_do_action_64
			--|#line 594 "et_eiffel_parser.y"
		local
			yyval80: ET_FORMAL_PARAMETER_LIST
		do
--|#line 594 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 594")
end

			set_formal_parameters (Void)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp80 := yyvsp80 + 1
	if yyvsp80 >= yyvsc80 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs80")
		end
		yyvsc80 := yyvsc80 + yyInitial_yyvs_size
		yyvs80 := yyspecial_routines80.aliased_resized_area (yyvs80, yyvsc80)
	end
	yyspecial_routines80.force (yyvs80, yyval80, yyvsp80)
end
		end

	yy_do_action_65
			--|#line 598 "et_eiffel_parser.y"
		local
			yyval80: ET_FORMAL_PARAMETER_LIST
		do
--|#line 598 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 598")
end

			yyval80 := ast_factory.new_formal_parameters (yyvs23.item (yyvsp23), yyvs5.item (yyvsp5), 0)
			set_formal_parameters (yyval80)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp80 := yyvsp80 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp80 >= yyvsc80 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs80")
		end
		yyvsc80 := yyvsc80 + yyInitial_yyvs_size
		yyvs80 := yyspecial_routines80.aliased_resized_area (yyvs80, yyvsc80)
	end
	yyspecial_routines80.force (yyvs80, yyval80, yyvsp80)
end
		end

	yy_do_action_66
			--|#line 604 "et_eiffel_parser.y"
		local
			yyval80: ET_FORMAL_PARAMETER_LIST
		do
--|#line 604 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 604")
end

			yyval80 := yyvs80.item (yyvsp80)
			set_formal_parameters (yyval80)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp80 := yyvsp80 -1
	yyvsp23 := yyvsp23 -1
	yyspecial_routines80.force (yyvs80, yyval80, yyvsp80)
end
		end

	yy_do_action_67
			--|#line 604 "et_eiffel_parser.y"
		local
			yyval80: ET_FORMAL_PARAMETER_LIST
		do
--|#line 604 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 604")
end

			add_symbol (yyvs23.item (yyvsp23))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp80 := yyvsp80 + 1
	if yyvsp80 >= yyvsc80 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs80")
		end
		yyvsc80 := yyvsc80 + yyInitial_yyvs_size
		yyvs80 := yyspecial_routines80.aliased_resized_area (yyvs80, yyvsc80)
	end
	yyspecial_routines80.force (yyvs80, yyval80, yyvsp80)
end
		end

	yy_do_action_68
			--|#line 618 "et_eiffel_parser.y"
		local
			yyval80: ET_FORMAL_PARAMETER_LIST
		do
--|#line 618 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 618")
end

			if yyvs78.item (yyvsp78) /= Void then
				yyval80 := ast_factory.new_formal_parameters (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval80 /= Void then
					yyval80.put_first (yyvs78.item (yyvsp78))
				end
			else
				yyval80 := ast_factory.new_formal_parameters (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp80 := yyvsp80 + 1
	yyvsp78 := yyvsp78 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp80 >= yyvsc80 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs80")
		end
		yyvsc80 := yyvsc80 + yyInitial_yyvs_size
		yyvs80 := yyspecial_routines80.aliased_resized_area (yyvs80, yyvsc80)
	end
	yyspecial_routines80.force (yyvs80, yyval80, yyvsp80)
end
		end

	yy_do_action_69
			--|#line 629 "et_eiffel_parser.y"
		local
			yyval80: ET_FORMAL_PARAMETER_LIST
		do
--|#line 629 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 629")
end

			yyval80 := yyvs80.item (yyvsp80)
			if yyval80 /= Void and yyvs79.item (yyvsp79) /= Void then
				yyval80.put_first (yyvs79.item (yyvsp79))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp79 := yyvsp79 -1
	yyspecial_routines80.force (yyvs80, yyval80, yyvsp80)
end
		end

	yy_do_action_70
			--|#line 638 "et_eiffel_parser.y"
		local
			yyval79: ET_FORMAL_PARAMETER_ITEM
		do
--|#line 638 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 638")
end

			yyval79 := ast_factory.new_formal_parameter_comma (yyvs78.item (yyvsp78), yyvs5.item (yyvsp5))
			if yyval79 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp79 := yyvsp79 + 1
	yyvsp78 := yyvsp78 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp79 >= yyvsc79 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs79")
		end
		yyvsc79 := yyvsc79 + yyInitial_yyvs_size
		yyvs79 := yyspecial_routines79.aliased_resized_area (yyvs79, yyvsc79)
	end
	yyspecial_routines79.force (yyvs79, yyval79, yyvsp79)
end
		end

	yy_do_action_71
			--|#line 647 "et_eiffel_parser.y"
		local
			yyval78: ET_FORMAL_PARAMETER
		do
--|#line 647 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 647")
end

			yyval78 := ast_factory.new_formal_parameter (Void, yyvs13.item (yyvsp13), last_class)
			if yyval78 /= Void then
				register_constraint (Void)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp78 := yyvsp78 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp78 >= yyvsc78 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs78")
		end
		yyvsc78 := yyvsc78 + yyInitial_yyvs_size
		yyvs78 := yyspecial_routines78.aliased_resized_area (yyvs78, yyvsc78)
	end
	yyspecial_routines78.force (yyvs78, yyval78, yyvsp78)
end
		end

	yy_do_action_72
			--|#line 654 "et_eiffel_parser.y"
		local
			yyval78: ET_FORMAL_PARAMETER
		do
--|#line 654 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 654")
end

			yyval78 := ast_factory.new_formal_parameter (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), last_class)
			if yyval78 /= Void then
				register_constraint (Void)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp78 := yyvsp78 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp78 >= yyvsc78 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs78")
		end
		yyvsc78 := yyvsc78 + yyInitial_yyvs_size
		yyvs78 := yyspecial_routines78.aliased_resized_area (yyvs78, yyvsc78)
	end
	yyspecial_routines78.force (yyvs78, yyval78, yyvsp78)
end
		end

	yy_do_action_73
			--|#line 661 "et_eiffel_parser.y"
		local
			yyval78: ET_FORMAL_PARAMETER
		do
--|#line 661 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 661")
end

			yyval78 := ast_factory.new_formal_parameter (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), last_class)
			if yyval78 /= Void then
				register_constraint (Void)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp78 := yyvsp78 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp78 >= yyvsc78 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs78")
		end
		yyvsc78 := yyvsc78 + yyInitial_yyvs_size
		yyvs78 := yyspecial_routines78.aliased_resized_area (yyvs78, yyvsc78)
	end
	yyspecial_routines78.force (yyvs78, yyval78, yyvsp78)
end
		end

	yy_do_action_74
			--|#line 668 "et_eiffel_parser.y"
		local
			yyval78: ET_FORMAL_PARAMETER
		do
--|#line 668 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 668")
end

			yyval78 := ast_factory.new_constrained_formal_parameter (Void, yyvs13.item (yyvsp13), yyvs5.item (yyvsp5), dummy_constraint (yyvs54.item (yyvsp54)), Void, last_class)
			if yyval78 /= Void then
				register_constraint (yyvs54.item (yyvsp54))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp78 := yyvsp78 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp54 := yyvsp54 -1
	if yyvsp78 >= yyvsc78 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs78")
		end
		yyvsc78 := yyvsc78 + yyInitial_yyvs_size
		yyvs78 := yyspecial_routines78.aliased_resized_area (yyvs78, yyvsc78)
	end
	yyspecial_routines78.force (yyvs78, yyval78, yyvsp78)
end
		end

	yy_do_action_75
			--|#line 675 "et_eiffel_parser.y"
		local
			yyval78: ET_FORMAL_PARAMETER
		do
--|#line 675 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 675")
end

			yyval78 := ast_factory.new_constrained_formal_parameter (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs5.item (yyvsp5), dummy_constraint (yyvs54.item (yyvsp54)), Void, last_class)
			if yyval78 /= Void then
				register_constraint (yyvs54.item (yyvsp54))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp78 := yyvsp78 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp54 := yyvsp54 -1
	if yyvsp78 >= yyvsc78 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs78")
		end
		yyvsc78 := yyvsc78 + yyInitial_yyvs_size
		yyvs78 := yyspecial_routines78.aliased_resized_area (yyvs78, yyvsc78)
	end
	yyspecial_routines78.force (yyvs78, yyval78, yyvsp78)
end
		end

	yy_do_action_76
			--|#line 682 "et_eiffel_parser.y"
		local
			yyval78: ET_FORMAL_PARAMETER
		do
--|#line 682 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 682")
end

			yyval78 := ast_factory.new_constrained_formal_parameter (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs5.item (yyvsp5), dummy_constraint (yyvs54.item (yyvsp54)), Void, last_class)
			if yyval78 /= Void then
				register_constraint (yyvs54.item (yyvsp54))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp78 := yyvsp78 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp54 := yyvsp54 -1
	if yyvsp78 >= yyvsc78 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs78")
		end
		yyvsc78 := yyvsc78 + yyInitial_yyvs_size
		yyvs78 := yyspecial_routines78.aliased_resized_area (yyvs78, yyvsc78)
	end
	yyspecial_routines78.force (yyvs78, yyval78, yyvsp78)
end
		end

	yy_do_action_77
			--|#line 689 "et_eiffel_parser.y"
		local
			yyval78: ET_FORMAL_PARAMETER
		do
--|#line 689 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 689")
end

			yyval78 := ast_factory.new_constrained_formal_parameter (Void, yyvs13.item (yyvsp13), yyvs5.item (yyvsp5), dummy_constraint (yyvs54.item (yyvsp54)), yyvs53.item (yyvsp53), last_class)
			if yyval78 /= Void then
				register_constraint (yyvs54.item (yyvsp54))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp78 := yyvsp78 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp54 := yyvsp54 -1
	yyvsp53 := yyvsp53 -1
	if yyvsp78 >= yyvsc78 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs78")
		end
		yyvsc78 := yyvsc78 + yyInitial_yyvs_size
		yyvs78 := yyspecial_routines78.aliased_resized_area (yyvs78, yyvsc78)
	end
	yyspecial_routines78.force (yyvs78, yyval78, yyvsp78)
end
		end

	yy_do_action_78
			--|#line 696 "et_eiffel_parser.y"
		local
			yyval78: ET_FORMAL_PARAMETER
		do
--|#line 696 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 696")
end

			yyval78 := ast_factory.new_constrained_formal_parameter (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs5.item (yyvsp5), dummy_constraint (yyvs54.item (yyvsp54)), yyvs53.item (yyvsp53), last_class)
			if yyval78 /= Void then
				register_constraint (yyvs54.item (yyvsp54))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp78 := yyvsp78 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp54 := yyvsp54 -1
	yyvsp53 := yyvsp53 -1
	if yyvsp78 >= yyvsc78 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs78")
		end
		yyvsc78 := yyvsc78 + yyInitial_yyvs_size
		yyvs78 := yyspecial_routines78.aliased_resized_area (yyvs78, yyvsc78)
	end
	yyspecial_routines78.force (yyvs78, yyval78, yyvsp78)
end
		end

	yy_do_action_79
			--|#line 703 "et_eiffel_parser.y"
		local
			yyval78: ET_FORMAL_PARAMETER
		do
--|#line 703 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 703")
end

			yyval78 := ast_factory.new_constrained_formal_parameter (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs5.item (yyvsp5), dummy_constraint (yyvs54.item (yyvsp54)), yyvs53.item (yyvsp53), last_class)
			if yyval78 /= Void then
				register_constraint (yyvs54.item (yyvsp54))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp78 := yyvsp78 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp54 := yyvsp54 -1
	yyvsp53 := yyvsp53 -1
	if yyvsp78 >= yyvsc78 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs78")
		end
		yyvsc78 := yyvsc78 + yyInitial_yyvs_size
		yyvs78 := yyspecial_routines78.aliased_resized_area (yyvs78, yyvsc78)
	end
	yyspecial_routines78.force (yyvs78, yyval78, yyvsp78)
end
		end

	yy_do_action_80
			--|#line 712 "et_eiffel_parser.y"
		local
			yyval53: ET_CONSTRAINT_CREATOR
		do
--|#line 712 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 712")
end

yyval53 := ast_factory.new_constraint_creator (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp53 := yyvsp53 + 1
	yyvsp2 := yyvsp2 -2
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_81
			--|#line 714 "et_eiffel_parser.y"
		local
			yyval53: ET_CONSTRAINT_CREATOR
		do
--|#line 714 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 714")
end

			yyval53 := yyvs53.item (yyvsp53)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp53 := yyvsp53 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_82
			--|#line 714 "et_eiffel_parser.y"
		local
			yyval53: ET_CONSTRAINT_CREATOR
		do
--|#line 714 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 714")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp53 := yyvsp53 + 1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_83
			--|#line 727 "et_eiffel_parser.y"
		local
			yyval53: ET_CONSTRAINT_CREATOR
		do
--|#line 727 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 727")
end

			if yyvs13.item (yyvsp13) /= Void then
				yyval53 := ast_factory.new_constraint_creator (last_keyword, yyvs2.item (yyvsp2), counter_value + 1)
				if yyval53 /= Void then
					yyval53.put_first (yyvs13.item (yyvsp13))
				end
			else
				yyval53 := ast_factory.new_constraint_creator (last_keyword, yyvs2.item (yyvsp2), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp53 := yyvsp53 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_84
			--|#line 738 "et_eiffel_parser.y"
		local
			yyval53: ET_CONSTRAINT_CREATOR
		do
--|#line 738 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 738")
end

			yyval53 := ast_factory.new_constraint_creator (last_keyword, yyvs2.item (yyvsp2), counter_value)
			if yyval53 /= Void and yyvs74.item (yyvsp74) /= Void then
				yyval53.put_first (yyvs74.item (yyvsp74))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp53 := yyvsp53 + 1
	yyvsp74 := yyvsp74 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp53 >= yyvsc53 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs53")
		end
		yyvsc53 := yyvsc53 + yyInitial_yyvs_size
		yyvs53 := yyspecial_routines53.aliased_resized_area (yyvs53, yyvsc53)
	end
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_85
			--|#line 746 "et_eiffel_parser.y"
		local
			yyval53: ET_CONSTRAINT_CREATOR
		do
--|#line 746 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 746")
end

			yyval53 := yyvs53.item (yyvsp53)
			if yyval53 /= Void and yyvs74.item (yyvsp74) /= Void then
				yyval53.put_first (yyvs74.item (yyvsp74))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp74 := yyvsp74 -1
	yyspecial_routines53.force (yyvs53, yyval53, yyvsp53)
end
		end

	yy_do_action_86
			--|#line 755 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 755 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 755")
end

yyval54 := new_constraint_named_type (Void, yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp54 := yyvsp54 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_87
			--|#line 757 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 757 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 757")
end

yyval54 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_88
			--|#line 759 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 759 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 759")
end

yyval54 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_89
			--|#line 761 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 761 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 761")
end

yyval54 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_90
			--|#line 763 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 763 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 763")
end

yyval54 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_91
			--|#line 765 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 765 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 765")
end

yyval54 := new_constraint_named_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_92
			--|#line 767 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 767 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 767")
end

yyval54 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_93
			--|#line 769 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 769 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 769")
end

yyval54 := new_constraint_named_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_94
			--|#line 771 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 771 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 771")
end

yyval54 := new_constraint_named_type (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_95
			--|#line 773 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 773 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 773")
end

yyval54 := new_constraint_named_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp54 := yyvsp54 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_96
			--|#line 775 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 775 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 775")
end

yyval54 := new_constraint_named_type (yyvs24.item (yyvsp24), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_97
			--|#line 777 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 777 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 777")
end

yyval54 := new_constraint_named_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs24.item (yyvsp24), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp54 := yyvsp54 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_98
			--|#line 779 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 779 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 779")
end

yyval54 := yyvs92.item (yyvsp92) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp54 := yyvsp54 + 1
	yyvsp92 := yyvsp92 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_99
			--|#line 781 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 781 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 781")
end

yyval54 := new_bit_n (yyvs13.item (yyvsp13), yyvs14.item (yyvsp14)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp54 := yyvsp54 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp14 := yyvsp14 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_100
			--|#line 783 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 783 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 783")
end

yyval54 := new_bit_feature (yyvs13.item (yyvsp13 - 1), yyvs13.item (yyvsp13))  
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp54 := yyvsp54 + 1
	yyvsp13 := yyvsp13 -2
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_101
			--|#line 785 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 785 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 785")
end

yyval54 := new_constraint_named_type (Void, yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp54 := yyvsp54 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_102
			--|#line 787 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 787 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 787")
end

yyval54 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_103
			--|#line 789 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 789 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 789")
end

yyval54 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_104
			--|#line 791 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 791 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 791")
end

yyval54 := new_constraint_named_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_105
			--|#line 793 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 793 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 793")
end

yyval54 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_106
			--|#line 795 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 795 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 795")
end

yyval54 := new_constraint_named_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_107
			--|#line 797 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 797 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 797")
end

yyval54 := new_constraint_named_type (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_108
			--|#line 799 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 799 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 799")
end

yyval54 := new_constraint_named_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp54 := yyvsp54 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_109
			--|#line 801 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 801 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 801")
end

yyval54 := new_constraint_named_type (yyvs24.item (yyvsp24), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_110
			--|#line 803 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 803 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 803")
end

yyval54 := new_constraint_named_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs24.item (yyvsp24), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp54 := yyvsp54 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_111
			--|#line 807 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 807 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 807")
end

yyval54 := new_constraint_named_type (Void, yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp54 := yyvsp54 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_112
			--|#line 809 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 809 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 809")
end

yyval54 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_113
			--|#line 811 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 811 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 811")
end

yyval54 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_114
			--|#line 813 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 813 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 813")
end

yyval54 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_115
			--|#line 815 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 815 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 815")
end

yyval54 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_116
			--|#line 817 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 817 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 817")
end

yyval54 := new_constraint_named_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_117
			--|#line 819 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 819 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 819")
end

yyval54 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_118
			--|#line 821 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 821 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 821")
end

yyval54 := new_constraint_named_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_119
			--|#line 823 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 823 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 823")
end

yyval54 := new_constraint_named_type (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_120
			--|#line 825 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 825 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 825")
end

yyval54 := new_constraint_named_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp54 := yyvsp54 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_121
			--|#line 827 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 827 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 827")
end

yyval54 := new_constraint_named_type (yyvs24.item (yyvsp24), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_122
			--|#line 829 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 829 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 829")
end

yyval54 := new_constraint_named_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs24.item (yyvsp24), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp54 := yyvsp54 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_123
			--|#line 831 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 831 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 831")
end

yyval54 := yyvs92.item (yyvsp92) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp54 := yyvsp54 + 1
	yyvsp92 := yyvsp92 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_124
			--|#line 833 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 833 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 833")
end

yyval54 := new_bit_n (yyvs13.item (yyvsp13), yyvs14.item (yyvsp14)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp54 := yyvsp54 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp14 := yyvsp14 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_125
			--|#line 835 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 835 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 835")
end

yyval54 := new_bit_feature (yyvs13.item (yyvsp13 - 1), yyvs13.item (yyvsp13))  
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp54 := yyvsp54 + 1
	yyvsp13 := yyvsp13 -2
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_126
			--|#line 837 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 837 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 837")
end

yyval54 := new_constraint_named_type (Void, yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp54 := yyvsp54 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_127
			--|#line 839 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 839 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 839")
end

yyval54 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_128
			--|#line 841 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 841 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 841")
end

yyval54 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_129
			--|#line 843 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 843 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 843")
end

yyval54 := new_constraint_named_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_130
			--|#line 845 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 845 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 845")
end

yyval54 := new_constraint_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_131
			--|#line 847 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 847 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 847")
end

yyval54 := new_constraint_named_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp54 := yyvsp54 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_132
			--|#line 849 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 849 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 849")
end

yyval54 := new_constraint_named_type (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_133
			--|#line 851 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 851 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 851")
end

yyval54 := new_constraint_named_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp54 := yyvsp54 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_134
			--|#line 853 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 853 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 853")
end

yyval54 := new_constraint_named_type (yyvs24.item (yyvsp24), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp54 := yyvsp54 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_135
			--|#line 855 "et_eiffel_parser.y"
		local
			yyval54: ET_CONSTRAINT_TYPE
		do
--|#line 855 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 855")
end

yyval54 := new_constraint_named_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs24.item (yyvsp24), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs52.item (yyvsp52)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp54 := yyvsp54 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp52 := yyvsp52 -1
	if yyvsp54 >= yyvsc54 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs54")
		end
		yyvsc54 := yyvsc54 + yyInitial_yyvs_size
		yyvs54 := yyspecial_routines54.aliased_resized_area (yyvs54, yyvsc54)
	end
	yyspecial_routines54.force (yyvs54, yyval54, yyvsp54)
end
		end

	yy_do_action_136
			--|#line 859 "et_eiffel_parser.y"
		local
			yyval52: ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 859 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 859")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp52 := yyvsp52 + 1
	if yyvsp52 >= yyvsc52 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs52")
		end
		yyvsc52 := yyvsc52 + yyInitial_yyvs_size
		yyvs52 := yyspecial_routines52.aliased_resized_area (yyvs52, yyvsc52)
	end
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_137
			--|#line 861 "et_eiffel_parser.y"
		local
			yyval52: ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 861 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 861")
end

yyval52 := yyvs52.item (yyvsp52) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_138
			--|#line 865 "et_eiffel_parser.y"
		local
			yyval52: ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 865 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 865")
end

yyval52 := ast_factory.new_constraint_actual_parameters (yyvs23.item (yyvsp23), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp52 := yyvsp52 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp52 >= yyvsc52 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs52")
		end
		yyvsc52 := yyvsc52 + yyInitial_yyvs_size
		yyvs52 := yyspecial_routines52.aliased_resized_area (yyvs52, yyvsc52)
	end
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_139
			--|#line 868 "et_eiffel_parser.y"
		local
			yyval52: ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 868 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 868")
end

			yyval52 := yyvs52.item (yyvsp52)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_140
			--|#line 876 "et_eiffel_parser.y"
		local
			yyval52: ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 876 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 876")
end

			if yyvs54.item (yyvsp54) /= Void then
				yyval52 := ast_factory.new_constraint_actual_parameters (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval52 /= Void then
					yyval52.put_first (yyvs54.item (yyvsp54))
				end
			else
				yyval52 := ast_factory.new_constraint_actual_parameters (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp52 := yyvsp52 + 1
	yyvsp54 := yyvsp54 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp52 >= yyvsc52 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs52")
		end
		yyvsc52 := yyvsc52 + yyInitial_yyvs_size
		yyvs52 := yyspecial_routines52.aliased_resized_area (yyvs52, yyvsc52)
	end
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_141
			--|#line 887 "et_eiffel_parser.y"
		local
			yyval52: ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 887 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 887")
end

			yyval52 := yyvs52.item (yyvsp52)
			add_to_constraint_actual_parameter_list (yyvs51.item (yyvsp51), yyval52)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp51 := yyvsp51 -1
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_142
			--|#line 892 "et_eiffel_parser.y"
		local
			yyval52: ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 892 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 892")
end

			yyval52 := yyvs52.item (yyvsp52)
			add_to_constraint_actual_parameter_list (ast_factory.new_constraint_actual_parameter_comma (new_constraint_named_type (Void, yyvs13.item (yyvsp13), Void), yyvs5.item (yyvsp5)), yyval52)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_143
			--|#line 897 "et_eiffel_parser.y"
		local
			yyval52: ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 897 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 897")
end

			yyval52 := yyvs52.item (yyvsp52)
			add_to_constraint_actual_parameter_list (ast_factory.new_constraint_actual_parameter_comma (new_constraint_named_type (Void, yyvs13.item (yyvsp13), Void), yyvs5.item (yyvsp5)), yyval52)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_144
			--|#line 904 "et_eiffel_parser.y"
		local
			yyval51: ET_CONSTRAINT_ACTUAL_PARAMETER_ITEM
		do
--|#line 904 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 904")
end

			yyval51 := ast_factory.new_constraint_actual_parameter_comma (yyvs54.item (yyvsp54), yyvs5.item (yyvsp5))
			if yyval51 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp51 := yyvsp51 + 1
	yyvsp54 := yyvsp54 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp51 >= yyvsc51 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs51")
		end
		yyvsc51 := yyvsc51 + yyInitial_yyvs_size
		yyvs51 := yyspecial_routines51.aliased_resized_area (yyvs51, yyvsc51)
	end
	yyspecial_routines51.force (yyvs51, yyval51, yyvsp51)
end
		end

	yy_do_action_145
			--|#line 913 "et_eiffel_parser.y"
		local
			yyval52: ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 913 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 913")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp52 := yyvsp52 + 1
	if yyvsp52 >= yyvsc52 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs52")
		end
		yyvsc52 := yyvsc52 + yyInitial_yyvs_size
		yyvs52 := yyspecial_routines52.aliased_resized_area (yyvs52, yyvsc52)
	end
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_146
			--|#line 915 "et_eiffel_parser.y"
		local
			yyval52: ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 915 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 915")
end

yyval52 := yyvs52.item (yyvsp52) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_147
			--|#line 919 "et_eiffel_parser.y"
		local
			yyval52: ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 919 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 919")
end

yyval52 := ast_factory.new_constraint_actual_parameters (yyvs23.item (yyvsp23), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp52 := yyvsp52 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp52 >= yyvsc52 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs52")
		end
		yyvsc52 := yyvsc52 + yyInitial_yyvs_size
		yyvs52 := yyspecial_routines52.aliased_resized_area (yyvs52, yyvsc52)
	end
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_148
			--|#line 922 "et_eiffel_parser.y"
		local
			yyval52: ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 922 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 922")
end

			yyval52 := yyvs52.item (yyvsp52)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_149
			--|#line 928 "et_eiffel_parser.y"
		local
			yyval52: ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 928 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 928")
end

			yyval52 := yyvs52.item (yyvsp52)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_150
			--|#line 936 "et_eiffel_parser.y"
		local
			yyval52: ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 936 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 936")
end

			yyval52 := ast_factory.new_constraint_actual_parameters (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
			add_to_constraint_actual_parameter_list (ast_factory.new_constraint_labeled_actual_parameter (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5 - 1), yyvs54.item (yyvsp54)), yyval52)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp52 := yyvsp52 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -2
	yyvsp54 := yyvsp54 -1
	if yyvsp52 >= yyvsc52 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs52")
		end
		yyvsc52 := yyvsc52 + yyInitial_yyvs_size
		yyvs52 := yyspecial_routines52.aliased_resized_area (yyvs52, yyvsc52)
	end
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_151
			--|#line 941 "et_eiffel_parser.y"
		local
			yyval52: ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 941 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 941")
end

			yyval52 := yyvs52.item (yyvsp52)
			add_to_constraint_actual_parameter_list (yyvs51.item (yyvsp51), yyvs52.item (yyvsp52))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp51 := yyvsp51 -1
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_152
			--|#line 946 "et_eiffel_parser.y"
		local
			yyval52: ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 946 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 946")
end

			yyval52 := yyvs52.item (yyvsp52)
			add_to_constraint_actual_parameter_list (yyvs51.item (yyvsp51), yyvs52.item (yyvsp52))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp51 := yyvsp51 -1
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_153
			--|#line 951 "et_eiffel_parser.y"
		local
			yyval52: ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 951 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 951")
end

			yyval52 := yyvs52.item (yyvsp52)
			if yyval52 /= Void then
				if not yyval52.is_empty then
					add_to_constraint_actual_parameter_list (ast_factory.new_constraint_labeled_comma_actual_parameter (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5), yyval52.first.type), yyval52)
				else
					add_to_constraint_actual_parameter_list (ast_factory.new_constraint_labeled_comma_actual_parameter (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5), Void), yyval52)
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_154
			--|#line 962 "et_eiffel_parser.y"
		local
			yyval52: ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 962 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 962")
end

			yyval52 := yyvs52.item (yyvsp52)
			if yyval52 /= Void then
				if not yyval52.is_empty then
					add_to_constraint_actual_parameter_list (ast_factory.new_constraint_labeled_comma_actual_parameter (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5), yyval52.first.type), yyval52)
				else
					add_to_constraint_actual_parameter_list (ast_factory.new_constraint_labeled_comma_actual_parameter (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5), Void), yyval52)
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_155
			--|#line 973 "et_eiffel_parser.y"
		local
			yyval52: ET_CONSTRAINT_ACTUAL_PARAMETER_LIST
		do
--|#line 973 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 973")
end

			yyval52 := yyvs52.item (yyvsp52)
			if yyval52 /= Void then
				if not yyval52.is_empty then
					add_to_constraint_actual_parameter_list (ast_factory.new_constraint_labeled_comma_actual_parameter (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5), yyval52.first.type), yyval52)
				else
					add_to_constraint_actual_parameter_list (ast_factory.new_constraint_labeled_comma_actual_parameter (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5), Void), yyval52)
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines52.force (yyvs52, yyval52, yyvsp52)
end
		end

	yy_do_action_156
			--|#line 986 "et_eiffel_parser.y"
		local
			yyval51: ET_CONSTRAINT_ACTUAL_PARAMETER_ITEM
		do
--|#line 986 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 986")
end

			yyval51 := ast_factory.new_constraint_labeled_actual_parameter (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5), yyvs54.item (yyvsp54))
			if yyval51 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp51 := yyvsp51 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp54 := yyvsp54 -1
	if yyvsp51 >= yyvsc51 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs51")
		end
		yyvsc51 := yyvsc51 + yyInitial_yyvs_size
		yyvs51 := yyspecial_routines51.aliased_resized_area (yyvs51, yyvsc51)
	end
	yyspecial_routines51.force (yyvs51, yyval51, yyvsp51)
end
		end

	yy_do_action_157
			--|#line 995 "et_eiffel_parser.y"
		local
			yyval51: ET_CONSTRAINT_ACTUAL_PARAMETER_ITEM
		do
--|#line 995 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 995")
end

			yyval51 := ast_factory.new_constraint_labeled_actual_parameter_semicolon (ast_factory.new_constraint_labeled_actual_parameter (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5), yyvs54.item (yyvsp54)), yyvs22.item (yyvsp22))
			if yyval51 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp51 := yyvsp51 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp54 := yyvsp54 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp51 >= yyvsc51 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs51")
		end
		yyvsc51 := yyvsc51 + yyInitial_yyvs_size
		yyvs51 := yyspecial_routines51.aliased_resized_area (yyvs51, yyvsc51)
	end
	yyspecial_routines51.force (yyvs51, yyval51, yyvsp51)
end
		end

	yy_do_action_158
			--|#line 1006 "et_eiffel_parser.y"
		local
			yyval101: ET_OBSOLETE
		do
--|#line 1006 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1006")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp101 := yyvsp101 + 1
	if yyvsp101 >= yyvsc101 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs101")
		end
		yyvsc101 := yyvsc101 + yyInitial_yyvs_size
		yyvs101 := yyspecial_routines101.aliased_resized_area (yyvs101, yyvsc101)
	end
	yyspecial_routines101.force (yyvs101, yyval101, yyvsp101)
end
		end

	yy_do_action_159
			--|#line 1008 "et_eiffel_parser.y"
		local
			yyval101: ET_OBSOLETE
		do
--|#line 1008 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1008")
end

yyval101 := ast_factory.new_obsolete_message (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp101 := yyvsp101 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp101 >= yyvsc101 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs101")
		end
		yyvsc101 := yyvsc101 + yyInitial_yyvs_size
		yyvs101 := yyspecial_routines101.aliased_resized_area (yyvs101, yyvsc101)
	end
	yyspecial_routines101.force (yyvs101, yyval101, yyvsp101)
end
		end

	yy_do_action_160
			--|#line 1014 "et_eiffel_parser.y"
		local
			yyval105: ET_PARENT_LIST
		do
--|#line 1014 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1014")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp105 := yyvsp105 + 1
	if yyvsp105 >= yyvsc105 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs105")
		end
		yyvsc105 := yyvsc105 + yyInitial_yyvs_size
		yyvs105 := yyspecial_routines105.aliased_resized_area (yyvs105, yyvsc105)
	end
	yyspecial_routines105.force (yyvs105, yyval105, yyvsp105)
end
		end

	yy_do_action_161
			--|#line 1016 "et_eiffel_parser.y"
		local
			yyval105: ET_PARENT_LIST
		do
--|#line 1016 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1016")
end

yyval105 := ast_factory.new_parents (yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp105 := yyvsp105 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp105 >= yyvsc105 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs105")
		end
		yyvsc105 := yyvsc105 + yyInitial_yyvs_size
		yyvs105 := yyspecial_routines105.aliased_resized_area (yyvs105, yyvsc105)
	end
	yyspecial_routines105.force (yyvs105, yyval105, yyvsp105)
end
		end

	yy_do_action_162
			--|#line 1018 "et_eiffel_parser.y"
		local
			yyval105: ET_PARENT_LIST
		do
--|#line 1018 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1018")
end

			yyval105 := yyvs105.item (yyvsp105)
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines105.force (yyvs105, yyval105, yyvsp105)
end
		end

	yy_do_action_163
			--|#line 1025 "et_eiffel_parser.y"
		local
			yyval105: ET_PARENT_LIST
		do
--|#line 1025 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1025")
end

			yyval105 := yyvs105.item (yyvsp105)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines105.force (yyvs105, yyval105, yyvsp105)
end
		end

	yy_do_action_164
			--|#line 1033 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 1033 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1033")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_165
			--|#line 1040 "et_eiffel_parser.y"
		local
			yyval103: ET_PARENT
		do
--|#line 1040 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1040")
end

			yyval103 := new_parent (yyvs13.item (yyvsp13), yyvs29.item (yyvsp29), Void, Void, Void, Void, Void, Void)
			if yyval103 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp103 := yyvsp103 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp103 >= yyvsc103 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs103")
		end
		yyvsc103 := yyvsc103 + yyInitial_yyvs_size
		yyvs103 := yyspecial_routines103.aliased_resized_area (yyvs103, yyvsc103)
	end
	yyspecial_routines103.force (yyvs103, yyval103, yyvsp103)
end
		end

	yy_do_action_166
			--|#line 1047 "et_eiffel_parser.y"
		local
			yyval103: ET_PARENT
		do
--|#line 1047 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1047")
end

			yyval103 := new_parent (yyvs13.item (yyvsp13), yyvs29.item (yyvsp29), yyvs112.item (yyvsp112), yyvs65.item (yyvsp65), yyvs91.item (yyvsp91 - 2), yyvs91.item (yyvsp91 - 1), yyvs91.item (yyvsp91), yyvs2.item (yyvsp2))
			if yyval103 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp103 := yyvsp103 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	yyvsp112 := yyvsp112 -1
	yyvsp65 := yyvsp65 -1
	yyvsp91 := yyvsp91 -3
	yyvsp2 := yyvsp2 -1
	if yyvsp103 >= yyvsc103 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs103")
		end
		yyvsc103 := yyvsc103 + yyInitial_yyvs_size
		yyvs103 := yyspecial_routines103.aliased_resized_area (yyvs103, yyvsc103)
	end
	yyspecial_routines103.force (yyvs103, yyval103, yyvsp103)
end
		end

	yy_do_action_167
			--|#line 1055 "et_eiffel_parser.y"
		local
			yyval103: ET_PARENT
		do
--|#line 1055 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1055")
end

			yyval103 := new_parent (yyvs13.item (yyvsp13), yyvs29.item (yyvsp29), Void, yyvs65.item (yyvsp65), yyvs91.item (yyvsp91 - 2), yyvs91.item (yyvsp91 - 1), yyvs91.item (yyvsp91), yyvs2.item (yyvsp2))
			if yyval103 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp103 := yyvsp103 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	yyvsp65 := yyvsp65 -1
	yyvsp91 := yyvsp91 -3
	yyvsp2 := yyvsp2 -1
	if yyvsp103 >= yyvsc103 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs103")
		end
		yyvsc103 := yyvsc103 + yyInitial_yyvs_size
		yyvs103 := yyspecial_routines103.aliased_resized_area (yyvs103, yyvsc103)
	end
	yyspecial_routines103.force (yyvs103, yyval103, yyvsp103)
end
		end

	yy_do_action_168
			--|#line 1062 "et_eiffel_parser.y"
		local
			yyval103: ET_PARENT
		do
--|#line 1062 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1062")
end

			yyval103 := new_parent (yyvs13.item (yyvsp13), yyvs29.item (yyvsp29), Void, Void, yyvs91.item (yyvsp91 - 2), yyvs91.item (yyvsp91 - 1), yyvs91.item (yyvsp91), yyvs2.item (yyvsp2))
			if yyval103 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp103 := yyvsp103 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	yyvsp91 := yyvsp91 -3
	yyvsp2 := yyvsp2 -1
	if yyvsp103 >= yyvsc103 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs103")
		end
		yyvsc103 := yyvsc103 + yyInitial_yyvs_size
		yyvs103 := yyspecial_routines103.aliased_resized_area (yyvs103, yyvsc103)
	end
	yyspecial_routines103.force (yyvs103, yyval103, yyvsp103)
end
		end

	yy_do_action_169
			--|#line 1069 "et_eiffel_parser.y"
		local
			yyval103: ET_PARENT
		do
--|#line 1069 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1069")
end

			yyval103 := new_parent (yyvs13.item (yyvsp13), yyvs29.item (yyvsp29), Void, Void, Void, yyvs91.item (yyvsp91 - 1), yyvs91.item (yyvsp91), yyvs2.item (yyvsp2))
			if yyval103 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp103 := yyvsp103 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	yyvsp91 := yyvsp91 -2
	yyvsp2 := yyvsp2 -1
	if yyvsp103 >= yyvsc103 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs103")
		end
		yyvsc103 := yyvsc103 + yyInitial_yyvs_size
		yyvs103 := yyspecial_routines103.aliased_resized_area (yyvs103, yyvsc103)
	end
	yyspecial_routines103.force (yyvs103, yyval103, yyvsp103)
end
		end

	yy_do_action_170
			--|#line 1076 "et_eiffel_parser.y"
		local
			yyval103: ET_PARENT
		do
--|#line 1076 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1076")
end

			yyval103 := new_parent (yyvs13.item (yyvsp13), yyvs29.item (yyvsp29), Void, Void, Void, Void, yyvs91.item (yyvsp91), yyvs2.item (yyvsp2))
			if yyval103 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp103 := yyvsp103 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	yyvsp91 := yyvsp91 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp103 >= yyvsc103 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs103")
		end
		yyvsc103 := yyvsc103 + yyInitial_yyvs_size
		yyvs103 := yyspecial_routines103.aliased_resized_area (yyvs103, yyvsc103)
	end
	yyspecial_routines103.force (yyvs103, yyval103, yyvsp103)
end
		end

	yy_do_action_171
			--|#line 1085 "et_eiffel_parser.y"
		local
			yyval103: ET_PARENT
		do
--|#line 1085 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1085")
end

			yyval103 := new_parent (yyvs13.item (yyvsp13), yyvs29.item (yyvsp29), Void, Void, Void, Void, Void, yyvs2.item (yyvsp2))
			if yyval103 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp103 := yyvsp103 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp103 >= yyvsc103 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs103")
		end
		yyvsc103 := yyvsc103 + yyInitial_yyvs_size
		yyvs103 := yyspecial_routines103.aliased_resized_area (yyvs103, yyvsc103)
	end
	yyspecial_routines103.force (yyvs103, yyval103, yyvsp103)
end
		end

	yy_do_action_172
			--|#line 1094 "et_eiffel_parser.y"
		local
			yyval105: ET_PARENT_LIST
		do
--|#line 1094 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1094")
end

			yyval105 := ast_factory.new_parents (last_keyword, counter_value)
			if yyval105 /= Void and yyvs103.item (yyvsp103) /= Void then
				yyval105.put_first (yyvs103.item (yyvsp103))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp105 := yyvsp105 + 1
	yyvsp103 := yyvsp103 -1
	if yyvsp105 >= yyvsc105 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs105")
		end
		yyvsc105 := yyvsc105 + yyInitial_yyvs_size
		yyvs105 := yyspecial_routines105.aliased_resized_area (yyvs105, yyvsc105)
	end
	yyspecial_routines105.force (yyvs105, yyval105, yyvsp105)
end
		end

	yy_do_action_173
			--|#line 1101 "et_eiffel_parser.y"
		local
			yyval105: ET_PARENT_LIST
		do
--|#line 1101 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1101")
end

			yyval105 := ast_factory.new_parents (last_keyword, counter_value)
			if yyval105 /= Void and yyvs104.item (yyvsp104) /= Void then
				yyval105.put_first (yyvs104.item (yyvsp104))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp105 := yyvsp105 + 1
	yyvsp104 := yyvsp104 -1
	if yyvsp105 >= yyvsc105 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs105")
		end
		yyvsc105 := yyvsc105 + yyInitial_yyvs_size
		yyvs105 := yyspecial_routines105.aliased_resized_area (yyvs105, yyvsc105)
	end
	yyspecial_routines105.force (yyvs105, yyval105, yyvsp105)
end
		end

	yy_do_action_174
			--|#line 1108 "et_eiffel_parser.y"
		local
			yyval105: ET_PARENT_LIST
		do
--|#line 1108 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1108")
end

			yyval105 := yyvs105.item (yyvsp105)
			if yyval105 /= Void and yyvs103.item (yyvsp103) /= Void then
				yyval105.put_first (yyvs103.item (yyvsp103))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp103 := yyvsp103 -1
	yyspecial_routines105.force (yyvs105, yyval105, yyvsp105)
end
		end

	yy_do_action_175
			--|#line 1115 "et_eiffel_parser.y"
		local
			yyval105: ET_PARENT_LIST
		do
--|#line 1115 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1115")
end

			yyval105 := yyvs105.item (yyvsp105)
			if yyval105 /= Void and yyvs103.item (yyvsp103) /= Void then
				yyval105.put_first (yyvs103.item (yyvsp103))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp103 := yyvsp103 -1
	yyspecial_routines105.force (yyvs105, yyval105, yyvsp105)
end
		end

	yy_do_action_176
			--|#line 1122 "et_eiffel_parser.y"
		local
			yyval105: ET_PARENT_LIST
		do
--|#line 1122 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1122")
end

			yyval105 := yyvs105.item (yyvsp105)
			if yyval105 /= Void and yyvs104.item (yyvsp104) /= Void then
				yyval105.put_first (yyvs104.item (yyvsp104))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp104 := yyvsp104 -1
	yyspecial_routines105.force (yyvs105, yyval105, yyvsp105)
end
		end

	yy_do_action_177
			--|#line 1131 "et_eiffel_parser.y"
		local
			yyval105: ET_PARENT_LIST
		do
--|#line 1131 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1131")
end

			yyval105 := ast_factory.new_parents (last_keyword, counter_value)
			if yyval105 /= Void and yyvs103.item (yyvsp103) /= Void then
				yyval105.put_first (yyvs103.item (yyvsp103))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp105 := yyvsp105 + 1
	yyvsp103 := yyvsp103 -1
	if yyvsp105 >= yyvsc105 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs105")
		end
		yyvsc105 := yyvsc105 + yyInitial_yyvs_size
		yyvs105 := yyspecial_routines105.aliased_resized_area (yyvs105, yyvsc105)
	end
	yyspecial_routines105.force (yyvs105, yyval105, yyvsp105)
end
		end

	yy_do_action_178
			--|#line 1138 "et_eiffel_parser.y"
		local
			yyval105: ET_PARENT_LIST
		do
--|#line 1138 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1138")
end

			yyval105 := yyvs105.item (yyvsp105)
			if yyval105 /= Void and yyvs103.item (yyvsp103) /= Void then
				yyval105.put_first (yyvs103.item (yyvsp103))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp103 := yyvsp103 -1
	yyspecial_routines105.force (yyvs105, yyval105, yyvsp105)
end
		end

	yy_do_action_179
			--|#line 1145 "et_eiffel_parser.y"
		local
			yyval105: ET_PARENT_LIST
		do
--|#line 1145 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1145")
end

			yyval105 := yyvs105.item (yyvsp105)
			if yyval105 /= Void and yyvs103.item (yyvsp103) /= Void then
				yyval105.put_first (yyvs103.item (yyvsp103))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp103 := yyvsp103 -1
	yyspecial_routines105.force (yyvs105, yyval105, yyvsp105)
end
		end

	yy_do_action_180
			--|#line 1152 "et_eiffel_parser.y"
		local
			yyval105: ET_PARENT_LIST
		do
--|#line 1152 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1152")
end

			yyval105 := yyvs105.item (yyvsp105)
			if yyval105 /= Void and yyvs104.item (yyvsp104) /= Void then
				yyval105.put_first (yyvs104.item (yyvsp104))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp104 := yyvsp104 -1
	yyspecial_routines105.force (yyvs105, yyval105, yyvsp105)
end
		end

	yy_do_action_181
			--|#line 1161 "et_eiffel_parser.y"
		local
			yyval104: ET_PARENT_ITEM
		do
--|#line 1161 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1161")
end

			yyval104 := ast_factory.new_parent_semicolon (yyvs103.item (yyvsp103), yyvs22.item (yyvsp22))
			if yyval104 /= Void and yyvs103.item (yyvsp103) = Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp104 := yyvsp104 + 1
	yyvsp103 := yyvsp103 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp104 >= yyvsc104 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs104")
		end
		yyvsc104 := yyvsc104 + yyInitial_yyvs_size
		yyvs104 := yyspecial_routines104.aliased_resized_area (yyvs104, yyvsc104)
	end
	yyspecial_routines104.force (yyvs104, yyval104, yyvsp104)
end
		end

	yy_do_action_182
			--|#line 1168 "et_eiffel_parser.y"
		local
			yyval104: ET_PARENT_ITEM
		do
--|#line 1168 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1168")
end

			yyval104 := ast_factory.new_parent_semicolon (yyvs103.item (yyvsp103), yyvs22.item (yyvsp22))
			if yyval104 /= Void and yyvs103.item (yyvsp103) = Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp104 := yyvsp104 + 1
	yyvsp103 := yyvsp103 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp104 >= yyvsc104 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs104")
		end
		yyvsc104 := yyvsc104 + yyInitial_yyvs_size
		yyvs104 := yyspecial_routines104.aliased_resized_area (yyvs104, yyvsc104)
	end
	yyspecial_routines104.force (yyvs104, yyval104, yyvsp104)
end
		end

	yy_do_action_183
			--|#line 1179 "et_eiffel_parser.y"
		local
			yyval112: ET_RENAME_LIST
		do
--|#line 1179 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1179")
end

yyval112 := ast_factory.new_renames (yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp112 := yyvsp112 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp112 >= yyvsc112 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs112")
		end
		yyvsc112 := yyvsc112 + yyInitial_yyvs_size
		yyvs112 := yyspecial_routines112.aliased_resized_area (yyvs112, yyvsc112)
	end
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_184
			--|#line 1181 "et_eiffel_parser.y"
		local
			yyval112: ET_RENAME_LIST
		do
--|#line 1181 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1181")
end

			yyval112 := yyvs112.item (yyvsp112)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp112 := yyvsp112 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_185
			--|#line 1181 "et_eiffel_parser.y"
		local
			yyval112: ET_RENAME_LIST
		do
--|#line 1181 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1181")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp112 := yyvsp112 + 1
	if yyvsp112 >= yyvsc112 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs112")
		end
		yyvsc112 := yyvsc112 + yyInitial_yyvs_size
		yyvs112 := yyspecial_routines112.aliased_resized_area (yyvs112, yyvsc112)
	end
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_186
			--|#line 1194 "et_eiffel_parser.y"
		local
			yyval112: ET_RENAME_LIST
		do
--|#line 1194 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1194")
end

			yyval112 := ast_factory.new_renames (last_keyword, counter_value)
			if yyval112 /= Void and yyvs111.item (yyvsp111) /= Void then
				yyval112.put_first (yyvs111.item (yyvsp111))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp112 := yyvsp112 + 1
	yyvsp111 := yyvsp111 -1
	if yyvsp112 >= yyvsc112 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs112")
		end
		yyvsc112 := yyvsc112 + yyInitial_yyvs_size
		yyvs112 := yyspecial_routines112.aliased_resized_area (yyvs112, yyvsc112)
	end
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_187
			--|#line 1201 "et_eiffel_parser.y"
		local
			yyval112: ET_RENAME_LIST
		do
--|#line 1201 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1201")
end

			yyval112 := ast_factory.new_renames (last_keyword, counter_value)
			if yyval112 /= Void and yyvs111.item (yyvsp111) /= Void then
				yyval112.put_first (yyvs111.item (yyvsp111))
			end
				-- TODO: syntax error.
			raise_error
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp112 := yyvsp112 + 1
	yyvsp111 := yyvsp111 -1
	if yyvsp112 >= yyvsc112 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs112")
		end
		yyvsc112 := yyvsc112 + yyInitial_yyvs_size
		yyvs112 := yyspecial_routines112.aliased_resized_area (yyvs112, yyvsc112)
	end
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_188
			--|#line 1210 "et_eiffel_parser.y"
		local
			yyval112: ET_RENAME_LIST
		do
--|#line 1210 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1210")
end

			yyval112 := yyvs112.item (yyvsp112)
			if yyval112 /= Void and yyvs111.item (yyvsp111) /= Void then
				yyval112.put_first (yyvs111.item (yyvsp111))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp111 := yyvsp111 -1
	yyspecial_routines112.force (yyvs112, yyval112, yyvsp112)
end
		end

	yy_do_action_189
			--|#line 1219 "et_eiffel_parser.y"
		local
			yyval111: ET_RENAME_ITEM
		do
--|#line 1219 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1219")
end

			yyval111 := ast_factory.new_rename (yyvs73.item (yyvsp73), yyvs2.item (yyvsp2), yyvs68.item (yyvsp68))
			if yyval111 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp111 := yyvsp111 + 1
	yyvsp73 := yyvsp73 -1
	yyvsp2 := yyvsp2 -1
	yyvsp68 := yyvsp68 -1
	if yyvsp111 >= yyvsc111 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs111")
		end
		yyvsc111 := yyvsc111 + yyInitial_yyvs_size
		yyvs111 := yyspecial_routines111.aliased_resized_area (yyvs111, yyvsc111)
	end
	yyspecial_routines111.force (yyvs111, yyval111, yyvsp111)
end
		end

	yy_do_action_190
			--|#line 1228 "et_eiffel_parser.y"
		local
			yyval111: ET_RENAME_ITEM
		do
--|#line 1228 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1228")
end

			yyval111 := ast_factory.new_rename_comma (yyvs73.item (yyvsp73), yyvs2.item (yyvsp2), yyvs68.item (yyvsp68), yyvs5.item (yyvsp5))
			if yyval111 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp111 := yyvsp111 + 1
	yyvsp73 := yyvsp73 -1
	yyvsp2 := yyvsp2 -1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp111 >= yyvsc111 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs111")
		end
		yyvsc111 := yyvsc111 + yyInitial_yyvs_size
		yyvs111 := yyspecial_routines111.aliased_resized_area (yyvs111, yyvsc111)
	end
	yyspecial_routines111.force (yyvs111, yyval111, yyvsp111)
end
		end

	yy_do_action_191
			--|#line 1239 "et_eiffel_parser.y"
		local
			yyval65: ET_EXPORT_LIST
		do
--|#line 1239 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1239")
end

yyval65 := ast_factory.new_exports (yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp65 := yyvsp65 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp65 >= yyvsc65 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs65")
		end
		yyvsc65 := yyvsc65 + yyInitial_yyvs_size
		yyvs65 := yyspecial_routines65.aliased_resized_area (yyvs65, yyvsc65)
	end
	yyspecial_routines65.force (yyvs65, yyval65, yyvsp65)
end
		end

	yy_do_action_192
			--|#line 1241 "et_eiffel_parser.y"
		local
			yyval65: ET_EXPORT_LIST
		do
--|#line 1241 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1241")
end

			yyval65 := yyvs65.item (yyvsp65)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp65 := yyvsp65 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines65.force (yyvs65, yyval65, yyvsp65)
end
		end

	yy_do_action_193
			--|#line 1241 "et_eiffel_parser.y"
		local
			yyval65: ET_EXPORT_LIST
		do
--|#line 1241 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1241")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp65 := yyvsp65 + 1
	if yyvsp65 >= yyvsc65 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs65")
		end
		yyvsc65 := yyvsc65 + yyInitial_yyvs_size
		yyvs65 := yyspecial_routines65.aliased_resized_area (yyvs65, yyvsc65)
	end
	yyspecial_routines65.force (yyvs65, yyval65, yyvsp65)
end
		end

	yy_do_action_194
			--|#line 1254 "et_eiffel_parser.y"
		local
			yyval65: ET_EXPORT_LIST
		do
--|#line 1254 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1254")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp65 := yyvsp65 + 1
	if yyvsp65 >= yyvsc65 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs65")
		end
		yyvsc65 := yyvsc65 + yyInitial_yyvs_size
		yyvs65 := yyspecial_routines65.aliased_resized_area (yyvs65, yyvsc65)
	end
	yyspecial_routines65.force (yyvs65, yyval65, yyvsp65)
end
		end

	yy_do_action_195
			--|#line 1256 "et_eiffel_parser.y"
		local
			yyval65: ET_EXPORT_LIST
		do
--|#line 1256 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1256")
end

yyval65 := yyvs65.item (yyvsp65) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines65.force (yyvs65, yyval65, yyvsp65)
end
		end

	yy_do_action_196
			--|#line 1260 "et_eiffel_parser.y"
		local
			yyval65: ET_EXPORT_LIST
		do
--|#line 1260 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1260")
end

			if yyvs64.item (yyvsp64) /= Void then
				yyval65 := ast_factory.new_exports (last_keyword, counter_value + 1)
				if yyval65 /= Void then
					yyval65.put_first (yyvs64.item (yyvsp64))
				end
			else
				yyval65 := ast_factory.new_exports (last_keyword, counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp65 := yyvsp65 + 1
	yyvsp64 := yyvsp64 -1
	if yyvsp65 >= yyvsc65 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs65")
		end
		yyvsc65 := yyvsc65 + yyInitial_yyvs_size
		yyvs65 := yyspecial_routines65.aliased_resized_area (yyvs65, yyvsc65)
	end
	yyspecial_routines65.force (yyvs65, yyval65, yyvsp65)
end
		end

	yy_do_action_197
			--|#line 1271 "et_eiffel_parser.y"
		local
			yyval65: ET_EXPORT_LIST
		do
--|#line 1271 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1271")
end

			yyval65 := yyvs65.item (yyvsp65)
			if yyval65 /= Void and yyvs64.item (yyvsp64) /= Void then
				yyval65.put_first (yyvs64.item (yyvsp64))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp65 := yyvsp65 -1
	yyvsp64 := yyvsp64 -1
	yyspecial_routines65.force (yyvs65, yyval65, yyvsp65)
end
		end

	yy_do_action_198
			--|#line 1271 "et_eiffel_parser.y"
		local
			yyval65: ET_EXPORT_LIST
		do
--|#line 1271 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1271")
end

			if yyvs64.item (yyvsp64) /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp65 := yyvsp65 + 1
	if yyvsp65 >= yyvsc65 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs65")
		end
		yyvsc65 := yyvsc65 + yyInitial_yyvs_size
		yyvs65 := yyspecial_routines65.aliased_resized_area (yyvs65, yyvsc65)
	end
	yyspecial_routines65.force (yyvs65, yyval65, yyvsp65)
end
		end

	yy_do_action_199
			--|#line 1286 "et_eiffel_parser.y"
		local
			yyval64: ET_EXPORT
		do
--|#line 1286 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1286")
end

			yyval64 := ast_factory.new_all_export (yyvs47.item (yyvsp47), yyvs2.item (yyvsp2))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp64 := yyvsp64 + 1
	yyvsp47 := yyvsp47 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp64 >= yyvsc64 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs64")
		end
		yyvsc64 := yyvsc64 + yyInitial_yyvs_size
		yyvs64 := yyspecial_routines64.aliased_resized_area (yyvs64, yyvsc64)
	end
	yyspecial_routines64.force (yyvs64, yyval64, yyvsp64)
end
		end

	yy_do_action_200
			--|#line 1290 "et_eiffel_parser.y"
		local
			yyval64: ET_EXPORT
		do
--|#line 1290 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1290")
end

			last_export_clients := yyvs47.item (yyvsp47)
			yyval64 := ast_factory.new_feature_export (last_export_clients, 0)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp64 := yyvsp64 + 1
	yyvsp47 := yyvsp47 -1
	if yyvsp64 >= yyvsc64 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs64")
		end
		yyvsc64 := yyvsc64 + yyInitial_yyvs_size
		yyvs64 := yyspecial_routines64.aliased_resized_area (yyvs64, yyvsc64)
	end
	yyspecial_routines64.force (yyvs64, yyval64, yyvsp64)
end
		end

	yy_do_action_201
			--|#line 1295 "et_eiffel_parser.y"
		local
			yyval64: ET_EXPORT
		do
--|#line 1295 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1295")
end

			yyval64 := yyvs72.item (yyvsp72)
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp47 := yyvsp47 -1
	yyvsp72 := yyvsp72 -1
	yyspecial_routines64.force (yyvs64, yyval64, yyvsp64)
end
		end

	yy_do_action_202
			--|#line 1295 "et_eiffel_parser.y"
		local
			yyval64: ET_EXPORT
		do
--|#line 1295 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1295")
end

			last_export_clients := yyvs47.item (yyvsp47)
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp64 := yyvsp64 + 1
	if yyvsp64 >= yyvsc64 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs64")
		end
		yyvsc64 := yyvsc64 + yyInitial_yyvs_size
		yyvs64 := yyspecial_routines64.aliased_resized_area (yyvs64, yyvsc64)
	end
	yyspecial_routines64.force (yyvs64, yyval64, yyvsp64)
end
		end

	yy_do_action_203
			--|#line 1305 "et_eiffel_parser.y"
		local
			yyval64: ET_EXPORT
		do
--|#line 1305 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1305")
end

yyval64 := ast_factory.new_null_export (yyvs22.item (yyvsp22)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp64 := yyvsp64 + 1
	yyvsp22 := yyvsp22 -1
	if yyvsp64 >= yyvsc64 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs64")
		end
		yyvsc64 := yyvsc64 + yyInitial_yyvs_size
		yyvs64 := yyspecial_routines64.aliased_resized_area (yyvs64, yyvsc64)
	end
	yyspecial_routines64.force (yyvs64, yyval64, yyvsp64)
end
		end

	yy_do_action_204
			--|#line 1309 "et_eiffel_parser.y"
		local
			yyval72: ET_FEATURE_EXPORT
		do
--|#line 1309 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1309")
end

			if yyvs73.item (yyvsp73) /= Void then
				yyval72 := ast_factory.new_feature_export (last_export_clients, counter_value + 1)
				if yyval72 /= Void then
					yyval72.put_first (yyvs73.item (yyvsp73))
				end
			else
				yyval72 := ast_factory.new_feature_export (last_export_clients, counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp72 := yyvsp72 + 1
	yyvsp73 := yyvsp73 -1
	if yyvsp72 >= yyvsc72 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs72")
		end
		yyvsc72 := yyvsc72 + yyInitial_yyvs_size
		yyvs72 := yyspecial_routines72.aliased_resized_area (yyvs72, yyvsc72)
	end
	yyspecial_routines72.force (yyvs72, yyval72, yyvsp72)
end
		end

	yy_do_action_205
			--|#line 1320 "et_eiffel_parser.y"
		local
			yyval72: ET_FEATURE_EXPORT
		do
--|#line 1320 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1320")
end

			yyval72 := ast_factory.new_feature_export (last_export_clients, counter_value)
			if yyval72 /= Void and yyvs74.item (yyvsp74) /= Void then
				yyval72.put_first (yyvs74.item (yyvsp74))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp72 := yyvsp72 + 1
	yyvsp74 := yyvsp74 -1
	if yyvsp72 >= yyvsc72 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs72")
		end
		yyvsc72 := yyvsc72 + yyInitial_yyvs_size
		yyvs72 := yyspecial_routines72.aliased_resized_area (yyvs72, yyvsc72)
	end
	yyspecial_routines72.force (yyvs72, yyval72, yyvsp72)
end
		end

	yy_do_action_206
			--|#line 1328 "et_eiffel_parser.y"
		local
			yyval72: ET_FEATURE_EXPORT
		do
--|#line 1328 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1328")
end

			yyval72 := yyvs72.item (yyvsp72)
			if yyval72 /= Void and yyvs74.item (yyvsp74) /= Void then
				yyval72.put_first (yyvs74.item (yyvsp74))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp74 := yyvsp74 -1
	yyspecial_routines72.force (yyvs72, yyval72, yyvsp72)
end
		end

	yy_do_action_207
			--|#line 1339 "et_eiffel_parser.y"
		local
			yyval47: ET_CLIENTS
		do
--|#line 1339 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1339")
end

			yyval47 := yyvs47.item (yyvsp47)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp47 := yyvsp47 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines47.force (yyvs47, yyval47, yyvsp47)
end
		end

	yy_do_action_208
			--|#line 1339 "et_eiffel_parser.y"
		local
			yyval47: ET_CLIENTS
		do
--|#line 1339 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1339")
end

			add_symbol (yyvs5.item (yyvsp5))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp47 := yyvsp47 + 1
	if yyvsp47 >= yyvsc47 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs47")
		end
		yyvsc47 := yyvsc47 + yyInitial_yyvs_size
		yyvs47 := yyspecial_routines47.aliased_resized_area (yyvs47, yyvsc47)
	end
	yyspecial_routines47.force (yyvs47, yyval47, yyvsp47)
end
		end

	yy_do_action_209
			--|#line 1350 "et_eiffel_parser.y"
		local
			yyval47: ET_CLIENTS
		do
--|#line 1350 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1350")
end

yyval47 := ast_factory.new_none_clients (yyvs5.item (yyvsp5 - 1), yyvs5.item (yyvsp5)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp47 := yyvsp47 + 1
	yyvsp5 := yyvsp5 -2
	if yyvsp47 >= yyvsc47 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs47")
		end
		yyvsc47 := yyvsc47 + yyInitial_yyvs_size
		yyvs47 := yyspecial_routines47.aliased_resized_area (yyvs47, yyvsc47)
	end
	yyspecial_routines47.force (yyvs47, yyval47, yyvsp47)
end
		end

	yy_do_action_210
			--|#line 1354 "et_eiffel_parser.y"
		local
			yyval47: ET_CLIENTS
		do
--|#line 1354 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1354")
end

			yyval47 := ast_factory.new_clients (last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval47 /= Void and yyvs46.item (yyvsp46) /= Void then
				yyval47.put_first (yyvs46.item (yyvsp46))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp47 := yyvsp47 + 1
	yyvsp46 := yyvsp46 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp47 >= yyvsc47 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs47")
		end
		yyvsc47 := yyvsc47 + yyInitial_yyvs_size
		yyvs47 := yyspecial_routines47.aliased_resized_area (yyvs47, yyvsc47)
	end
	yyspecial_routines47.force (yyvs47, yyval47, yyvsp47)
end
		end

	yy_do_action_211
			--|#line 1361 "et_eiffel_parser.y"
		local
			yyval47: ET_CLIENTS
		do
--|#line 1361 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1361")
end

			yyval47 := ast_factory.new_clients (last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval47 /= Void and yyvs46.item (yyvsp46) /= Void then
				yyval47.put_first (yyvs46.item (yyvsp46))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp47 := yyvsp47 + 1
	yyvsp46 := yyvsp46 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp47 >= yyvsc47 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs47")
		end
		yyvsc47 := yyvsc47 + yyInitial_yyvs_size
		yyvs47 := yyspecial_routines47.aliased_resized_area (yyvs47, yyvsc47)
	end
	yyspecial_routines47.force (yyvs47, yyval47, yyvsp47)
end
		end

	yy_do_action_212
			--|#line 1369 "et_eiffel_parser.y"
		local
			yyval47: ET_CLIENTS
		do
--|#line 1369 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1369")
end

			yyval47 := yyvs47.item (yyvsp47)
			if yyval47 /= Void and yyvs46.item (yyvsp46) /= Void then
				yyval47.put_first (yyvs46.item (yyvsp46))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp46 := yyvsp46 -1
	yyspecial_routines47.force (yyvs47, yyval47, yyvsp47)
end
		end

	yy_do_action_213
			--|#line 1376 "et_eiffel_parser.y"
		local
			yyval47: ET_CLIENTS
		do
--|#line 1376 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1376")
end

			yyval47 := yyvs47.item (yyvsp47)
			if yyval47 /= Void and yyvs46.item (yyvsp46) /= Void then
				yyval47.put_first (yyvs46.item (yyvsp46))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp46 := yyvsp46 -1
	yyspecial_routines47.force (yyvs47, yyval47, yyvsp47)
end
		end

	yy_do_action_214
			--|#line 1386 "et_eiffel_parser.y"
		local
			yyval46: ET_CLIENT_ITEM
		do
--|#line 1386 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1386")
end

			yyval46 := new_client (yyvs13.item (yyvsp13))
			if yyval46 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp46 := yyvsp46 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp46 >= yyvsc46 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs46")
		end
		yyvsc46 := yyvsc46 + yyInitial_yyvs_size
		yyvs46 := yyspecial_routines46.aliased_resized_area (yyvs46, yyvsc46)
	end
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_215
			--|#line 1395 "et_eiffel_parser.y"
		local
			yyval46: ET_CLIENT_ITEM
		do
--|#line 1395 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1395")
end

			yyval46 := new_client_comma (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5))
			if yyval46 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp46 := yyvsp46 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp46 >= yyvsc46 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs46")
		end
		yyvsc46 := yyvsc46 + yyInitial_yyvs_size
		yyvs46 := yyspecial_routines46.aliased_resized_area (yyvs46, yyvsc46)
	end
	yyspecial_routines46.force (yyvs46, yyval46, yyvsp46)
end
		end

	yy_do_action_216
			--|#line 1406 "et_eiffel_parser.y"
		local
			yyval91: ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1406 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1406")
end

yyval91 := ast_factory.new_keyword_feature_name_list (yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp91 := yyvsp91 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp91 >= yyvsc91 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs91")
		end
		yyvsc91 := yyvsc91 + yyInitial_yyvs_size
		yyvs91 := yyspecial_routines91.aliased_resized_area (yyvs91, yyvsc91)
	end
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_217
			--|#line 1408 "et_eiffel_parser.y"
		local
			yyval91: ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1408 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1408")
end

			yyval91 := yyvs91.item (yyvsp91)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp91 := yyvsp91 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_218
			--|#line 1408 "et_eiffel_parser.y"
		local
			yyval91: ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1408 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1408")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp91 := yyvsp91 + 1
	if yyvsp91 >= yyvsc91 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs91")
		end
		yyvsc91 := yyvsc91 + yyInitial_yyvs_size
		yyvs91 := yyspecial_routines91.aliased_resized_area (yyvs91, yyvsc91)
	end
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_219
			--|#line 1421 "et_eiffel_parser.y"
		local
			yyval91: ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1421 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1421")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp91 := yyvsp91 + 1
	if yyvsp91 >= yyvsc91 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs91")
		end
		yyvsc91 := yyvsc91 + yyInitial_yyvs_size
		yyvs91 := yyspecial_routines91.aliased_resized_area (yyvs91, yyvsc91)
	end
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_220
			--|#line 1423 "et_eiffel_parser.y"
		local
			yyval91: ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1423 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1423")
end

yyval91 := yyvs91.item (yyvsp91) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_221
			--|#line 1427 "et_eiffel_parser.y"
		local
			yyval91: ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1427 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1427")
end

yyval91 := ast_factory.new_keyword_feature_name_list (yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp91 := yyvsp91 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp91 >= yyvsc91 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs91")
		end
		yyvsc91 := yyvsc91 + yyInitial_yyvs_size
		yyvs91 := yyspecial_routines91.aliased_resized_area (yyvs91, yyvsc91)
	end
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_222
			--|#line 1429 "et_eiffel_parser.y"
		local
			yyval91: ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1429 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1429")
end

			yyval91 := yyvs91.item (yyvsp91)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp91 := yyvsp91 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_223
			--|#line 1429 "et_eiffel_parser.y"
		local
			yyval91: ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1429 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1429")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp91 := yyvsp91 + 1
	if yyvsp91 >= yyvsc91 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs91")
		end
		yyvsc91 := yyvsc91 + yyInitial_yyvs_size
		yyvs91 := yyspecial_routines91.aliased_resized_area (yyvs91, yyvsc91)
	end
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_224
			--|#line 1442 "et_eiffel_parser.y"
		local
			yyval91: ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1442 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1442")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp91 := yyvsp91 + 1
	if yyvsp91 >= yyvsc91 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs91")
		end
		yyvsc91 := yyvsc91 + yyInitial_yyvs_size
		yyvs91 := yyspecial_routines91.aliased_resized_area (yyvs91, yyvsc91)
	end
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_225
			--|#line 1444 "et_eiffel_parser.y"
		local
			yyval91: ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1444 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1444")
end

yyval91 := yyvs91.item (yyvsp91) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_226
			--|#line 1448 "et_eiffel_parser.y"
		local
			yyval91: ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1448 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1448")
end

yyval91 := ast_factory.new_keyword_feature_name_list (yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp91 := yyvsp91 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp91 >= yyvsc91 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs91")
		end
		yyvsc91 := yyvsc91 + yyInitial_yyvs_size
		yyvs91 := yyspecial_routines91.aliased_resized_area (yyvs91, yyvsc91)
	end
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_227
			--|#line 1450 "et_eiffel_parser.y"
		local
			yyval91: ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1450 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1450")
end

			yyval91 := yyvs91.item (yyvsp91)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp91 := yyvsp91 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_228
			--|#line 1450 "et_eiffel_parser.y"
		local
			yyval91: ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1450 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1450")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp91 := yyvsp91 + 1
	if yyvsp91 >= yyvsc91 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs91")
		end
		yyvsc91 := yyvsc91 + yyInitial_yyvs_size
		yyvs91 := yyspecial_routines91.aliased_resized_area (yyvs91, yyvsc91)
	end
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_229
			--|#line 1463 "et_eiffel_parser.y"
		local
			yyval91: ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1463 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1463")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp91 := yyvsp91 + 1
	if yyvsp91 >= yyvsc91 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs91")
		end
		yyvsc91 := yyvsc91 + yyInitial_yyvs_size
		yyvs91 := yyspecial_routines91.aliased_resized_area (yyvs91, yyvsc91)
	end
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_230
			--|#line 1465 "et_eiffel_parser.y"
		local
			yyval91: ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1465 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1465")
end

yyval91 := yyvs91.item (yyvsp91) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_231
			--|#line 1469 "et_eiffel_parser.y"
		local
			yyval91: ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1469 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1469")
end

			if yyvs73.item (yyvsp73) /= Void then
				yyval91 := ast_factory.new_keyword_feature_name_list (last_keyword, counter_value + 1)
				if yyval91 /= Void then
					yyval91.put_first (yyvs73.item (yyvsp73))
				end
			else
				yyval91 := ast_factory.new_keyword_feature_name_list (last_keyword, counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp91 := yyvsp91 + 1
	yyvsp73 := yyvsp73 -1
	if yyvsp91 >= yyvsc91 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs91")
		end
		yyvsc91 := yyvsc91 + yyInitial_yyvs_size
		yyvs91 := yyspecial_routines91.aliased_resized_area (yyvs91, yyvsc91)
	end
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_232
			--|#line 1480 "et_eiffel_parser.y"
		local
			yyval91: ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1480 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1480")
end

			yyval91 := ast_factory.new_keyword_feature_name_list (last_keyword, counter_value)
			if yyval91 /= Void and yyvs74.item (yyvsp74) /= Void then
				yyval91.put_first (yyvs74.item (yyvsp74))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp91 := yyvsp91 + 1
	yyvsp74 := yyvsp74 -1
	if yyvsp91 >= yyvsc91 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs91")
		end
		yyvsc91 := yyvsc91 + yyInitial_yyvs_size
		yyvs91 := yyspecial_routines91.aliased_resized_area (yyvs91, yyvsc91)
	end
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_233
			--|#line 1488 "et_eiffel_parser.y"
		local
			yyval91: ET_KEYWORD_FEATURE_NAME_LIST
		do
--|#line 1488 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1488")
end

			yyval91 := yyvs91.item (yyvsp91)
			if yyval91 /= Void and yyvs74.item (yyvsp74) /= Void then
				yyval91.put_first (yyvs74.item (yyvsp74))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp74 := yyvsp74 -1
	yyspecial_routines91.force (yyvs91, yyval91, yyvsp91)
end
		end

	yy_do_action_234
			--|#line 1497 "et_eiffel_parser.y"
		local
			yyval74: ET_FEATURE_NAME_ITEM
		do
--|#line 1497 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1497")
end

			yyval74 := ast_factory.new_feature_name_comma (yyvs73.item (yyvsp73), yyvs5.item (yyvsp5))
			if yyval74 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp74 := yyvsp74 + 1
	yyvsp73 := yyvsp73 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp74 >= yyvsc74 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs74")
		end
		yyvsc74 := yyvsc74 + yyInitial_yyvs_size
		yyvs74 := yyspecial_routines74.aliased_resized_area (yyvs74, yyvsc74)
	end
	yyspecial_routines74.force (yyvs74, yyval74, yyvsp74)
end
		end

	yy_do_action_235
			--|#line 1508 "et_eiffel_parser.y"
		local
			yyval60: ET_CREATOR_LIST
		do
--|#line 1508 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1508")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp60 := yyvsp60 + 1
	if yyvsp60 >= yyvsc60 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs60")
		end
		yyvsc60 := yyvsc60 + yyInitial_yyvs_size
		yyvs60 := yyspecial_routines60.aliased_resized_area (yyvs60, yyvsc60)
	end
	yyspecial_routines60.force (yyvs60, yyval60, yyvsp60)
end
		end

	yy_do_action_236
			--|#line 1510 "et_eiffel_parser.y"
		local
			yyval60: ET_CREATOR_LIST
		do
--|#line 1510 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1510")
end

			yyval60 := yyvs60.item (yyvsp60)
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines60.force (yyvs60, yyval60, yyvsp60)
end
		end

	yy_do_action_237
			--|#line 1517 "et_eiffel_parser.y"
		local
			yyval60: ET_CREATOR_LIST
		do
--|#line 1517 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1517")
end

			yyval60 := yyvs60.item (yyvsp60)
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines60.force (yyvs60, yyval60, yyvsp60)
end
		end

	yy_do_action_238
			--|#line 1524 "et_eiffel_parser.y"
		local
			yyval60: ET_CREATOR_LIST
		do
--|#line 1524 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1524")
end

			if yyvs59.item (yyvsp59) /= Void then
				yyval60 := ast_factory.new_creators (counter_value + 1)
				if yyval60 /= Void then
					yyval60.put_first (yyvs59.item (yyvsp59))
				end
			else
				yyval60 := ast_factory.new_creators (counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp60 := yyvsp60 + 1
	yyvsp59 := yyvsp59 -1
	if yyvsp60 >= yyvsc60 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs60")
		end
		yyvsc60 := yyvsc60 + yyInitial_yyvs_size
		yyvs60 := yyspecial_routines60.aliased_resized_area (yyvs60, yyvsc60)
	end
	yyspecial_routines60.force (yyvs60, yyval60, yyvsp60)
end
		end

	yy_do_action_239
			--|#line 1535 "et_eiffel_parser.y"
		local
			yyval60: ET_CREATOR_LIST
		do
--|#line 1535 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1535")
end

			yyval60 := yyvs60.item (yyvsp60)
			if yyval60 /= Void and yyvs59.item (yyvsp59) /= Void then
				yyval60.put_first (yyvs59.item (yyvsp59))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp60 := yyvsp60 -1
	yyvsp59 := yyvsp59 -1
	yyspecial_routines60.force (yyvs60, yyval60, yyvsp60)
end
		end

	yy_do_action_240
			--|#line 1535 "et_eiffel_parser.y"
		local
			yyval60: ET_CREATOR_LIST
		do
--|#line 1535 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1535")
end

			if yyvs59.item (yyvsp59) /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp60 := yyvsp60 + 1
	if yyvsp60 >= yyvsc60 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs60")
		end
		yyvsc60 := yyvsc60 + yyInitial_yyvs_size
		yyvs60 := yyspecial_routines60.aliased_resized_area (yyvs60, yyvsc60)
	end
	yyspecial_routines60.force (yyvs60, yyval60, yyvsp60)
end
		end

	yy_do_action_241
			--|#line 1550 "et_eiffel_parser.y"
		local
			yyval59: ET_CREATOR
		do
--|#line 1550 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1550")
end

yyval59 := ast_factory.new_creator (yyvs2.item (yyvsp2), yyvs47.item (yyvsp47), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp59 := yyvsp59 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp47 := yyvsp47 -1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_242
			--|#line 1552 "et_eiffel_parser.y"
		local
			yyval59: ET_CREATOR
		do
--|#line 1552 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1552")
end

yyval59 := ast_factory.new_creator (yyvs2.item (yyvsp2), new_any_clients (yyvs2.item (yyvsp2)), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp59 := yyvsp59 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_243
			--|#line 1554 "et_eiffel_parser.y"
		local
			yyval59: ET_CREATOR
		do
--|#line 1554 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1554")
end

			yyval59 := yyvs59.item (yyvsp59)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp59 := yyvsp59 -1
	yyvsp2 := yyvsp2 -1
	yyvsp47 := yyvsp47 -1
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_244
			--|#line 1554 "et_eiffel_parser.y"
		local
			yyval59: ET_CREATOR
		do
--|#line 1554 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1554")
end

			add_keyword (yyvs2.item (yyvsp2))
			last_clients := yyvs47.item (yyvsp47)
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp59 := yyvsp59 + 1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_245
			--|#line 1566 "et_eiffel_parser.y"
		local
			yyval59: ET_CREATOR
		do
--|#line 1566 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1566")
end

			yyval59 := yyvs59.item (yyvsp59)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp59 := yyvsp59 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_246
			--|#line 1566 "et_eiffel_parser.y"
		local
			yyval59: ET_CREATOR
		do
--|#line 1566 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1566")
end

			add_keyword (yyvs2.item (yyvsp2))
			last_clients := new_any_clients (last_keyword)
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp59 := yyvsp59 + 1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_247
			--|#line 1578 "et_eiffel_parser.y"
		local
			yyval59: ET_CREATOR
		do
--|#line 1578 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1578")
end

yyval59 := ast_factory.new_creator (yyvs2.item (yyvsp2), yyvs47.item (yyvsp47), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp59 := yyvsp59 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp47 := yyvsp47 -1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_248
			--|#line 1580 "et_eiffel_parser.y"
		local
			yyval59: ET_CREATOR
		do
--|#line 1580 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1580")
end

yyval59 := ast_factory.new_creator (yyvs2.item (yyvsp2), new_any_clients (yyvs2.item (yyvsp2)), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp59 := yyvsp59 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_249
			--|#line 1582 "et_eiffel_parser.y"
		local
			yyval59: ET_CREATOR
		do
--|#line 1582 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1582")
end

			yyval59 := yyvs59.item (yyvsp59)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp59 := yyvsp59 -1
	yyvsp2 := yyvsp2 -1
	yyvsp47 := yyvsp47 -1
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_250
			--|#line 1582 "et_eiffel_parser.y"
		local
			yyval59: ET_CREATOR
		do
--|#line 1582 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1582")
end

			add_keyword (yyvs2.item (yyvsp2))
			last_clients := yyvs47.item (yyvsp47)
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp59 := yyvsp59 + 1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_251
			--|#line 1594 "et_eiffel_parser.y"
		local
			yyval59: ET_CREATOR
		do
--|#line 1594 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1594")
end

			yyval59 := yyvs59.item (yyvsp59)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp59 := yyvsp59 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_252
			--|#line 1594 "et_eiffel_parser.y"
		local
			yyval59: ET_CREATOR
		do
--|#line 1594 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1594")
end

			add_keyword (yyvs2.item (yyvsp2))
			last_clients := new_any_clients (last_keyword)
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp59 := yyvsp59 + 1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_253
			--|#line 1608 "et_eiffel_parser.y"
		local
			yyval59: ET_CREATOR
		do
--|#line 1608 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1608")
end

			if yyvs13.item (yyvsp13) /= Void then
				yyval59 := ast_factory.new_creator (last_keyword, last_clients, counter_value + 1)
				if yyval59 /= Void then
					yyval59.put_first (yyvs13.item (yyvsp13))
				end
			else
				yyval59 := ast_factory.new_creator (last_keyword, last_clients, counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp59 := yyvsp59 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_254
			--|#line 1619 "et_eiffel_parser.y"
		local
			yyval59: ET_CREATOR
		do
--|#line 1619 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1619")
end

			if current_system.is_ise then
				raise_error
			else
				yyval59 := ast_factory.new_creator (last_keyword, last_clients, counter_value)
				if yyval59 /= Void and yyvs74.item (yyvsp74) /= Void then
					yyval59.put_first (yyvs74.item (yyvsp74))
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp59 := yyvsp59 + 1
	yyvsp74 := yyvsp74 -1
	if yyvsp59 >= yyvsc59 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs59")
		end
		yyvsc59 := yyvsc59 + yyInitial_yyvs_size
		yyvs59 := yyspecial_routines59.aliased_resized_area (yyvs59, yyvsc59)
	end
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_255
			--|#line 1631 "et_eiffel_parser.y"
		local
			yyval59: ET_CREATOR
		do
--|#line 1631 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1631")
end

			yyval59 := yyvs59.item (yyvsp59)
			if yyval59 /= Void and yyvs74.item (yyvsp74) /= Void then
				yyval59.put_first (yyvs74.item (yyvsp74))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp74 := yyvsp74 -1
	yyspecial_routines59.force (yyvs59, yyval59, yyvsp59)
end
		end

	yy_do_action_256
			--|#line 1640 "et_eiffel_parser.y"
		local
			yyval74: ET_FEATURE_NAME_ITEM
		do
--|#line 1640 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1640")
end

			yyval74 := ast_factory.new_feature_name_comma (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5))
			if yyval74 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp74 := yyvsp74 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp74 >= yyvsc74 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs74")
		end
		yyvsc74 := yyvsc74 + yyInitial_yyvs_size
		yyvs74 := yyspecial_routines74.aliased_resized_area (yyvs74, yyvsc74)
	end
	yyspecial_routines74.force (yyvs74, yyval74, yyvsp74)
end
		end

	yy_do_action_257
			--|#line 1651 "et_eiffel_parser.y"
		local
			yyval57: ET_CONVERT_FEATURE_LIST
		do
--|#line 1651 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1651")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp57 := yyvsp57 + 1
	if yyvsp57 >= yyvsc57 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs57")
		end
		yyvsc57 := yyvsc57 + yyInitial_yyvs_size
		yyvs57 := yyspecial_routines57.aliased_resized_area (yyvs57, yyvsc57)
	end
	yyspecial_routines57.force (yyvs57, yyval57, yyvsp57)
end
		end

	yy_do_action_258
			--|#line 1653 "et_eiffel_parser.y"
		local
			yyval57: ET_CONVERT_FEATURE_LIST
		do
--|#line 1653 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1653")
end

yyval57 := yyvs57.item (yyvsp57) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines57.force (yyvs57, yyval57, yyvsp57)
end
		end

	yy_do_action_259
			--|#line 1657 "et_eiffel_parser.y"
		local
			yyval57: ET_CONVERT_FEATURE_LIST
		do
--|#line 1657 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1657")
end

			yyval57 := yyvs57.item (yyvsp57)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp57 := yyvsp57 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines57.force (yyvs57, yyval57, yyvsp57)
end
		end

	yy_do_action_260
			--|#line 1657 "et_eiffel_parser.y"
		local
			yyval57: ET_CONVERT_FEATURE_LIST
		do
--|#line 1657 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1657")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp57 := yyvsp57 + 1
	if yyvsp57 >= yyvsc57 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs57")
		end
		yyvsc57 := yyvsc57 + yyInitial_yyvs_size
		yyvs57 := yyspecial_routines57.aliased_resized_area (yyvs57, yyvsc57)
	end
	yyspecial_routines57.force (yyvs57, yyval57, yyvsp57)
end
		end

	yy_do_action_261
			--|#line 1670 "et_eiffel_parser.y"
		local
			yyval57: ET_CONVERT_FEATURE_LIST
		do
--|#line 1670 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1670")
end

			yyval57 := ast_factory.new_convert_features (last_keyword, counter_value + 1)
			if yyval57 /= Void and yyvs55.item (yyvsp55) /= Void then
				yyval57.put_first (yyvs55.item (yyvsp55))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp57 := yyvsp57 + 1
	yyvsp55 := yyvsp55 -1
	if yyvsp57 >= yyvsc57 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs57")
		end
		yyvsc57 := yyvsc57 + yyInitial_yyvs_size
		yyvs57 := yyspecial_routines57.aliased_resized_area (yyvs57, yyvsc57)
	end
	yyspecial_routines57.force (yyvs57, yyval57, yyvsp57)
end
		end

	yy_do_action_262
			--|#line 1677 "et_eiffel_parser.y"
		local
			yyval57: ET_CONVERT_FEATURE_LIST
		do
--|#line 1677 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1677")
end

			yyval57 := ast_factory.new_convert_features (last_keyword, counter_value)
			if yyval57 /= Void and yyvs56.item (yyvsp56) /= Void then
				yyval57.put_first (yyvs56.item (yyvsp56))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp57 := yyvsp57 + 1
	yyvsp56 := yyvsp56 -1
	if yyvsp57 >= yyvsc57 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs57")
		end
		yyvsc57 := yyvsc57 + yyInitial_yyvs_size
		yyvs57 := yyspecial_routines57.aliased_resized_area (yyvs57, yyvsc57)
	end
	yyspecial_routines57.force (yyvs57, yyval57, yyvsp57)
end
		end

	yy_do_action_263
			--|#line 1684 "et_eiffel_parser.y"
		local
			yyval57: ET_CONVERT_FEATURE_LIST
		do
--|#line 1684 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1684")
end

			yyval57 := yyvs57.item (yyvsp57)
			if yyval57 /= Void and yyvs56.item (yyvsp56) /= Void then
				yyval57.put_first (yyvs56.item (yyvsp56))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp56 := yyvsp56 -1
	yyspecial_routines57.force (yyvs57, yyval57, yyvsp57)
end
		end

	yy_do_action_264
			--|#line 1693 "et_eiffel_parser.y"
		local
			yyval56: ET_CONVERT_FEATURE_ITEM
		do
--|#line 1693 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1693")
end

			yyval56 := ast_factory.new_convert_feature_comma (yyvs55.item (yyvsp55), yyvs5.item (yyvsp5))
			if yyval56 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp56 := yyvsp56 + 1
	yyvsp55 := yyvsp55 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp56 >= yyvsc56 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs56")
		end
		yyvsc56 := yyvsc56 + yyInitial_yyvs_size
		yyvs56 := yyspecial_routines56.aliased_resized_area (yyvs56, yyvsc56)
	end
	yyspecial_routines56.force (yyvs56, yyval56, yyvsp56)
end
		end

	yy_do_action_265
			--|#line 1702 "et_eiffel_parser.y"
		local
			yyval55: ET_CONVERT_FEATURE
		do
--|#line 1702 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1702")
end

			yyval55 := ast_factory.new_convert_function (yyvs73.item (yyvsp73), yyvs5.item (yyvsp5), yyvs117.item (yyvsp117))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp55 := yyvsp55 + 1
	yyvsp73 := yyvsp73 -1
	yyvsp5 := yyvsp5 -1
	yyvsp117 := yyvsp117 -1
	if yyvsp55 >= yyvsc55 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs55")
		end
		yyvsc55 := yyvsc55 + yyInitial_yyvs_size
		yyvs55 := yyspecial_routines55.aliased_resized_area (yyvs55, yyvsc55)
	end
	yyspecial_routines55.force (yyvs55, yyval55, yyvsp55)
end
		end

	yy_do_action_266
			--|#line 1706 "et_eiffel_parser.y"
		local
			yyval55: ET_CONVERT_FEATURE
		do
--|#line 1706 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1706")
end

			yyval55 := ast_factory.new_convert_procedure (yyvs73.item (yyvsp73), yyvs5.item (yyvsp5 - 1), yyvs117.item (yyvsp117), yyvs5.item (yyvsp5))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp55 := yyvsp55 + 1
	yyvsp73 := yyvsp73 -1
	yyvsp5 := yyvsp5 -2
	yyvsp117 := yyvsp117 -1
	if yyvsp55 >= yyvsc55 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs55")
		end
		yyvsc55 := yyvsc55 + yyInitial_yyvs_size
		yyvs55 := yyspecial_routines55.aliased_resized_area (yyvs55, yyvsc55)
	end
	yyspecial_routines55.force (yyvs55, yyval55, yyvsp55)
end
		end

	yy_do_action_267
			--|#line 1712 "et_eiffel_parser.y"
		local
			yyval117: ET_TYPE_LIST
		do
--|#line 1712 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1712")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp117 := yyvsp117 + 1
	yyvsp5 := yyvsp5 -2
	if yyvsp117 >= yyvsc117 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs117")
		end
		yyvsc117 := yyvsc117 + yyInitial_yyvs_size
		yyvs117 := yyspecial_routines117.aliased_resized_area (yyvs117, yyvsc117)
	end
	yyspecial_routines117.force (yyvs117, yyval117, yyvsp117)
end
		end

	yy_do_action_268
			--|#line 1714 "et_eiffel_parser.y"
		local
			yyval117: ET_TYPE_LIST
		do
--|#line 1714 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1714")
end

			yyval117 := yyvs117.item (yyvsp117)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp117 := yyvsp117 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines117.force (yyvs117, yyval117, yyvsp117)
end
		end

	yy_do_action_269
			--|#line 1714 "et_eiffel_parser.y"
		local
			yyval117: ET_TYPE_LIST
		do
--|#line 1714 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1714")
end

			add_symbol (yyvs5.item (yyvsp5))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp117 := yyvsp117 + 1
	if yyvsp117 >= yyvsc117 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs117")
		end
		yyvsc117 := yyvsc117 + yyInitial_yyvs_size
		yyvs117 := yyspecial_routines117.aliased_resized_area (yyvs117, yyvsc117)
	end
	yyspecial_routines117.force (yyvs117, yyval117, yyvsp117)
end
		end

	yy_do_action_270
			--|#line 1727 "et_eiffel_parser.y"
		local
			yyval117: ET_TYPE_LIST
		do
--|#line 1727 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1727")
end

			if yyvs115.item (yyvsp115) /= Void then
				yyval117 := ast_factory.new_convert_types (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval117 /= Void then
					yyval117.put_first (yyvs115.item (yyvsp115))
				end
			else
				yyval117 := ast_factory.new_convert_types (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp117 := yyvsp117 + 1
	yyvsp115 := yyvsp115 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp117 >= yyvsc117 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs117")
		end
		yyvsc117 := yyvsc117 + yyInitial_yyvs_size
		yyvs117 := yyspecial_routines117.aliased_resized_area (yyvs117, yyvsc117)
	end
	yyspecial_routines117.force (yyvs117, yyval117, yyvsp117)
end
		end

	yy_do_action_271
			--|#line 1738 "et_eiffel_parser.y"
		local
			yyval117: ET_TYPE_LIST
		do
--|#line 1738 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1738")
end

			yyval117 := yyvs117.item (yyvsp117)
			if yyval117 /= Void and yyvs116.item (yyvsp116) /= Void then
				yyval117.put_first (yyvs116.item (yyvsp116))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp116 := yyvsp116 -1
	yyspecial_routines117.force (yyvs117, yyval117, yyvsp117)
end
		end

	yy_do_action_272
			--|#line 1747 "et_eiffel_parser.y"
		local
			yyval116: ET_TYPE_ITEM
		do
--|#line 1747 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1747")
end

			yyval116 := ast_factory.new_type_comma (yyvs115.item (yyvsp115), yyvs5.item (yyvsp5))
			if yyval116 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp116 := yyvsp116 + 1
	yyvsp115 := yyvsp115 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp116 >= yyvsc116 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs116")
		end
		yyvsc116 := yyvsc116 + yyInitial_yyvs_size
		yyvs116 := yyspecial_routines116.aliased_resized_area (yyvs116, yyvsc116)
	end
	yyspecial_routines116.force (yyvs116, yyval116, yyvsp116)
end
		end

	yy_do_action_273
			--|#line 1758 "et_eiffel_parser.y"
		local
			yyval71: ET_FEATURE_CLAUSE_LIST
		do
--|#line 1758 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1758")
end

			-- $$ := Void
			set_class_features
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp71 := yyvsp71 + 1
	if yyvsp71 >= yyvsc71 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs71")
		end
		yyvsc71 := yyvsc71 + yyInitial_yyvs_size
		yyvs71 := yyspecial_routines71.aliased_resized_area (yyvs71, yyvsc71)
	end
	yyspecial_routines71.force (yyvs71, yyval71, yyvsp71)
end
		end

	yy_do_action_274
			--|#line 1763 "et_eiffel_parser.y"
		local
			yyval71: ET_FEATURE_CLAUSE_LIST
		do
--|#line 1763 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1763")
end

yyval71 := yyvs71.item (yyvsp71) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines71.force (yyvs71, yyval71, yyvsp71)
end
		end

	yy_do_action_275
			--|#line 1767 "et_eiffel_parser.y"
		local
			yyval71: ET_FEATURE_CLAUSE_LIST
		do
--|#line 1767 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1767")
end

			yyval71 := yyvs71.item (yyvsp71)
			set_class_features
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines71.force (yyvs71, yyval71, yyvsp71)
end
		end

	yy_do_action_276
			--|#line 1775 "et_eiffel_parser.y"
		local
			yyval71: ET_FEATURE_CLAUSE_LIST
		do
--|#line 1775 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1775")
end

			yyval71 := ast_factory.new_feature_clauses (counter_value)
			if yyval71 /= Void and yyvs70.item (yyvsp70) /= Void then
				yyval71.put_first (yyvs70.item (yyvsp70))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp71 := yyvsp71 + 1
	yyvsp70 := yyvsp70 -1
	if yyvsp71 >= yyvsc71 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs71")
		end
		yyvsc71 := yyvsc71 + yyInitial_yyvs_size
		yyvs71 := yyspecial_routines71.aliased_resized_area (yyvs71, yyvsc71)
	end
	yyspecial_routines71.force (yyvs71, yyval71, yyvsp71)
end
		end

	yy_do_action_277
			--|#line 1782 "et_eiffel_parser.y"
		local
			yyval71: ET_FEATURE_CLAUSE_LIST
		do
--|#line 1782 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1782")
end

			yyval71 := yyvs71.item (yyvsp71)
			if yyval71 /= Void and yyvs70.item (yyvsp70) /= Void then
				yyval71.put_first (yyvs70.item (yyvsp70))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp70 := yyvsp70 -1
	yyspecial_routines71.force (yyvs71, yyval71, yyvsp71)
end
		end

	yy_do_action_278
			--|#line 1791 "et_eiffel_parser.y"
		local
			yyval70: ET_FEATURE_CLAUSE
		do
--|#line 1791 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1791")
end

			yyval70 := last_feature_clause
			if yyval70 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines70.force (yyvs70, yyval70, yyvsp70)
end
		end

	yy_do_action_279
			--|#line 1798 "et_eiffel_parser.y"
		local
			yyval70: ET_FEATURE_CLAUSE
		do
--|#line 1798 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1798")
end

			yyval70 := last_feature_clause
			if yyval70 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines70.force (yyvs70, yyval70, yyvsp70)
end
		end

	yy_do_action_280
			--|#line 1807 "et_eiffel_parser.y"
		local
			yyval70: ET_FEATURE_CLAUSE
		do
--|#line 1807 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1807")
end

			last_clients := yyvs47.item (yyvsp47)
			last_feature_clause := ast_factory.new_feature_clause (yyvs2.item (yyvsp2), last_clients)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp70 := yyvsp70 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp47 := yyvsp47 -1
	if yyvsp70 >= yyvsc70 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs70")
		end
		yyvsc70 := yyvsc70 + yyInitial_yyvs_size
		yyvs70 := yyspecial_routines70.aliased_resized_area (yyvs70, yyvsc70)
	end
	yyspecial_routines70.force (yyvs70, yyval70, yyvsp70)
end
		end

	yy_do_action_281
			--|#line 1812 "et_eiffel_parser.y"
		local
			yyval70: ET_FEATURE_CLAUSE
		do
--|#line 1812 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1812")
end

			last_clients := new_any_clients (yyvs2.item (yyvsp2))
			last_feature_clause := ast_factory.new_feature_clause (yyvs2.item (yyvsp2), last_clients)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp70 := yyvsp70 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp70 >= yyvsc70 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs70")
		end
		yyvsc70 := yyvsc70 + yyInitial_yyvs_size
		yyvs70 := yyspecial_routines70.aliased_resized_area (yyvs70, yyvsc70)
	end
	yyspecial_routines70.force (yyvs70, yyval70, yyvsp70)
end
		end

	yy_do_action_282
			--|#line 1819 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 1819 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1819")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp110 := yyvsp110 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_283
			--|#line 1820 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 1820 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1820")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp108 := yyvsp108 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_284
			--|#line 1821 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 1821 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1821")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp110 := yyvsp110 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_285
			--|#line 1822 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 1822 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1822")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp108 := yyvsp108 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_286
			--|#line 1827 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1827 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1827")
end

			yyval110 := yyvs110.item (yyvsp110)
			register_query (yyval110)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_287
			--|#line 1832 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1832 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1832")
end

			yyval110 := yyvs110.item (yyvsp110)
			yyval110.set_frozen_keyword (yyvs2.item (yyvsp2))
			register_query (yyval110)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_288
			--|#line 1838 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1838 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1838")
end

			yyval110 := new_query_synonym (ast_factory.new_extended_feature_name_comma (yyvs68.item (yyvsp68), yyvs5.item (yyvsp5)), yyvs110.item (yyvsp110))
			register_query_synonym (yyval110)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_289
			--|#line 1843 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1843 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1843")
end

			yyval110 := new_query_synonym (yyvs68.item (yyvsp68), yyvs110.item (yyvsp110))
			register_query_synonym (yyval110)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp68 := yyvsp68 -1
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_290
			--|#line 1849 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1849 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1849")
end

			yyval110 := new_query_synonym (ast_factory.new_extended_feature_name_comma (yyvs68.item (yyvsp68), yyvs5.item (yyvsp5)), yyvs110.item (yyvsp110))
			yyval110.set_frozen_keyword (yyvs2.item (yyvsp2))
			register_query_synonym (yyval110)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp2 := yyvsp2 -1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_291
			--|#line 1855 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1855 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1855")
end

			yyval110 := new_query_synonym (yyvs68.item (yyvsp68), yyvs110.item (yyvsp110))
			yyval110.set_frozen_keyword (yyvs2.item (yyvsp2))
			register_query_synonym (yyval110)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp2 := yyvsp2 -1
	yyvsp68 := yyvsp68 -1
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_292
			--|#line 1864 "et_eiffel_parser.y"
		local
			yyval108: ET_PROCEDURE
		do
--|#line 1864 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1864")
end

			yyval108 := yyvs108.item (yyvsp108)
			register_procedure (yyval108)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines108.force (yyvs108, yyval108, yyvsp108)
end
		end

	yy_do_action_293
			--|#line 1869 "et_eiffel_parser.y"
		local
			yyval108: ET_PROCEDURE
		do
--|#line 1869 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1869")
end

			yyval108 := yyvs108.item (yyvsp108)
			yyval108.set_frozen_keyword (yyvs2.item (yyvsp2))
			register_procedure (yyval108)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines108.force (yyvs108, yyval108, yyvsp108)
end
		end

	yy_do_action_294
			--|#line 1875 "et_eiffel_parser.y"
		local
			yyval108: ET_PROCEDURE
		do
--|#line 1875 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1875")
end

			yyval108 := new_procedure_synonym (ast_factory.new_extended_feature_name_comma (yyvs68.item (yyvsp68), yyvs5.item (yyvsp5)), yyvs108.item (yyvsp108))
			register_procedure_synonym (yyval108)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines108.force (yyvs108, yyval108, yyvsp108)
end
		end

	yy_do_action_295
			--|#line 1880 "et_eiffel_parser.y"
		local
			yyval108: ET_PROCEDURE
		do
--|#line 1880 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1880")
end

			yyval108 := new_procedure_synonym (yyvs68.item (yyvsp68), yyvs108.item (yyvsp108))
			register_procedure_synonym (yyval108)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp68 := yyvsp68 -1
	yyspecial_routines108.force (yyvs108, yyval108, yyvsp108)
end
		end

	yy_do_action_296
			--|#line 1886 "et_eiffel_parser.y"
		local
			yyval108: ET_PROCEDURE
		do
--|#line 1886 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1886")
end

			yyval108 := new_procedure_synonym (ast_factory.new_extended_feature_name_comma (yyvs68.item (yyvsp68), yyvs5.item (yyvsp5)), yyvs108.item (yyvsp108))
			yyval108.set_frozen_keyword (yyvs2.item (yyvsp2))
			register_procedure_synonym (yyval108)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp2 := yyvsp2 -1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines108.force (yyvs108, yyval108, yyvsp108)
end
		end

	yy_do_action_297
			--|#line 1892 "et_eiffel_parser.y"
		local
			yyval108: ET_PROCEDURE
		do
--|#line 1892 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1892")
end

			yyval108 := new_procedure_synonym (yyvs68.item (yyvsp68), yyvs108.item (yyvsp108))
			yyval108.set_frozen_keyword (yyvs2.item (yyvsp2))
			register_procedure_synonym (yyval108)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp2 := yyvsp2 -1
	yyvsp68 := yyvsp68 -1
	yyspecial_routines108.force (yyvs108, yyval108, yyvsp108)
end
		end

	yy_do_action_298
			--|#line 1901 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1901 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1901")
end

yyval110 := ast_factory.new_attribute (yyvs68.item (yyvsp68), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), Void, last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_299
			--|#line 1903 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1903 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1903")
end

yyval110 := ast_factory.new_attribute (yyvs68.item (yyvsp68), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_300
			--|#line 1905 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1905 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1905")
end

			yyval110 := ast_factory.new_extended_attribute (yyvs68.item (yyvsp68), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs48.item (yyvsp48 - 1), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 13
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	yyvsp2 := yyvsp2 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_301
			--|#line 1909 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1909 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1909")
end

yyval110 := ast_factory.new_constant_attribute (yyvs68.item (yyvsp68), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), yyvs2.item (yyvsp2), yyvs50.item (yyvsp50), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp2 := yyvsp2 -1
	yyvsp50 := yyvsp50 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_302
			--|#line 1911 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1911 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1911")
end

			if current_system.is_ise and then current_system.ise_version < ise_5_7_59914 then
				raise_error
			else
				yyval110 := ast_factory.new_constant_attribute (yyvs68.item (yyvsp68), ast_factory.new_colon_type (yyvs5.item (yyvsp5 - 1), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), yyvs5.item (yyvsp5), yyvs50.item (yyvsp50), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -2
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp50 := yyvsp50 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_303
			--|#line 1919 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1919 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1919")
end

yyval110 := ast_factory.new_unique_attribute (yyvs68.item (yyvsp68), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp2 := yyvsp2 -2
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_304
			--|#line 1921 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1921 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1921")
end

			if current_system.is_ise and then current_system.ise_version < ise_5_7_59914 then
				raise_error
			else
				yyval110 := ast_factory.new_unique_attribute (yyvs68.item (yyvsp68), ast_factory.new_colon_type (yyvs5.item (yyvsp5 - 1), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), yyvs5.item (yyvsp5), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -2
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp2 := yyvsp2 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_305
			--|#line 1929 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1929 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1929")
end

yyval110 := ast_factory.new_do_function (yyvs68.item (yyvsp68), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), yyvs2.item (yyvsp2 - 1), yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs48.item (yyvsp48 - 1), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 14
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp2 := yyvsp2 -2
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_306
			--|#line 1932 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1932 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1932")
end

			if current_system.is_ise and then current_system.ise_version < ise_5_7_59914 then
				raise_error
			else
				yyval110 := ast_factory.new_do_function (yyvs68.item (yyvsp68), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), Void, yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs48.item (yyvsp48 - 1), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 13
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	yyvsp2 := yyvsp2 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_307
			--|#line 1941 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1941 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1941")
end

yyval110 := ast_factory.new_do_function (yyvs68.item (yyvsp68), yyvs77.item (yyvsp77), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), yyvs2.item (yyvsp2 - 1), yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs48.item (yyvsp48 - 1), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 15
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp77 := yyvsp77 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp2 := yyvsp2 -2
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_308
			--|#line 1945 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1945 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1945")
end

			if current_system.is_ise and then current_system.ise_version < ise_5_7_59914 then
				raise_error
			else
				yyval110 := ast_factory.new_do_function (yyvs68.item (yyvsp68), yyvs77.item (yyvsp77), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), Void, yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs48.item (yyvsp48 - 1), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 14
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp77 := yyvsp77 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	yyvsp2 := yyvsp2 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_309
			--|#line 1955 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1955 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1955")
end

yyval110 := ast_factory.new_once_function (yyvs68.item (yyvsp68), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), yyvs2.item (yyvsp2 - 2), yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs99.item (yyvsp99), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs48.item (yyvsp48 - 1)), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 16
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp2 := yyvsp2 -3
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp99 := yyvsp99 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_310
			--|#line 1958 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1958 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1958")
end

			if current_system.is_ise and then current_system.ise_version < ise_5_7_59914 then
				raise_error
			else
				yyval110 := ast_factory.new_once_function (yyvs68.item (yyvsp68), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), Void, yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs99.item (yyvsp99), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs48.item (yyvsp48 - 1)), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 15
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp2 := yyvsp2 -2
	yyvsp99 := yyvsp99 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_311
			--|#line 1967 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1967 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1967")
end

yyval110 := ast_factory.new_once_function (yyvs68.item (yyvsp68), yyvs77.item (yyvsp77), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), yyvs2.item (yyvsp2 - 2), yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs99.item (yyvsp99), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs48.item (yyvsp48 - 1)), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 17
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp77 := yyvsp77 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp2 := yyvsp2 -3
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp99 := yyvsp99 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_312
			--|#line 1971 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1971 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1971")
end

			if current_system.is_ise and then current_system.ise_version < ise_5_7_59914 then
				raise_error
			else
				yyval110 := ast_factory.new_once_function (yyvs68.item (yyvsp68), yyvs77.item (yyvsp77), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), Void, yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs99.item (yyvsp99), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs48.item (yyvsp48 - 1)), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 16
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp77 := yyvsp77 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp2 := yyvsp2 -2
	yyvsp99 := yyvsp99 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_313
			--|#line 1981 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1981 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1981")
end

yyval110 := ast_factory.new_deferred_function (yyvs68.item (yyvsp68), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), yyvs2.item (yyvsp2 - 2), yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), yyvs2.item (yyvsp2 - 1), yyvs106.item (yyvsp106), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 12
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp2 := yyvsp2 -3
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_314
			--|#line 1983 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1983 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1983")
end

			if current_system.is_ise and then current_system.ise_version < ise_5_7_59914 then
				raise_error
			else
				yyval110 := ast_factory.new_deferred_function (yyvs68.item (yyvsp68), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), Void, yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), yyvs2.item (yyvsp2 - 1), yyvs106.item (yyvsp106), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 11
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp2 := yyvsp2 -2
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_315
			--|#line 1991 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1991 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1991")
end

yyval110 := ast_factory.new_deferred_function (yyvs68.item (yyvsp68), yyvs77.item (yyvsp77), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), yyvs2.item (yyvsp2 - 2), yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), yyvs2.item (yyvsp2 - 1), yyvs106.item (yyvsp106), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 13
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp77 := yyvsp77 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp2 := yyvsp2 -3
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_316
			--|#line 1994 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 1994 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 1994")
end

			if current_system.is_ise and then current_system.ise_version < ise_5_7_59914 then
				raise_error
			else
				yyval110 := ast_factory.new_deferred_function (yyvs68.item (yyvsp68), yyvs77.item (yyvsp77), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), Void, yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), yyvs2.item (yyvsp2 - 1), yyvs106.item (yyvsp106), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 12
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp77 := yyvsp77 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp2 := yyvsp2 -2
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_317
			--|#line 2003 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 2003 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2003")
end

yyval110 := new_external_function (yyvs68.item (yyvsp68), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), yyvs2.item (yyvsp2 - 2), yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs16.item (yyvsp16)), yyvs69.item (yyvsp69), yyvs106.item (yyvsp106), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 14
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp2 := yyvsp2 -3
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp16 := yyvsp16 -1
	yyvsp69 := yyvsp69 -1
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_318
			--|#line 2006 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 2006 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2006")
end

			if current_system.is_ise and then current_system.ise_version < ise_5_7_59914 then
				raise_error
			else
				yyval110 := new_external_function (yyvs68.item (yyvsp68), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), Void, yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs16.item (yyvsp16)), yyvs69.item (yyvsp69), yyvs106.item (yyvsp106), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 13
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp2 := yyvsp2 -2
	yyvsp16 := yyvsp16 -1
	yyvsp69 := yyvsp69 -1
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_319
			--|#line 2015 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 2015 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2015")
end

yyval110 := new_external_function (yyvs68.item (yyvsp68), yyvs77.item (yyvsp77), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), yyvs2.item (yyvsp2 - 2), yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs16.item (yyvsp16)), yyvs69.item (yyvsp69), yyvs106.item (yyvsp106), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 15
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp77 := yyvsp77 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp2 := yyvsp2 -3
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp16 := yyvsp16 -1
	yyvsp69 := yyvsp69 -1
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_320
			--|#line 2019 "et_eiffel_parser.y"
		local
			yyval110: ET_QUERY
		do
--|#line 2019 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2019")
end

			if current_system.is_ise and then current_system.ise_version < ise_5_7_59914 then
				raise_error
			else
				yyval110 := new_external_function (yyvs68.item (yyvsp68), yyvs77.item (yyvsp77), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs35.item (yyvsp35), Void, yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs16.item (yyvsp16)), yyvs69.item (yyvsp69), yyvs106.item (yyvsp106), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 14
	yyvsp110 := yyvsp110 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp77 := yyvsp77 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp35 := yyvsp35 -1
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp2 := yyvsp2 -2
	yyvsp16 := yyvsp16 -1
	yyvsp69 := yyvsp69 -1
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp110 >= yyvsc110 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs110")
		end
		yyvsc110 := yyvsc110 + yyInitial_yyvs_size
		yyvs110 := yyspecial_routines110.aliased_resized_area (yyvs110, yyvsc110)
	end
	yyspecial_routines110.force (yyvs110, yyval110, yyvsp110)
end
		end

	yy_do_action_321
			--|#line 2031 "et_eiffel_parser.y"
		local
			yyval108: ET_PROCEDURE
		do
--|#line 2031 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2031")
end

yyval108 := ast_factory.new_do_procedure (yyvs68.item (yyvsp68), Void, yyvs2.item (yyvsp2 - 1), yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs48.item (yyvsp48 - 1), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 11
	yyvsp108 := yyvsp108 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp2 := yyvsp2 -2
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp108 >= yyvsc108 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs108")
		end
		yyvsc108 := yyvsc108 + yyInitial_yyvs_size
		yyvs108 := yyspecial_routines108.aliased_resized_area (yyvs108, yyvsc108)
	end
	yyspecial_routines108.force (yyvs108, yyval108, yyvsp108)
end
		end

	yy_do_action_322
			--|#line 2034 "et_eiffel_parser.y"
		local
			yyval108: ET_PROCEDURE
		do
--|#line 2034 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2034")
end

yyval108 := ast_factory.new_do_procedure (yyvs68.item (yyvsp68), yyvs77.item (yyvsp77), yyvs2.item (yyvsp2 - 1), yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs48.item (yyvsp48 - 1), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 12
	yyvsp108 := yyvsp108 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp77 := yyvsp77 -1
	yyvsp2 := yyvsp2 -2
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp108 >= yyvsc108 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs108")
		end
		yyvsc108 := yyvsc108 + yyInitial_yyvs_size
		yyvs108 := yyspecial_routines108.aliased_resized_area (yyvs108, yyvsc108)
	end
	yyspecial_routines108.force (yyvs108, yyval108, yyvsp108)
end
		end

	yy_do_action_323
			--|#line 2038 "et_eiffel_parser.y"
		local
			yyval108: ET_PROCEDURE
		do
--|#line 2038 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2038")
end

yyval108 := ast_factory.new_once_procedure (yyvs68.item (yyvsp68), Void, yyvs2.item (yyvsp2 - 2), yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs99.item (yyvsp99), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs48.item (yyvsp48 - 1)), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 13
	yyvsp108 := yyvsp108 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp2 := yyvsp2 -3
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp99 := yyvsp99 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp108 >= yyvsc108 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs108")
		end
		yyvsc108 := yyvsc108 + yyInitial_yyvs_size
		yyvs108 := yyspecial_routines108.aliased_resized_area (yyvs108, yyvsc108)
	end
	yyspecial_routines108.force (yyvs108, yyval108, yyvsp108)
end
		end

	yy_do_action_324
			--|#line 2041 "et_eiffel_parser.y"
		local
			yyval108: ET_PROCEDURE
		do
--|#line 2041 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2041")
end

yyval108 := ast_factory.new_once_procedure (yyvs68.item (yyvsp68), yyvs77.item (yyvsp77), yyvs2.item (yyvsp2 - 2), yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs99.item (yyvsp99), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs48.item (yyvsp48 - 1)), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 14
	yyvsp108 := yyvsp108 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp77 := yyvsp77 -1
	yyvsp2 := yyvsp2 -3
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp99 := yyvsp99 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp108 >= yyvsc108 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs108")
		end
		yyvsc108 := yyvsc108 + yyInitial_yyvs_size
		yyvs108 := yyspecial_routines108.aliased_resized_area (yyvs108, yyvsc108)
	end
	yyspecial_routines108.force (yyvs108, yyval108, yyvsp108)
end
		end

	yy_do_action_325
			--|#line 2045 "et_eiffel_parser.y"
		local
			yyval108: ET_PROCEDURE
		do
--|#line 2045 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2045")
end

yyval108 := ast_factory.new_deferred_procedure (yyvs68.item (yyvsp68), Void, yyvs2.item (yyvsp2 - 2), yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), yyvs2.item (yyvsp2 - 1), yyvs106.item (yyvsp106), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 9
	yyvsp108 := yyvsp108 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp2 := yyvsp2 -3
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp108 >= yyvsc108 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs108")
		end
		yyvsc108 := yyvsc108 + yyInitial_yyvs_size
		yyvs108 := yyspecial_routines108.aliased_resized_area (yyvs108, yyvsc108)
	end
	yyspecial_routines108.force (yyvs108, yyval108, yyvsp108)
end
		end

	yy_do_action_326
			--|#line 2047 "et_eiffel_parser.y"
		local
			yyval108: ET_PROCEDURE
		do
--|#line 2047 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2047")
end

yyval108 := ast_factory.new_deferred_procedure (yyvs68.item (yyvsp68), yyvs77.item (yyvsp77), yyvs2.item (yyvsp2 - 2), yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), yyvs2.item (yyvsp2 - 1), yyvs106.item (yyvsp106), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 10
	yyvsp108 := yyvsp108 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp77 := yyvsp77 -1
	yyvsp2 := yyvsp2 -3
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp108 >= yyvsc108 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs108")
		end
		yyvsc108 := yyvsc108 + yyInitial_yyvs_size
		yyvs108 := yyspecial_routines108.aliased_resized_area (yyvs108, yyvsc108)
	end
	yyspecial_routines108.force (yyvs108, yyval108, yyvsp108)
end
		end

	yy_do_action_327
			--|#line 2050 "et_eiffel_parser.y"
		local
			yyval108: ET_PROCEDURE
		do
--|#line 2050 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2050")
end

yyval108 := new_external_procedure (yyvs68.item (yyvsp68), Void, yyvs2.item (yyvsp2 - 2), yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs16.item (yyvsp16)), yyvs69.item (yyvsp69), yyvs106.item (yyvsp106), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 11
	yyvsp108 := yyvsp108 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp2 := yyvsp2 -3
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp16 := yyvsp16 -1
	yyvsp69 := yyvsp69 -1
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp108 >= yyvsc108 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs108")
		end
		yyvsc108 := yyvsc108 + yyInitial_yyvs_size
		yyvs108 := yyspecial_routines108.aliased_resized_area (yyvs108, yyvsc108)
	end
	yyspecial_routines108.force (yyvs108, yyval108, yyvsp108)
end
		end

	yy_do_action_328
			--|#line 2053 "et_eiffel_parser.y"
		local
			yyval108: ET_PROCEDURE
		do
--|#line 2053 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2053")
end

yyval108 := new_external_procedure (yyvs68.item (yyvsp68), yyvs77.item (yyvsp77), yyvs2.item (yyvsp2 - 2), yyvs82.item (yyvsp82), yyvs101.item (yyvsp101), yyvs107.item (yyvsp107), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs16.item (yyvsp16)), yyvs69.item (yyvsp69), yyvs106.item (yyvsp106), yyvs2.item (yyvsp2), yyvs22.item (yyvsp22), last_clients, last_feature_clause, last_class) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 12
	yyvsp108 := yyvsp108 + 1
	yyvsp68 := yyvsp68 -1
	yyvsp77 := yyvsp77 -1
	yyvsp2 := yyvsp2 -3
	yyvsp82 := yyvsp82 -1
	yyvsp101 := yyvsp101 -1
	yyvsp107 := yyvsp107 -1
	yyvsp16 := yyvsp16 -1
	yyvsp69 := yyvsp69 -1
	yyvsp106 := yyvsp106 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp108 >= yyvsc108 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs108")
		end
		yyvsc108 := yyvsc108 + yyInitial_yyvs_size
		yyvs108 := yyspecial_routines108.aliased_resized_area (yyvs108, yyvsc108)
	end
	yyspecial_routines108.force (yyvs108, yyval108, yyvsp108)
end
		end

	yy_do_action_329
			--|#line 2059 "et_eiffel_parser.y"
		local
			yyval2: ET_KEYWORD
		do
--|#line 2059 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2059")
end

			if current_system.is_ise and then current_system.ise_version < ise_5_7_59914 then
				raise_error
			else
				yyval2 := Void
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp2 := yyvsp2 + 1
	if yyvsp2 >= yyvsc2 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs2")
		end
		yyvsc2 := yyvsc2 + yyInitial_yyvs_size
		yyvs2 := yyspecial_routines2.aliased_resized_area (yyvs2, yyvsc2)
	end
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
		end

	yy_do_action_330
			--|#line 2067 "et_eiffel_parser.y"
		local
			yyval2: ET_KEYWORD
		do
--|#line 2067 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2067")
end

yyval2 := yyvs2.item (yyvsp2) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines2.force (yyvs2, yyval2, yyvsp2)
end
		end

	yy_do_action_331
			--|#line 2071 "et_eiffel_parser.y"
		local
			yyval22: ET_SEMICOLON_SYMBOL
		do
--|#line 2071 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2071")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp22 := yyvsp22 + 1
	if yyvsp22 >= yyvsc22 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs22")
		end
		yyvsc22 := yyvsc22 + yyInitial_yyvs_size
		yyvs22 := yyspecial_routines22.aliased_resized_area (yyvs22, yyvsc22)
	end
	yyspecial_routines22.force (yyvs22, yyval22, yyvsp22)
end
		end

	yy_do_action_332
			--|#line 2073 "et_eiffel_parser.y"
		local
			yyval22: ET_SEMICOLON_SYMBOL
		do
--|#line 2073 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2073")
end

yyval22 := yyvs22.item (yyvsp22) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines22.force (yyvs22, yyval22, yyvsp22)
end
		end

	yy_do_action_333
			--|#line 2077 "et_eiffel_parser.y"
		local
			yyval69: ET_EXTERNAL_ALIAS
		do
--|#line 2077 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2077")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp69 := yyvsp69 + 1
	if yyvsp69 >= yyvsc69 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs69")
		end
		yyvsc69 := yyvsc69 + yyInitial_yyvs_size
		yyvs69 := yyspecial_routines69.aliased_resized_area (yyvs69, yyvsc69)
	end
	yyspecial_routines69.force (yyvs69, yyval69, yyvsp69)
end
		end

	yy_do_action_334
			--|#line 2079 "et_eiffel_parser.y"
		local
			yyval69: ET_EXTERNAL_ALIAS
		do
--|#line 2079 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2079")
end

yyval69 := ast_factory.new_external_alias (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp69 := yyvsp69 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp69 >= yyvsc69 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs69")
		end
		yyvsc69 := yyvsc69 + yyInitial_yyvs_size
		yyvs69 := yyspecial_routines69.aliased_resized_area (yyvs69, yyvsc69)
	end
	yyspecial_routines69.force (yyvs69, yyval69, yyvsp69)
end
		end

	yy_do_action_335
			--|#line 2083 "et_eiffel_parser.y"
		local
			yyval35: ET_ASSIGNER
		do
--|#line 2083 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2083")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp35 := yyvsp35 + 1
	if yyvsp35 >= yyvsc35 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs35")
		end
		yyvsc35 := yyvsc35 + yyInitial_yyvs_size
		yyvs35 := yyspecial_routines35.aliased_resized_area (yyvs35, yyvsc35)
	end
	yyspecial_routines35.force (yyvs35, yyval35, yyvsp35)
end
		end

	yy_do_action_336
			--|#line 2085 "et_eiffel_parser.y"
		local
			yyval35: ET_ASSIGNER
		do
--|#line 2085 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2085")
end

yyval35 := ast_factory.new_assigner (yyvs2.item (yyvsp2), yyvs73.item (yyvsp73)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp35 := yyvsp35 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp73 := yyvsp73 -1
	if yyvsp35 >= yyvsc35 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs35")
		end
		yyvsc35 := yyvsc35 + yyInitial_yyvs_size
		yyvs35 := yyspecial_routines35.aliased_resized_area (yyvs35, yyvsc35)
	end
	yyspecial_routines35.force (yyvs35, yyval35, yyvsp35)
end
		end

	yy_do_action_337
			--|#line 2091 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2091 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2091")
end

yyval73 := yyvs13.item (yyvsp13) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp73 := yyvsp73 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_338
			--|#line 2093 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2093 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2093")
end

yyval73 := ast_factory.new_prefix_not_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_339
			--|#line 2095 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2095 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2095")
end

yyval73 := ast_factory.new_prefix_plus_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_340
			--|#line 2097 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2097 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2097")
end

yyval73 := ast_factory.new_prefix_minus_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_341
			--|#line 2099 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2099 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2099")
end

yyval73 := ast_factory.new_prefix_free_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_342
			--|#line 2101 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2101 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2101")
end

yyval73 := ast_factory.new_infix_plus_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_343
			--|#line 2103 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2103 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2103")
end

yyval73 := ast_factory.new_infix_minus_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_344
			--|#line 2105 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2105 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2105")
end

yyval73 := ast_factory.new_infix_times_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_345
			--|#line 2107 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2107 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2107")
end

yyval73 := ast_factory.new_infix_divide_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_346
			--|#line 2109 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2109 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2109")
end

yyval73 := ast_factory.new_infix_div_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_347
			--|#line 2111 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2111 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2111")
end

yyval73 := ast_factory.new_infix_mod_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_348
			--|#line 2113 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2113 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2113")
end

yyval73 := ast_factory.new_infix_power_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_349
			--|#line 2115 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2115 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2115")
end

yyval73 := ast_factory.new_infix_lt_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_350
			--|#line 2117 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2117 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2117")
end

yyval73 := ast_factory.new_infix_le_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_351
			--|#line 2119 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2119 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2119")
end

yyval73 := ast_factory.new_infix_gt_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_352
			--|#line 2121 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2121 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2121")
end

yyval73 := ast_factory.new_infix_ge_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_353
			--|#line 2123 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2123 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2123")
end

yyval73 := ast_factory.new_infix_and_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_354
			--|#line 2125 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2125 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2125")
end

yyval73 := ast_factory.new_infix_and_then_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_355
			--|#line 2127 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2127 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2127")
end

yyval73 := ast_factory.new_infix_or_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_356
			--|#line 2129 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2129 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2129")
end

yyval73 := ast_factory.new_infix_or_else_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_357
			--|#line 2131 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2131 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2131")
end

yyval73 := ast_factory.new_infix_implies_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_358
			--|#line 2133 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2133 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2133")
end

yyval73 := ast_factory.new_infix_xor_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_359
			--|#line 2135 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2135 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2135")
end

yyval73 := ast_factory.new_infix_free_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_360
			--|#line 2138 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2138 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2138")
end

yyval73 := new_invalid_prefix_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_361
			--|#line 2140 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2140 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2140")
end

yyval73 := new_invalid_prefix_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_362
			--|#line 2142 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2142 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2142")
end

yyval73 := new_invalid_prefix_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_363
			--|#line 2144 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2144 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2144")
end

yyval73 := new_invalid_prefix_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_364
			--|#line 2146 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2146 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2146")
end

yyval73 := new_invalid_prefix_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_365
			--|#line 2148 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2148 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2148")
end

yyval73 := new_invalid_prefix_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_366
			--|#line 2150 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2150 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2150")
end

yyval73 := new_invalid_prefix_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_367
			--|#line 2152 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2152 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2152")
end

yyval73 := new_invalid_prefix_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_368
			--|#line 2154 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2154 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2154")
end

yyval73 := new_invalid_prefix_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_369
			--|#line 2156 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2156 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2156")
end

yyval73 := new_invalid_prefix_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_370
			--|#line 2158 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2158 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2158")
end

yyval73 := new_invalid_prefix_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_371
			--|#line 2160 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2160 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2160")
end

yyval73 := new_invalid_prefix_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_372
			--|#line 2162 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2162 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2162")
end

yyval73 := new_invalid_prefix_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_373
			--|#line 2164 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2164 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2164")
end

yyval73 := new_invalid_prefix_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_374
			--|#line 2166 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2166 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2166")
end

yyval73 := new_invalid_prefix_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_375
			--|#line 2168 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2168 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2168")
end

yyval73 := new_invalid_prefix_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_376
			--|#line 2170 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2170 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2170")
end

yyval73 := new_invalid_infix_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_377
			--|#line 2172 "et_eiffel_parser.y"
		local
			yyval73: ET_FEATURE_NAME
		do
--|#line 2172 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2172")
end

yyval73 := new_invalid_infix_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp73 := yyvsp73 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp73 >= yyvsc73 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs73")
		end
		yyvsc73 := yyvsc73 + yyInitial_yyvs_size
		yyvs73 := yyspecial_routines73.aliased_resized_area (yyvs73, yyvsc73)
	end
	yyspecial_routines73.force (yyvs73, yyval73, yyvsp73)
end
		end

	yy_do_action_378
			--|#line 2176 "et_eiffel_parser.y"
		local
			yyval68: ET_EXTENDED_FEATURE_NAME
		do
--|#line 2176 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2176")
end

yyval68 := yyvs73.item (yyvsp73) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp68 := yyvsp68 + 1
	yyvsp73 := yyvsp73 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_379
			--|#line 2178 "et_eiffel_parser.y"
		local
			yyval68: ET_EXTENDED_FEATURE_NAME
		do
--|#line 2178 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2178")
end

yyval68 := ast_factory.new_aliased_feature_name (yyvs13.item (yyvsp13), yyvs34.item (yyvsp34)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp68 := yyvsp68 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp34 := yyvsp34 -1
	if yyvsp68 >= yyvsc68 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs68")
		end
		yyvsc68 := yyvsc68 + yyInitial_yyvs_size
		yyvs68 := yyspecial_routines68.aliased_resized_area (yyvs68, yyvsc68)
	end
	yyspecial_routines68.force (yyvs68, yyval68, yyvsp68)
end
		end

	yy_do_action_380
			--|#line 2182 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2182 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2182")
end

yyval34 := ast_factory.new_alias_not_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_381
			--|#line 2184 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2184 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2184")
end

yyval34 := ast_factory.new_alias_plus_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_382
			--|#line 2186 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2186 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2186")
end

yyval34 := ast_factory.new_alias_minus_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_383
			--|#line 2188 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2188 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2188")
end

yyval34 := ast_factory.new_alias_times_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_384
			--|#line 2190 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2190 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2190")
end

yyval34 := ast_factory.new_alias_divide_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_385
			--|#line 2192 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2192 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2192")
end

yyval34 := ast_factory.new_alias_div_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_386
			--|#line 2194 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2194 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2194")
end

yyval34 := ast_factory.new_alias_mod_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_387
			--|#line 2196 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2196 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2196")
end

yyval34 := ast_factory.new_alias_power_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_388
			--|#line 2198 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2198 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2198")
end

yyval34 := ast_factory.new_alias_lt_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_389
			--|#line 2200 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2200 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2200")
end

yyval34 := ast_factory.new_alias_le_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_390
			--|#line 2202 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2202 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2202")
end

yyval34 := ast_factory.new_alias_gt_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_391
			--|#line 2204 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2204 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2204")
end

yyval34 := ast_factory.new_alias_ge_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_392
			--|#line 2206 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2206 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2206")
end

yyval34 := ast_factory.new_alias_and_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_393
			--|#line 2208 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2208 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2208")
end

yyval34 := ast_factory.new_alias_and_then_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_394
			--|#line 2210 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2210 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2210")
end

yyval34 := ast_factory.new_alias_or_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_395
			--|#line 2212 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2212 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2212")
end

yyval34 := ast_factory.new_alias_or_else_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_396
			--|#line 2214 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2214 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2214")
end

yyval34 := ast_factory.new_alias_implies_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_397
			--|#line 2216 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2216 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2216")
end

yyval34 := ast_factory.new_alias_xor_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_398
			--|#line 2218 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2218 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2218")
end

yyval34 := ast_factory.new_alias_dotdot_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_399
			--|#line 2220 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2220 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2220")
end

yyval34 := ast_factory.new_alias_free_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_400
			--|#line 2222 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2222 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2222")
end

yyval34 := ast_factory.new_alias_bracket_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_401
			--|#line 2225 "et_eiffel_parser.y"
		local
			yyval34: ET_ALIAS_NAME
		do
--|#line 2225 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2225")
end

yyval34 := new_invalid_alias_name (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp34 := yyvsp34 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp34 >= yyvsc34 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs34")
		end
		yyvsc34 := yyvsc34 + yyInitial_yyvs_size
		yyvs34 := yyspecial_routines34.aliased_resized_area (yyvs34, yyvsc34)
	end
	yyspecial_routines34.force (yyvs34, yyval34, yyvsp34)
end
		end

	yy_do_action_402
			--|#line 2231 "et_eiffel_parser.y"
		local
			yyval77: ET_FORMAL_ARGUMENT_LIST
		do
--|#line 2231 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2231")
end

			yyval77 := yyvs77.item (yyvsp77)
			set_start_closure (yyval77)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines77.force (yyvs77, yyval77, yyvsp77)
end
		end

	yy_do_action_403
			--|#line 2238 "et_eiffel_parser.y"
		local
			yyval77: ET_FORMAL_ARGUMENT_LIST
		do
--|#line 2238 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2238")
end

yyval77 := new_formal_arguments (yyvs5.item (yyvsp5 - 1), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp77 := yyvsp77 + 1
	yyvsp5 := yyvsp5 -2
	if yyvsp77 >= yyvsc77 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs77")
		end
		yyvsc77 := yyvsc77 + yyInitial_yyvs_size
		yyvs77 := yyspecial_routines77.aliased_resized_area (yyvs77, yyvsc77)
	end
	yyspecial_routines77.force (yyvs77, yyval77, yyvsp77)
end
		end

	yy_do_action_404
			--|#line 2240 "et_eiffel_parser.y"
		local
			yyval77: ET_FORMAL_ARGUMENT_LIST
		do
--|#line 2240 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2240")
end

			yyval77 := yyvs77.item (yyvsp77)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp5 := yyvsp5 -1
	yyspecial_routines77.force (yyvs77, yyval77, yyvsp77)
end
		end

	yy_do_action_405
			--|#line 2248 "et_eiffel_parser.y"
		local
			yyval5: ET_SYMBOL
		do
--|#line 2248 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2248")
end

			-- Needed to solve ambiguity when parsing:
			--   agent (a).f
			--   agent (a: A) do ... end
			yyval5 := yyvs5.item (yyvsp5)
			add_symbol (yyval5)
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines5.force (yyvs5, yyval5, yyvsp5)
end
		end

	yy_do_action_406
			--|#line 2259 "et_eiffel_parser.y"
		local
			yyval77: ET_FORMAL_ARGUMENT_LIST
		do
--|#line 2259 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2259")
end

			yyval77 := new_formal_arguments (last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval77 /= Void and yyvs76.item (yyvsp76) /= Void then
				yyval77.put_first (yyvs76.item (yyvsp76))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp77 := yyvsp77 + 1
	yyvsp76 := yyvsp76 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp77 >= yyvsc77 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs77")
		end
		yyvsc77 := yyvsc77 + yyInitial_yyvs_size
		yyvs77 := yyspecial_routines77.aliased_resized_area (yyvs77, yyvsc77)
	end
	yyspecial_routines77.force (yyvs77, yyval77, yyvsp77)
end
		end

	yy_do_action_407
			--|#line 2266 "et_eiffel_parser.y"
		local
			yyval77: ET_FORMAL_ARGUMENT_LIST
		do
--|#line 2266 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2266")
end

			yyval77 := new_formal_arguments (last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval77 /= Void and yyvs76.item (yyvsp76) /= Void then
				yyval77.put_first (yyvs76.item (yyvsp76))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp77 := yyvsp77 + 1
	yyvsp76 := yyvsp76 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp77 >= yyvsc77 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs77")
		end
		yyvsc77 := yyvsc77 + yyInitial_yyvs_size
		yyvs77 := yyspecial_routines77.aliased_resized_area (yyvs77, yyvsc77)
	end
	yyspecial_routines77.force (yyvs77, yyval77, yyvsp77)
end
		end

	yy_do_action_408
			--|#line 2273 "et_eiffel_parser.y"
		local
			yyval77: ET_FORMAL_ARGUMENT_LIST
		do
--|#line 2273 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2273")
end

			yyval77 := yyvs77.item (yyvsp77)
			if yyval77 /= Void and yyvs75.item (yyvsp75) /= Void then
				if not yyval77.is_empty then
					yyvs75.item (yyvsp75).set_declared_type (yyval77.first.type)
					yyval77.put_first (yyvs75.item (yyvsp75))
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp75 := yyvsp75 -1
	yyspecial_routines77.force (yyvs77, yyval77, yyvsp77)
end
		end

	yy_do_action_409
			--|#line 2283 "et_eiffel_parser.y"
		local
			yyval77: ET_FORMAL_ARGUMENT_LIST
		do
--|#line 2283 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2283")
end

			-- TODO: Syntax error
			yyval77 := yyvs77.item (yyvsp77)
			if yyval77 /= Void and yyvs75.item (yyvsp75) /= Void then
				if not yyval77.is_empty then
					yyvs75.item (yyvsp75).set_declared_type (yyval77.first.type)
					yyval77.put_first (yyvs75.item (yyvsp75))
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp75 := yyvsp75 -1
	yyspecial_routines77.force (yyvs77, yyval77, yyvsp77)
end
		end

	yy_do_action_410
			--|#line 2294 "et_eiffel_parser.y"
		local
			yyval77: ET_FORMAL_ARGUMENT_LIST
		do
--|#line 2294 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2294")
end

			yyval77 := yyvs77.item (yyvsp77)
			if yyval77 /= Void and yyvs76.item (yyvsp76) /= Void then
				yyval77.put_first (yyvs76.item (yyvsp76))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp76 := yyvsp76 -1
	yyspecial_routines77.force (yyvs77, yyval77, yyvsp77)
end
		end

	yy_do_action_411
			--|#line 2301 "et_eiffel_parser.y"
		local
			yyval77: ET_FORMAL_ARGUMENT_LIST
		do
--|#line 2301 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2301")
end

			yyval77 := yyvs77.item (yyvsp77)
			if yyval77 /= Void and yyvs76.item (yyvsp76) /= Void then
				yyval77.put_first (yyvs76.item (yyvsp76))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp76 := yyvsp76 -1
	yyspecial_routines77.force (yyvs77, yyval77, yyvsp77)
end
		end

	yy_do_action_412
			--|#line 2310 "et_eiffel_parser.y"
		local
			yyval75: ET_FORMAL_ARGUMENT
		do
--|#line 2310 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2310")
end

			yyval75 := ast_factory.new_formal_comma_argument (ast_factory.new_argument_name_comma (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5)), dummy_type)
			if yyval75 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp75 := yyvsp75 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp75 >= yyvsc75 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs75")
		end
		yyvsc75 := yyvsc75 + yyInitial_yyvs_size
		yyvs75 := yyspecial_routines75.aliased_resized_area (yyvs75, yyvsc75)
	end
	yyspecial_routines75.force (yyvs75, yyval75, yyvsp75)
end
		end

	yy_do_action_413
			--|#line 2319 "et_eiffel_parser.y"
		local
			yyval75: ET_FORMAL_ARGUMENT
		do
--|#line 2319 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2319")
end

			yyval75 := ast_factory.new_formal_comma_argument (yyvs13.item (yyvsp13), dummy_type)
			if yyval75 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp75 := yyvsp75 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp75 >= yyvsc75 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs75")
		end
		yyvsc75 := yyvsc75 + yyInitial_yyvs_size
		yyvs75 := yyspecial_routines75.aliased_resized_area (yyvs75, yyvsc75)
	end
	yyspecial_routines75.force (yyvs75, yyval75, yyvsp75)
end
		end

	yy_do_action_414
			--|#line 2328 "et_eiffel_parser.y"
		local
			yyval76: ET_FORMAL_ARGUMENT_ITEM
		do
--|#line 2328 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2328")
end

			yyval76 := ast_factory.new_formal_argument (yyvs13.item (yyvsp13), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)))
			if yyval76 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp76 := yyvsp76 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	if yyvsp76 >= yyvsc76 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs76")
		end
		yyvsc76 := yyvsc76 + yyInitial_yyvs_size
		yyvs76 := yyspecial_routines76.aliased_resized_area (yyvs76, yyvsc76)
	end
	yyspecial_routines76.force (yyvs76, yyval76, yyvsp76)
end
		end

	yy_do_action_415
			--|#line 2337 "et_eiffel_parser.y"
		local
			yyval76: ET_FORMAL_ARGUMENT_ITEM
		do
--|#line 2337 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2337")
end

			yyval76 := ast_factory.new_formal_argument_semicolon (ast_factory.new_formal_argument (yyvs13.item (yyvsp13), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115))), yyvs22.item (yyvsp22))
			if yyval76 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp76 := yyvsp76 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp76 >= yyvsc76 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs76")
		end
		yyvsc76 := yyvsc76 + yyInitial_yyvs_size
		yyvs76 := yyspecial_routines76.aliased_resized_area (yyvs76, yyvsc76)
	end
	yyspecial_routines76.force (yyvs76, yyval76, yyvsp76)
end
		end

	yy_do_action_416
			--|#line 2348 "et_eiffel_parser.y"
		local
			yyval95: ET_LOCAL_VARIABLE_LIST
		do
--|#line 2348 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2348")
end

yyval95 := Void 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp95 := yyvsp95 + 1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_417
			--|#line 2350 "et_eiffel_parser.y"
		local
			yyval95: ET_LOCAL_VARIABLE_LIST
		do
--|#line 2350 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2350")
end

yyval95 := new_local_variables (yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp95 := yyvsp95 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_418
			--|#line 2352 "et_eiffel_parser.y"
		local
			yyval95: ET_LOCAL_VARIABLE_LIST
		do
--|#line 2352 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2352")
end

			yyval95 := yyvs95.item (yyvsp95)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp95 := yyvsp95 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_419
			--|#line 2352 "et_eiffel_parser.y"
		local
			yyval95: ET_LOCAL_VARIABLE_LIST
		do
--|#line 2352 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2352")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp95 := yyvsp95 + 1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_420
			--|#line 2365 "et_eiffel_parser.y"
		local
			yyval95: ET_LOCAL_VARIABLE_LIST
		do
--|#line 2365 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2365")
end

			yyval95 := new_local_variables (last_keyword, counter_value)
			if yyvs94.item (yyvsp94) /= Void then
				yyval95.put_first (yyvs94.item (yyvsp94))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp95 := yyvsp95 + 1
	yyvsp94 := yyvsp94 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_421
			--|#line 2372 "et_eiffel_parser.y"
		local
			yyval95: ET_LOCAL_VARIABLE_LIST
		do
--|#line 2372 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2372")
end

			yyval95 := new_local_variables (last_keyword, counter_value)
			if yyvs94.item (yyvsp94) /= Void then
				yyval95.put_first (yyvs94.item (yyvsp94))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp95 := yyvsp95 + 1
	yyvsp94 := yyvsp94 -1
	if yyvsp95 >= yyvsc95 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs95")
		end
		yyvsc95 := yyvsc95 + yyInitial_yyvs_size
		yyvs95 := yyspecial_routines95.aliased_resized_area (yyvs95, yyvsc95)
	end
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_422
			--|#line 2379 "et_eiffel_parser.y"
		local
			yyval95: ET_LOCAL_VARIABLE_LIST
		do
--|#line 2379 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2379")
end

			yyval95 := yyvs95.item (yyvsp95)
			if yyval95 /= Void and yyvs93.item (yyvsp93) /= Void then
				if not yyval95.is_empty then
					yyvs93.item (yyvsp93).set_declared_type (yyval95.first.type)
					yyval95.put_first (yyvs93.item (yyvsp93))
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp93 := yyvsp93 -1
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_423
			--|#line 2389 "et_eiffel_parser.y"
		local
			yyval95: ET_LOCAL_VARIABLE_LIST
		do
--|#line 2389 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2389")
end

			-- TODO: Syntax error
			yyval95 := yyvs95.item (yyvsp95)
			if yyval95 /= Void and yyvs93.item (yyvsp93) /= Void then
				if not yyval95.is_empty then
					yyvs93.item (yyvsp93).set_declared_type (yyval95.first.type)
					yyval95.put_first (yyvs93.item (yyvsp93))
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp93 := yyvsp93 -1
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_424
			--|#line 2400 "et_eiffel_parser.y"
		local
			yyval95: ET_LOCAL_VARIABLE_LIST
		do
--|#line 2400 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2400")
end

			yyval95 := yyvs95.item (yyvsp95)
			if yyval95 /= Void and yyvs94.item (yyvsp94) /= Void then
				yyval95.put_first (yyvs94.item (yyvsp94))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp94 := yyvsp94 -1
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_425
			--|#line 2407 "et_eiffel_parser.y"
		local
			yyval95: ET_LOCAL_VARIABLE_LIST
		do
--|#line 2407 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2407")
end

			yyval95 := yyvs95.item (yyvsp95)
			if yyval95 /= Void and yyvs94.item (yyvsp94) /= Void then
				yyval95.put_first (yyvs94.item (yyvsp94))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp94 := yyvsp94 -1
	yyspecial_routines95.force (yyvs95, yyval95, yyvsp95)
end
		end

	yy_do_action_426
			--|#line 2416 "et_eiffel_parser.y"
		local
			yyval93: ET_LOCAL_VARIABLE
		do
--|#line 2416 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2416")
end

			yyval93 := ast_factory.new_local_comma_variable (ast_factory.new_local_name_comma (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5)), dummy_type)
			if yyval93 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp93 := yyvsp93 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp93 >= yyvsc93 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs93")
		end
		yyvsc93 := yyvsc93 + yyInitial_yyvs_size
		yyvs93 := yyspecial_routines93.aliased_resized_area (yyvs93, yyvsc93)
	end
	yyspecial_routines93.force (yyvs93, yyval93, yyvsp93)
end
		end

	yy_do_action_427
			--|#line 2425 "et_eiffel_parser.y"
		local
			yyval93: ET_LOCAL_VARIABLE
		do
--|#line 2425 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2425")
end

			yyval93 := ast_factory.new_local_comma_variable (yyvs13.item (yyvsp13), dummy_type)
			if yyval93 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp93 := yyvsp93 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp93 >= yyvsc93 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs93")
		end
		yyvsc93 := yyvsc93 + yyInitial_yyvs_size
		yyvs93 := yyspecial_routines93.aliased_resized_area (yyvs93, yyvsc93)
	end
	yyspecial_routines93.force (yyvs93, yyval93, yyvsp93)
end
		end

	yy_do_action_428
			--|#line 2434 "et_eiffel_parser.y"
		local
			yyval94: ET_LOCAL_VARIABLE_ITEM
		do
--|#line 2434 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2434")
end

			yyval94 := ast_factory.new_local_variable (yyvs13.item (yyvsp13), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)))
			if yyval94 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp94 := yyvsp94 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	if yyvsp94 >= yyvsc94 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs94")
		end
		yyvsc94 := yyvsc94 + yyInitial_yyvs_size
		yyvs94 := yyspecial_routines94.aliased_resized_area (yyvs94, yyvsc94)
	end
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_429
			--|#line 2443 "et_eiffel_parser.y"
		local
			yyval94: ET_LOCAL_VARIABLE_ITEM
		do
--|#line 2443 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2443")
end

			yyval94 := ast_factory.new_local_variable_semicolon (ast_factory.new_local_variable (yyvs13.item (yyvsp13), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115))), yyvs22.item (yyvsp22))
			if yyval94 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp94 := yyvsp94 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp94 >= yyvsc94 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs94")
		end
		yyvsc94 := yyvsc94 + yyInitial_yyvs_size
		yyvs94 := yyspecial_routines94.aliased_resized_area (yyvs94, yyvsc94)
	end
	yyspecial_routines94.force (yyvs94, yyval94, yyvsp94)
end
		end

	yy_do_action_430
			--|#line 2454 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2454 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2454")
end

add_expression_assertion (yyvs66.item (yyvsp66), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp66 := yyvsp66 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_431
			--|#line 2456 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2456 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2456")
end

add_expression_assertion (yyvs66.item (yyvsp66), yyvs22.item (yyvsp22)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 + 1
	yyvsp66 := yyvsp66 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_432
			--|#line 2458 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2458 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2458")
end

add_tagged_assertion (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_433
			--|#line 2460 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2460 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2460")
end

add_tagged_assertion (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5), yyvs22.item (yyvsp22)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp1 := yyvsp1 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_434
			--|#line 2462 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2462 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2462")
end

add_expression_assertion (yyvs66.item (yyvsp66), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp66 := yyvsp66 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_435
			--|#line 2464 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2464 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2464")
end

add_expression_assertion (yyvs66.item (yyvsp66), yyvs22.item (yyvsp22)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp22 := yyvsp22 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_436
			--|#line 2466 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2466 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2466")
end

add_tagged_assertion (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_437
			--|#line 2468 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2468 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2468")
end

add_tagged_assertion (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5), yyvs22.item (yyvsp22)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp22 := yyvsp22 -1
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_438
			--|#line 2472 "et_eiffel_parser.y"
		local
			yyval107: ET_PRECONDITIONS
		do
--|#line 2472 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2472")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp107 := yyvsp107 + 1
	if yyvsp107 >= yyvsc107 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs107")
		end
		yyvsc107 := yyvsc107 + yyInitial_yyvs_size
		yyvs107 := yyspecial_routines107.aliased_resized_area (yyvs107, yyvsc107)
	end
	yyspecial_routines107.force (yyvs107, yyval107, yyvsp107)
end
		end

	yy_do_action_439
			--|#line 2474 "et_eiffel_parser.y"
		local
			yyval107: ET_PRECONDITIONS
		do
--|#line 2474 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2474")
end

yyval107 := new_preconditions (yyvs2.item (yyvsp2), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp107 := yyvsp107 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp107 >= yyvsc107 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs107")
		end
		yyvsc107 := yyvsc107 + yyInitial_yyvs_size
		yyvs107 := yyspecial_routines107.aliased_resized_area (yyvs107, yyvsc107)
	end
	yyspecial_routines107.force (yyvs107, yyval107, yyvsp107)
end
		end

	yy_do_action_440
			--|#line 2476 "et_eiffel_parser.y"
		local
			yyval107: ET_PRECONDITIONS
		do
--|#line 2476 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2476")
end

yyval107 := new_preconditions (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp107 := yyvsp107 + 1
	yyvsp2 := yyvsp2 -2
	if yyvsp107 >= yyvsc107 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs107")
		end
		yyvsc107 := yyvsc107 + yyInitial_yyvs_size
		yyvs107 := yyspecial_routines107.aliased_resized_area (yyvs107, yyvsc107)
	end
	yyspecial_routines107.force (yyvs107, yyval107, yyvsp107)
end
		end

	yy_do_action_441
			--|#line 2478 "et_eiffel_parser.y"
		local
			yyval107: ET_PRECONDITIONS
		do
--|#line 2478 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2478")
end

yyval107 := new_preconditions (yyvs2.item (yyvsp2), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp107 := yyvsp107 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -1
	if yyvsp107 >= yyvsc107 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs107")
		end
		yyvsc107 := yyvsc107 + yyInitial_yyvs_size
		yyvs107 := yyspecial_routines107.aliased_resized_area (yyvs107, yyvsc107)
	end
	yyspecial_routines107.force (yyvs107, yyval107, yyvsp107)
end
		end

	yy_do_action_442
			--|#line 2480 "et_eiffel_parser.y"
		local
			yyval107: ET_PRECONDITIONS
		do
--|#line 2480 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2480")
end

yyval107 := new_preconditions (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp107 := yyvsp107 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp107 >= yyvsc107 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs107")
		end
		yyvsc107 := yyvsc107 + yyInitial_yyvs_size
		yyvs107 := yyspecial_routines107.aliased_resized_area (yyvs107, yyvsc107)
	end
	yyspecial_routines107.force (yyvs107, yyval107, yyvsp107)
end
		end

	yy_do_action_443
			--|#line 2484 "et_eiffel_parser.y"
		local
			yyval106: ET_POSTCONDITIONS
		do
--|#line 2484 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2484")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp106 := yyvsp106 + 1
	if yyvsp106 >= yyvsc106 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs106")
		end
		yyvsc106 := yyvsc106 + yyInitial_yyvs_size
		yyvs106 := yyspecial_routines106.aliased_resized_area (yyvs106, yyvsc106)
	end
	yyspecial_routines106.force (yyvs106, yyval106, yyvsp106)
end
		end

	yy_do_action_444
			--|#line 2486 "et_eiffel_parser.y"
		local
			yyval106: ET_POSTCONDITIONS
		do
--|#line 2486 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2486")
end

yyval106 := new_postconditions (yyvs2.item (yyvsp2), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp106 := yyvsp106 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp106 >= yyvsc106 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs106")
		end
		yyvsc106 := yyvsc106 + yyInitial_yyvs_size
		yyvs106 := yyspecial_routines106.aliased_resized_area (yyvs106, yyvsc106)
	end
	yyspecial_routines106.force (yyvs106, yyval106, yyvsp106)
end
		end

	yy_do_action_445
			--|#line 2488 "et_eiffel_parser.y"
		local
			yyval106: ET_POSTCONDITIONS
		do
--|#line 2488 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2488")
end

yyval106 := new_postconditions (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp106 := yyvsp106 + 1
	yyvsp2 := yyvsp2 -2
	if yyvsp106 >= yyvsc106 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs106")
		end
		yyvsc106 := yyvsc106 + yyInitial_yyvs_size
		yyvs106 := yyspecial_routines106.aliased_resized_area (yyvs106, yyvsc106)
	end
	yyspecial_routines106.force (yyvs106, yyval106, yyvsp106)
end
		end

	yy_do_action_446
			--|#line 2490 "et_eiffel_parser.y"
		local
			yyval106: ET_POSTCONDITIONS
		do
--|#line 2490 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2490")
end

yyval106 := new_postconditions (yyvs2.item (yyvsp2), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp106 := yyvsp106 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -1
	if yyvsp106 >= yyvsc106 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs106")
		end
		yyvsc106 := yyvsc106 + yyInitial_yyvs_size
		yyvs106 := yyspecial_routines106.aliased_resized_area (yyvs106, yyvsc106)
	end
	yyspecial_routines106.force (yyvs106, yyval106, yyvsp106)
end
		end

	yy_do_action_447
			--|#line 2492 "et_eiffel_parser.y"
		local
			yyval106: ET_POSTCONDITIONS
		do
--|#line 2492 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2492")
end

yyval106 := new_postconditions (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp106 := yyvsp106 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp106 >= yyvsc106 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs106")
		end
		yyvsc106 := yyvsc106 + yyInitial_yyvs_size
		yyvs106 := yyspecial_routines106.aliased_resized_area (yyvs106, yyvsc106)
	end
	yyspecial_routines106.force (yyvs106, yyval106, yyvsp106)
end
		end

	yy_do_action_448
			--|#line 2496 "et_eiffel_parser.y"
		local
			yyval90: ET_INVARIANTS
		do
--|#line 2496 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2496")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp90 := yyvsp90 + 1
	if yyvsp90 >= yyvsc90 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs90")
		end
		yyvsc90 := yyvsc90 + yyInitial_yyvs_size
		yyvs90 := yyspecial_routines90.aliased_resized_area (yyvs90, yyvsc90)
	end
	yyspecial_routines90.force (yyvs90, yyval90, yyvsp90)
end
		end

	yy_do_action_449
			--|#line 2498 "et_eiffel_parser.y"
		local
			yyval90: ET_INVARIANTS
		do
--|#line 2498 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2498")
end

yyval90 := yyvs90.item (yyvsp90) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines90.force (yyvs90, yyval90, yyvsp90)
end
		end

	yy_do_action_450
			--|#line 2502 "et_eiffel_parser.y"
		local
			yyval90: ET_INVARIANTS
		do
--|#line 2502 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2502")
end

yyval90 := new_invariants (yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp90 := yyvsp90 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -1
	if yyvsp90 >= yyvsc90 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs90")
		end
		yyvsc90 := yyvsc90 + yyInitial_yyvs_size
		yyvs90 := yyspecial_routines90.aliased_resized_area (yyvs90, yyvsc90)
	end
	yyspecial_routines90.force (yyvs90, yyval90, yyvsp90)
end
		end

	yy_do_action_451
			--|#line 2504 "et_eiffel_parser.y"
		local
			yyval90: ET_INVARIANTS
		do
--|#line 2504 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2504")
end

yyval90 := new_invariants (yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp90 := yyvsp90 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -2
	if yyvsp90 >= yyvsc90 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs90")
		end
		yyvsc90 := yyvsc90 + yyInitial_yyvs_size
		yyvs90 := yyspecial_routines90.aliased_resized_area (yyvs90, yyvsc90)
	end
	yyspecial_routines90.force (yyvs90, yyval90, yyvsp90)
end
		end

	yy_do_action_452
			--|#line 2508 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2508 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2508")
end

set_start_closure (Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_453
			--|#line 2512 "et_eiffel_parser.y"
		local
			yyval96: ET_LOOP_INVARIANTS
		do
--|#line 2512 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2512")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp96 := yyvsp96 + 1
	if yyvsp96 >= yyvsc96 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs96")
		end
		yyvsc96 := yyvsc96 + yyInitial_yyvs_size
		yyvs96 := yyspecial_routines96.aliased_resized_area (yyvs96, yyvsc96)
	end
	yyspecial_routines96.force (yyvs96, yyval96, yyvsp96)
end
		end

	yy_do_action_454
			--|#line 2514 "et_eiffel_parser.y"
		local
			yyval96: ET_LOOP_INVARIANTS
		do
--|#line 2514 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2514")
end

yyval96 := yyvs96.item (yyvsp96) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines96.force (yyvs96, yyval96, yyvsp96)
end
		end

	yy_do_action_455
			--|#line 2518 "et_eiffel_parser.y"
		local
			yyval96: ET_LOOP_INVARIANTS
		do
--|#line 2518 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2518")
end

yyval96 := new_loop_invariants (yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp96 := yyvsp96 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp96 >= yyvsc96 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs96")
		end
		yyvsc96 := yyvsc96 + yyInitial_yyvs_size
		yyvs96 := yyspecial_routines96.aliased_resized_area (yyvs96, yyvsc96)
	end
	yyspecial_routines96.force (yyvs96, yyval96, yyvsp96)
end
		end

	yy_do_action_456
			--|#line 2520 "et_eiffel_parser.y"
		local
			yyval96: ET_LOOP_INVARIANTS
		do
--|#line 2520 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2520")
end

yyval96 := new_loop_invariants (yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp96 := yyvsp96 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp1 := yyvsp1 -1
	if yyvsp96 >= yyvsc96 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs96")
		end
		yyvsc96 := yyvsc96 + yyInitial_yyvs_size
		yyvs96 := yyspecial_routines96.aliased_resized_area (yyvs96, yyvsc96)
	end
	yyspecial_routines96.force (yyvs96, yyval96, yyvsp96)
end
		end

	yy_do_action_457
			--|#line 2524 "et_eiffel_parser.y"
		local
			yyval118: ET_VARIANT
		do
--|#line 2524 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2524")
end

yyval118 := ast_factory.new_variant (yyvs2.item (yyvsp2), Void, yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp118 := yyvsp118 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp66 := yyvsp66 -1
	if yyvsp118 >= yyvsc118 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs118")
		end
		yyvsc118 := yyvsc118 + yyInitial_yyvs_size
		yyvs118 := yyspecial_routines118.aliased_resized_area (yyvs118, yyvsc118)
	end
	yyspecial_routines118.force (yyvs118, yyval118, yyvsp118)
end
		end

	yy_do_action_458
			--|#line 2526 "et_eiffel_parser.y"
		local
			yyval118: ET_VARIANT
		do
--|#line 2526 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2526")
end

yyval118 := ast_factory.new_variant (yyvs2.item (yyvsp2), ast_factory.new_tag (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5)), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp118 := yyvsp118 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp66 := yyvsp66 -1
	if yyvsp118 >= yyvsc118 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs118")
		end
		yyvsc118 := yyvsc118 + yyInitial_yyvs_size
		yyvs118 := yyspecial_routines118.aliased_resized_area (yyvs118, yyvsc118)
	end
	yyspecial_routines118.force (yyvs118, yyval118, yyvsp118)
end
		end

	yy_do_action_459
			--|#line 2530 "et_eiffel_parser.y"
		local
			yyval118: ET_VARIANT
		do
--|#line 2530 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2530")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp118 := yyvsp118 + 1
	if yyvsp118 >= yyvsc118 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs118")
		end
		yyvsc118 := yyvsc118 + yyInitial_yyvs_size
		yyvs118 := yyspecial_routines118.aliased_resized_area (yyvs118, yyvsc118)
	end
	yyspecial_routines118.force (yyvs118, yyval118, yyvsp118)
end
		end

	yy_do_action_460
			--|#line 2532 "et_eiffel_parser.y"
		local
			yyval118: ET_VARIANT
		do
--|#line 2532 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2532")
end

yyval118 := yyvs118.item (yyvsp118) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines118.force (yyvs118, yyval118, yyvsp118)
end
		end

	yy_do_action_461
			--|#line 2538 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 2538 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2538")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp48 := yyvsp48 + 1
	if yyvsp48 >= yyvsc48 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs48")
		end
		yyvsc48 := yyvsc48 + yyInitial_yyvs_size
		yyvs48 := yyspecial_routines48.aliased_resized_area (yyvs48, yyvsc48)
	end
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_462
			--|#line 2540 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 2540 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2540")
end

yyval48 := yyvs48.item (yyvsp48) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_463
			--|#line 2546 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2546 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2546")
end

yyval115 := new_named_type (Void, yyvs13.item (yyvsp13), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp115 := yyvsp115 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_464
			--|#line 2548 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2548 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2548")
end

yyval115 := yyvs115.item (yyvsp115) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_465
			--|#line 2552 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2552 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2552")
end

yyval115 := new_named_type (Void, yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp115 := yyvsp115 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_466
			--|#line 2554 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2554 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2554")
end

yyval115 := new_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_467
			--|#line 2556 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2556 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2556")
end

yyval115 := new_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_468
			--|#line 2558 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2558 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2558")
end

yyval115 := new_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_469
			--|#line 2560 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2560 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2560")
end

yyval115 := new_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_470
			--|#line 2562 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2562 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2562")
end

yyval115 := new_named_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_471
			--|#line 2564 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2564 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2564")
end

yyval115 := new_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_472
			--|#line 2566 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2566 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2566")
end

yyval115 := new_named_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_473
			--|#line 2568 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2568 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2568")
end

yyval115 := new_named_type (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_474
			--|#line 2570 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2570 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2570")
end

yyval115 := new_named_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_475
			--|#line 2572 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2572 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2572")
end

yyval115 := new_named_type (yyvs24.item (yyvsp24), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_476
			--|#line 2574 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2574 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2574")
end

yyval115 := new_named_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs24.item (yyvsp24), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_477
			--|#line 2576 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2576 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2576")
end

yyval115 := yyvs92.item (yyvsp92) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp115 := yyvsp115 + 1
	yyvsp92 := yyvsp92 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_478
			--|#line 2578 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2578 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2578")
end

yyval115 := new_bit_n (yyvs13.item (yyvsp13), yyvs14.item (yyvsp14)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp115 := yyvsp115 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp14 := yyvsp14 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_479
			--|#line 2580 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2580 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2580")
end

yyval115 := new_bit_feature (yyvs13.item (yyvsp13 - 1), yyvs13.item (yyvsp13))  
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp115 := yyvsp115 + 1
	yyvsp13 := yyvsp13 -2
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_480
			--|#line 2582 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2582 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2582")
end

yyval115 := new_tuple_type (Void, yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp115 := yyvsp115 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_481
			--|#line 2584 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2584 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2584")
end

yyval115 := new_tuple_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_482
			--|#line 2586 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2586 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2586")
end

yyval115 := new_tuple_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_483
			--|#line 2588 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2588 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2588")
end

yyval115 := new_tuple_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_484
			--|#line 2590 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2590 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2590")
end

yyval115 := new_tuple_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_485
			--|#line 2592 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2592 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2592")
end

yyval115 := new_tuple_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_486
			--|#line 2594 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2594 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2594")
end

yyval115 := new_tuple_type (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_487
			--|#line 2596 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2596 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2596")
end

yyval115 := new_tuple_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_488
			--|#line 2598 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2598 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2598")
end

yyval115 := new_tuple_type (yyvs24.item (yyvsp24), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_489
			--|#line 2600 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2600 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2600")
end

yyval115 := new_tuple_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs24.item (yyvsp24), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_490
			--|#line 2604 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2604 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2604")
end

yyval115 := new_named_type (Void, yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp115 := yyvsp115 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_491
			--|#line 2606 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2606 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2606")
end

yyval115 := new_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_492
			--|#line 2608 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2608 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2608")
end

yyval115 := new_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_493
			--|#line 2610 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2610 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2610")
end

yyval115 := new_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_494
			--|#line 2612 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2612 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2612")
end

yyval115 := new_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_495
			--|#line 2614 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2614 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2614")
end

yyval115 := new_named_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_496
			--|#line 2616 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2616 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2616")
end

yyval115 := new_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_497
			--|#line 2618 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2618 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2618")
end

yyval115 := new_named_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_498
			--|#line 2620 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2620 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2620")
end

yyval115 := new_named_type (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_499
			--|#line 2622 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2622 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2622")
end

yyval115 := new_named_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_500
			--|#line 2624 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2624 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2624")
end

yyval115 := new_named_type (yyvs24.item (yyvsp24), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_501
			--|#line 2626 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2626 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2626")
end

yyval115 := new_named_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs24.item (yyvsp24), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_502
			--|#line 2628 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2628 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2628")
end

yyval115 := yyvs92.item (yyvsp92) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp115 := yyvsp115 + 1
	yyvsp92 := yyvsp92 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_503
			--|#line 2630 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2630 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2630")
end

yyval115 := new_bit_n (yyvs13.item (yyvsp13), yyvs14.item (yyvsp14)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp115 := yyvsp115 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp14 := yyvsp14 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_504
			--|#line 2632 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2632 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2632")
end

yyval115 := new_bit_feature (yyvs13.item (yyvsp13 - 1), yyvs13.item (yyvsp13))  
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp115 := yyvsp115 + 1
	yyvsp13 := yyvsp13 -2
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_505
			--|#line 2634 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2634 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2634")
end

yyval115 := new_tuple_type (Void, yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp115 := yyvsp115 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_506
			--|#line 2636 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2636 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2636")
end

yyval115 := new_tuple_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_507
			--|#line 2638 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2638 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2638")
end

yyval115 := new_tuple_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_508
			--|#line 2640 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2640 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2640")
end

yyval115 := new_tuple_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_509
			--|#line 2642 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2642 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2642")
end

yyval115 := new_tuple_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_510
			--|#line 2644 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2644 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2644")
end

yyval115 := new_tuple_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_511
			--|#line 2646 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2646 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2646")
end

yyval115 := new_tuple_type (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_512
			--|#line 2648 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2648 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2648")
end

yyval115 := new_tuple_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_513
			--|#line 2650 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2650 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2650")
end

yyval115 := new_tuple_type (yyvs24.item (yyvsp24), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_514
			--|#line 2652 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2652 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2652")
end

yyval115 := new_tuple_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs24.item (yyvsp24), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_515
			--|#line 2656 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2656 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2656")
end

yyval115 := new_named_type (Void, yyvs13.item (yyvsp13), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp115 := yyvsp115 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_516
			--|#line 2658 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2658 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2658")
end

yyval115 := new_named_type (Void, yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp115 := yyvsp115 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_517
			--|#line 2660 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2660 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2660")
end

yyval115 := new_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_518
			--|#line 2662 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2662 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2662")
end

yyval115 := new_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_519
			--|#line 2664 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2664 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2664")
end

yyval115 := new_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_520
			--|#line 2666 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2666 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2666")
end

yyval115 := new_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_521
			--|#line 2668 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2668 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2668")
end

yyval115 := new_named_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_522
			--|#line 2670 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2670 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2670")
end

yyval115 := new_named_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_523
			--|#line 2672 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2672 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2672")
end

yyval115 := new_named_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_524
			--|#line 2674 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2674 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2674")
end

yyval115 := new_named_type (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_525
			--|#line 2676 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2676 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2676")
end

yyval115 := new_named_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_526
			--|#line 2678 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2678 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2678")
end

yyval115 := new_named_type (yyvs24.item (yyvsp24), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_527
			--|#line 2680 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2680 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2680")
end

yyval115 := new_named_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs24.item (yyvsp24), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_528
			--|#line 2682 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2682 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2682")
end

yyval115 := yyvs92.item (yyvsp92) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp115 := yyvsp115 + 1
	yyvsp92 := yyvsp92 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_529
			--|#line 2684 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2684 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2684")
end

yyval115 := new_bit_n (yyvs13.item (yyvsp13), yyvs14.item (yyvsp14)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp115 := yyvsp115 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp14 := yyvsp14 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_530
			--|#line 2686 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2686 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2686")
end

yyval115 := new_bit_feature (yyvs13.item (yyvsp13 - 1), yyvs13.item (yyvsp13))  
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp115 := yyvsp115 + 1
	yyvsp13 := yyvsp13 -2
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_531
			--|#line 2688 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2688 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2688")
end

yyval115 := new_tuple_type (Void, yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp115 := yyvsp115 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_532
			--|#line 2690 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2690 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2690")
end

yyval115 := new_tuple_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_533
			--|#line 2692 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2692 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2692")
end

yyval115 := new_tuple_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_534
			--|#line 2694 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2694 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2694")
end

yyval115 := new_tuple_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_535
			--|#line 2696 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2696 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2696")
end

yyval115 := new_tuple_type (yyvs2.item (yyvsp2), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_536
			--|#line 2698 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2698 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2698")
end

yyval115 := new_tuple_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_537
			--|#line 2700 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2700 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2700")
end

yyval115 := new_tuple_type (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_538
			--|#line 2702 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2702 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2702")
end

yyval115 := new_tuple_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_539
			--|#line 2704 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2704 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2704")
end

yyval115 := new_tuple_type (yyvs24.item (yyvsp24), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp115 := yyvsp115 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_540
			--|#line 2706 "et_eiffel_parser.y"
		local
			yyval115: ET_TYPE
		do
--|#line 2706 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2706")
end

yyval115 := new_tuple_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs24.item (yyvsp24), yyvs2.item (yyvsp2)), yyvs13.item (yyvsp13), yyvs29.item (yyvsp29)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp115 := yyvsp115 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	yyvsp29 := yyvsp29 -1
	if yyvsp115 >= yyvsc115 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs115")
		end
		yyvsc115 := yyvsc115 + yyInitial_yyvs_size
		yyvs115 := yyspecial_routines115.aliased_resized_area (yyvs115, yyvsc115)
	end
	yyspecial_routines115.force (yyvs115, yyval115, yyvsp115)
end
		end

	yy_do_action_541
			--|#line 2710 "et_eiffel_parser.y"
		local
			yyval13: ET_IDENTIFIER
		do
--|#line 2710 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2710")
end

yyval13 := yyvs13.item (yyvsp13) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines13.force (yyvs13, yyval13, yyvsp13)
end
		end

	yy_do_action_542
			--|#line 2714 "et_eiffel_parser.y"
		local
			yyval29: ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2714 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2714")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp29 := yyvsp29 + 1
	if yyvsp29 >= yyvsc29 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs29")
		end
		yyvsc29 := yyvsc29 + yyInitial_yyvs_size
		yyvs29 := yyspecial_routines29.aliased_resized_area (yyvs29, yyvsc29)
	end
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_543
			--|#line 2716 "et_eiffel_parser.y"
		local
			yyval29: ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2716 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2716")
end

yyval29 := yyvs29.item (yyvsp29) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_544
			--|#line 2720 "et_eiffel_parser.y"
		local
			yyval29: ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2720 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2720")
end

yyval29 := ast_factory.new_actual_parameters (yyvs23.item (yyvsp23), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp29 := yyvsp29 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp29 >= yyvsc29 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs29")
		end
		yyvsc29 := yyvsc29 + yyInitial_yyvs_size
		yyvs29 := yyspecial_routines29.aliased_resized_area (yyvs29, yyvsc29)
	end
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_545
			--|#line 2723 "et_eiffel_parser.y"
		local
			yyval29: ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2723 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2723")
end

			yyval29 := yyvs29.item (yyvsp29)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_546
			--|#line 2731 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2731 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2731")
end

			add_symbol (yyvs23.item (yyvsp23))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp1 := yyvsp1 + 1
	yyvsp23 := yyvsp23 -1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_547
			--|#line 2738 "et_eiffel_parser.y"
		local
			yyval29: ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2738 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2738")
end

			if yyvs115.item (yyvsp115) /= Void then
				yyval29 := ast_factory.new_actual_parameters (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval29 /= Void then
					yyval29.put_first (yyvs115.item (yyvsp115))
				end
			else
				yyval29 := ast_factory.new_actual_parameters (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp29 := yyvsp29 + 1
	yyvsp115 := yyvsp115 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp29 >= yyvsc29 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs29")
		end
		yyvsc29 := yyvsc29 + yyInitial_yyvs_size
		yyvs29 := yyspecial_routines29.aliased_resized_area (yyvs29, yyvsc29)
	end
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_548
			--|#line 2749 "et_eiffel_parser.y"
		local
			yyval29: ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2749 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2749")
end

			yyval29 := yyvs29.item (yyvsp29)
			add_to_actual_parameter_list (yyvs28.item (yyvsp28), yyval29)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp28 := yyvsp28 -1
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_549
			--|#line 2754 "et_eiffel_parser.y"
		local
			yyval29: ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2754 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2754")
end

			yyval29 := yyvs29.item (yyvsp29)
			add_to_actual_parameter_list (ast_factory.new_actual_parameter_comma (new_named_type (Void, yyvs13.item (yyvsp13), Void), yyvs5.item (yyvsp5)), yyval29)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_550
			--|#line 2759 "et_eiffel_parser.y"
		local
			yyval29: ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2759 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2759")
end

			yyval29 := yyvs29.item (yyvsp29)
			add_to_actual_parameter_list (ast_factory.new_actual_parameter_comma (new_tuple_type (Void, yyvs13.item (yyvsp13), Void), yyvs5.item (yyvsp5)), yyval29)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_551
			--|#line 2766 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 2766 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2766")
end

			increment_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_552
			--|#line 2772 "et_eiffel_parser.y"
		local
			yyval28: ET_ACTUAL_PARAMETER_ITEM
		do
--|#line 2772 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2772")
end

			yyval28 := ast_factory.new_actual_parameter_comma (yyvs115.item (yyvsp115), yyvs5.item (yyvsp5))
			if yyval28 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp28 := yyvsp28 + 1
	yyvsp115 := yyvsp115 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp28 >= yyvsc28 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs28")
		end
		yyvsc28 := yyvsc28 + yyInitial_yyvs_size
		yyvs28 := yyspecial_routines28.aliased_resized_area (yyvs28, yyvsc28)
	end
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_553
			--|#line 2781 "et_eiffel_parser.y"
		local
			yyval29: ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2781 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2781")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp29 := yyvsp29 + 1
	if yyvsp29 >= yyvsc29 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs29")
		end
		yyvsc29 := yyvsc29 + yyInitial_yyvs_size
		yyvs29 := yyspecial_routines29.aliased_resized_area (yyvs29, yyvsc29)
	end
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_554
			--|#line 2783 "et_eiffel_parser.y"
		local
			yyval29: ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2783 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2783")
end

yyval29 := yyvs29.item (yyvsp29) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_555
			--|#line 2787 "et_eiffel_parser.y"
		local
			yyval29: ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2787 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2787")
end

yyval29 := ast_factory.new_actual_parameters (yyvs23.item (yyvsp23), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp29 := yyvsp29 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp29 >= yyvsc29 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs29")
		end
		yyvsc29 := yyvsc29 + yyInitial_yyvs_size
		yyvs29 := yyspecial_routines29.aliased_resized_area (yyvs29, yyvsc29)
	end
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_556
			--|#line 2790 "et_eiffel_parser.y"
		local
			yyval29: ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2790 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2790")
end

			yyval29 := yyvs29.item (yyvsp29)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_557
			--|#line 2796 "et_eiffel_parser.y"
		local
			yyval29: ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2796 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2796")
end

			yyval29 := yyvs29.item (yyvsp29)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_558
			--|#line 2804 "et_eiffel_parser.y"
		local
			yyval29: ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2804 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2804")
end

			yyval29 := ast_factory.new_actual_parameters (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
			add_to_actual_parameter_list (ast_factory.new_labeled_actual_parameter (yyvs13.item (yyvsp13), ast_factory.new_colon_type (yyvs5.item (yyvsp5 - 1), yyvs115.item (yyvsp115))), yyval29)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp29 := yyvsp29 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -2
	yyvsp115 := yyvsp115 -1
	if yyvsp29 >= yyvsc29 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs29")
		end
		yyvsc29 := yyvsc29 + yyInitial_yyvs_size
		yyvs29 := yyspecial_routines29.aliased_resized_area (yyvs29, yyvsc29)
	end
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_559
			--|#line 2809 "et_eiffel_parser.y"
		local
			yyval29: ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2809 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2809")
end

			yyval29 := yyvs29.item (yyvsp29)
			add_to_actual_parameter_list (yyvs28.item (yyvsp28), yyvs29.item (yyvsp29))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp28 := yyvsp28 -1
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_560
			--|#line 2814 "et_eiffel_parser.y"
		local
			yyval29: ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2814 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2814")
end

			yyval29 := yyvs29.item (yyvsp29)
			add_to_actual_parameter_list (yyvs28.item (yyvsp28), yyvs29.item (yyvsp29))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp28 := yyvsp28 -1
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_561
			--|#line 2819 "et_eiffel_parser.y"
		local
			yyval29: ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2819 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2819")
end

			yyval29 := yyvs29.item (yyvsp29)
			if yyval29 /= Void then
				if not yyval29.is_empty then
					add_to_actual_parameter_list (ast_factory.new_labeled_comma_actual_parameter (ast_factory.new_label_comma (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5)), yyval29.first.type), yyval29)
				else
					add_to_actual_parameter_list (ast_factory.new_labeled_comma_actual_parameter (ast_factory.new_label_comma (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5)), Void), yyval29)
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_562
			--|#line 2830 "et_eiffel_parser.y"
		local
			yyval29: ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2830 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2830")
end

			yyval29 := yyvs29.item (yyvsp29)
			if yyval29 /= Void then
				if not yyval29.is_empty then
					add_to_actual_parameter_list (ast_factory.new_labeled_comma_actual_parameter (ast_factory.new_label_comma (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5)), yyval29.first.type), yyval29)
				else
					add_to_actual_parameter_list (ast_factory.new_labeled_comma_actual_parameter (ast_factory.new_label_comma (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5)), Void), yyval29)
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_563
			--|#line 2841 "et_eiffel_parser.y"
		local
			yyval29: ET_ACTUAL_PARAMETER_LIST
		do
--|#line 2841 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2841")
end

			yyval29 := yyvs29.item (yyvsp29)
			if yyval29 /= Void then
				if not yyval29.is_empty then
					add_to_actual_parameter_list (ast_factory.new_labeled_comma_actual_parameter (ast_factory.new_label_comma (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5)), yyval29.first.type), yyval29)
				else
					add_to_actual_parameter_list (ast_factory.new_labeled_comma_actual_parameter (ast_factory.new_label_comma (yyvs13.item (yyvsp13), yyvs5.item (yyvsp5)), Void), yyval29)
				end
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp1 := yyvsp1 -1
	yyspecial_routines29.force (yyvs29, yyval29, yyvsp29)
end
		end

	yy_do_action_564
			--|#line 2854 "et_eiffel_parser.y"
		local
			yyval28: ET_ACTUAL_PARAMETER_ITEM
		do
--|#line 2854 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2854")
end

			yyval28 := ast_factory.new_labeled_actual_parameter (yyvs13.item (yyvsp13), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)))
			if yyval28 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp28 := yyvsp28 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	if yyvsp28 >= yyvsc28 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs28")
		end
		yyvsc28 := yyvsc28 + yyInitial_yyvs_size
		yyvs28 := yyspecial_routines28.aliased_resized_area (yyvs28, yyvsc28)
	end
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_565
			--|#line 2863 "et_eiffel_parser.y"
		local
			yyval28: ET_ACTUAL_PARAMETER_ITEM
		do
--|#line 2863 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2863")
end

			yyval28 := ast_factory.new_labeled_actual_parameter_semicolon (ast_factory.new_labeled_actual_parameter (yyvs13.item (yyvsp13), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115))), yyvs22.item (yyvsp22))
			if yyval28 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp28 := yyvsp28 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp22 := yyvsp22 -1
	if yyvsp28 >= yyvsc28 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs28")
		end
		yyvsc28 := yyvsc28 + yyInitial_yyvs_size
		yyvs28 := yyspecial_routines28.aliased_resized_area (yyvs28, yyvsc28)
	end
	yyspecial_routines28.force (yyvs28, yyval28, yyvsp28)
end
		end

	yy_do_action_566
			--|#line 2872 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2872 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2872")
end

yyval92 := ast_factory.new_like_feature (Void, yyvs2.item (yyvsp2), yyvs13.item (yyvsp13)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp92 := yyvsp92 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_567
			--|#line 2874 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2874 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2874")
end

yyval92 := ast_factory.new_like_current (current_universe.implicit_attachment_type_mark, yyvs2.item (yyvsp2), yyvs11.item (yyvsp11)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp92 := yyvsp92 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp11 := yyvsp11 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_568
			--|#line 2876 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2876 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2876")
end

yyval92 := yyvs109.item (yyvsp109) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp92 := yyvsp92 + 1
	yyvsp109 := yyvsp109 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_569
			--|#line 2880 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2880 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2880")
end

yyval92 := ast_factory.new_like_feature (Void, yyvs2.item (yyvsp2), yyvs13.item (yyvsp13)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp92 := yyvsp92 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_570
			--|#line 2882 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2882 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2882")
end

yyval92 := ast_factory.new_like_feature (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs13.item (yyvsp13)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp92 := yyvsp92 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_571
			--|#line 2884 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2884 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2884")
end

yyval92 := ast_factory.new_like_feature (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs13.item (yyvsp13)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp92 := yyvsp92 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_572
			--|#line 2886 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2886 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2886")
end

yyval92 := ast_factory.new_like_feature (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 2), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs13.item (yyvsp13)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp92 := yyvsp92 + 1
	yyvsp2 := yyvsp2 -3
	yyvsp13 := yyvsp13 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_573
			--|#line 2888 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2888 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2888")
end

yyval92 := ast_factory.new_like_feature (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs13.item (yyvsp13)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp92 := yyvsp92 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_574
			--|#line 2890 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2890 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2890")
end

yyval92 := ast_factory.new_like_feature (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 2), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs13.item (yyvsp13)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp92 := yyvsp92 + 1
	yyvsp2 := yyvsp2 -3
	yyvsp13 := yyvsp13 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_575
			--|#line 2892 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2892 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2892")
end

yyval92 := ast_factory.new_like_feature (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2), yyvs13.item (yyvsp13)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp92 := yyvsp92 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_576
			--|#line 2894 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2894 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2894")
end

yyval92 := ast_factory.new_like_feature (ast_factory.new_attachment_symbol_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs13.item (yyvsp13)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp92 := yyvsp92 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_577
			--|#line 2896 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2896 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2896")
end

yyval92 := ast_factory.new_like_feature (yyvs24.item (yyvsp24), yyvs2.item (yyvsp2), yyvs13.item (yyvsp13)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp92 := yyvsp92 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp2 := yyvsp2 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_578
			--|#line 2898 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2898 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2898")
end

yyval92 := ast_factory.new_like_feature (ast_factory.new_attachment_symbol_separate_keyword (yyvs24.item (yyvsp24), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs13.item (yyvsp13)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp92 := yyvsp92 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_579
			--|#line 2900 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2900 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2900")
end

yyval92 := ast_factory.new_like_current (current_universe.implicit_attachment_type_mark, yyvs2.item (yyvsp2), yyvs11.item (yyvsp11)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp92 := yyvsp92 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp11 := yyvsp11 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_580
			--|#line 2902 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2902 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2902")
end

yyval92 := ast_factory.new_like_current (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs11.item (yyvsp11)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp92 := yyvsp92 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp11 := yyvsp11 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_581
			--|#line 2904 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2904 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2904")
end

yyval92 := ast_factory.new_like_current (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs11.item (yyvsp11)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp92 := yyvsp92 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp11 := yyvsp11 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_582
			--|#line 2906 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2906 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2906")
end

yyval92 := ast_factory.new_like_current (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 2), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs11.item (yyvsp11)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp92 := yyvsp92 + 1
	yyvsp2 := yyvsp2 -3
	yyvsp11 := yyvsp11 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_583
			--|#line 2908 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2908 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2908")
end

yyval92 := ast_factory.new_like_current (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs11.item (yyvsp11)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp92 := yyvsp92 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp11 := yyvsp11 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_584
			--|#line 2910 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2910 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2910")
end

yyval92 := ast_factory.new_like_current (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 2), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs11.item (yyvsp11)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp92 := yyvsp92 + 1
	yyvsp2 := yyvsp2 -3
	yyvsp11 := yyvsp11 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_585
			--|#line 2912 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2912 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2912")
end

yyval92 := ast_factory.new_like_current (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2), yyvs11.item (yyvsp11)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp92 := yyvsp92 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -1
	yyvsp11 := yyvsp11 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_586
			--|#line 2914 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2914 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2914")
end

yyval92 := ast_factory.new_like_current (ast_factory.new_attachment_symbol_separate_keyword (yyvs5.item (yyvsp5), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs11.item (yyvsp11)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp92 := yyvsp92 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp2 := yyvsp2 -2
	yyvsp11 := yyvsp11 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_587
			--|#line 2916 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2916 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2916")
end

yyval92 := ast_factory.new_like_current (yyvs24.item (yyvsp24), yyvs2.item (yyvsp2), yyvs11.item (yyvsp11)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp92 := yyvsp92 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp2 := yyvsp2 -1
	yyvsp11 := yyvsp11 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_588
			--|#line 2918 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2918 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2918")
end

yyval92 := ast_factory.new_like_current (ast_factory.new_attachment_symbol_separate_keyword (yyvs24.item (yyvsp24), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs11.item (yyvsp11)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp92 := yyvsp92 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp2 := yyvsp2 -2
	yyvsp11 := yyvsp11 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_589
			--|#line 2920 "et_eiffel_parser.y"
		local
			yyval92: ET_LIKE_TYPE
		do
--|#line 2920 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2920")
end

yyval92 := yyvs109.item (yyvsp109) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp92 := yyvsp92 + 1
	yyvsp109 := yyvsp109 -1
	if yyvsp92 >= yyvsc92 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs92")
		end
		yyvsc92 := yyvsc92 + yyInitial_yyvs_size
		yyvs92 := yyspecial_routines92.aliased_resized_area (yyvs92, yyvsc92)
	end
	yyspecial_routines92.force (yyvs92, yyval92, yyvsp92)
end
		end

	yy_do_action_590
			--|#line 2924 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2924 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2924")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_braced_type (Void, yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5 - 1), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp109 := yyvsp109 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp5 := yyvsp5 -3
	yyvsp115 := yyvsp115 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_591
			--|#line 2932 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2932 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2932")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_type (Void, yyvs92.item (yyvsp92), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp109 := yyvsp109 + 1
	yyvsp92 := yyvsp92 -1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_592
			--|#line 2942 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2942 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2942")
end

yyval109 := yyvs109.item (yyvsp109) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_593
			--|#line 2944 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2944 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2944")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_braced_type (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5 - 1), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp109 := yyvsp109 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp5 := yyvsp5 -3
	yyvsp115 := yyvsp115 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_594
			--|#line 2952 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2952 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2952")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_braced_type (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5 - 1), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp109 := yyvsp109 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp5 := yyvsp5 -3
	yyvsp115 := yyvsp115 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_595
			--|#line 2960 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2960 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2960")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_braced_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 2), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5 - 1), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp109 := yyvsp109 + 1
	yyvsp2 := yyvsp2 -3
	yyvsp5 := yyvsp5 -3
	yyvsp115 := yyvsp115 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_596
			--|#line 2968 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2968 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2968")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_braced_type (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5 - 1), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp109 := yyvsp109 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp5 := yyvsp5 -3
	yyvsp115 := yyvsp115 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_597
			--|#line 2976 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2976 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2976")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_braced_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 2), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5 - 1), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp109 := yyvsp109 + 1
	yyvsp2 := yyvsp2 -3
	yyvsp5 := yyvsp5 -3
	yyvsp115 := yyvsp115 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_598
			--|#line 2984 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2984 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2984")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			elseif current_system.is_ise and then current_system.ise_version < ise_6_1_0 then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_braced_type (yyvs5.item (yyvsp5 - 3), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5 - 1), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp109 := yyvsp109 + 1
	yyvsp5 := yyvsp5 -4
	yyvsp2 := yyvsp2 -1
	yyvsp115 := yyvsp115 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_599
			--|#line 2994 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 2994 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 2994")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			elseif current_system.is_ise and then current_system.ise_version < ise_6_1_0 then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_braced_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs5.item (yyvsp5 - 3), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5 - 1), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp109 := yyvsp109 + 1
	yyvsp5 := yyvsp5 -4
	yyvsp2 := yyvsp2 -2
	yyvsp115 := yyvsp115 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_600
			--|#line 3004 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 3004 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3004")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			elseif current_system.is_ise and then current_system.ise_version < ise_6_1_0 then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_braced_type (yyvs24.item (yyvsp24), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5 - 1), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp109 := yyvsp109 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp2 := yyvsp2 -1
	yyvsp5 := yyvsp5 -3
	yyvsp115 := yyvsp115 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_601
			--|#line 3014 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 3014 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3014")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			elseif current_system.is_ise and then current_system.ise_version < ise_6_1_0 then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_braced_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs24.item (yyvsp24), yyvs2.item (yyvsp2 - 1)), yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 2), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5 - 1), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp109 := yyvsp109 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp2 := yyvsp2 -2
	yyvsp5 := yyvsp5 -3
	yyvsp115 := yyvsp115 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_602
			--|#line 3024 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 3024 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3024")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_type (yyvs2.item (yyvsp2), yyvs92.item (yyvsp92), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp109 := yyvsp109 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp92 := yyvsp92 -1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_603
			--|#line 3032 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 3032 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3032")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_type (yyvs2.item (yyvsp2), yyvs92.item (yyvsp92), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp109 := yyvsp109 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp92 := yyvsp92 -1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_604
			--|#line 3040 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 3040 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3040")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs92.item (yyvsp92), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp109 := yyvsp109 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp92 := yyvsp92 -1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_605
			--|#line 3048 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 3048 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3048")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_type (yyvs2.item (yyvsp2), yyvs92.item (yyvsp92), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp109 := yyvsp109 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp92 := yyvsp92 -1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_606
			--|#line 3056 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 3056 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3056")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_type (ast_factory.new_attachment_separate_keywords (yyvs2.item (yyvsp2 - 1), yyvs2.item (yyvsp2)), yyvs92.item (yyvsp92), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp109 := yyvsp109 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp92 := yyvsp92 -1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_607
			--|#line 3064 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 3064 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3064")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_type (yyvs5.item (yyvsp5 - 1), yyvs92.item (yyvsp92), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp109 := yyvsp109 + 1
	yyvsp5 := yyvsp5 -2
	yyvsp92 := yyvsp92 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_608
			--|#line 3072 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 3072 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3072")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs5.item (yyvsp5 - 1), yyvs2.item (yyvsp2)), yyvs92.item (yyvsp92), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp109 := yyvsp109 + 1
	yyvsp5 := yyvsp5 -2
	yyvsp2 := yyvsp2 -1
	yyvsp92 := yyvsp92 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_609
			--|#line 3080 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 3080 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3080")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_type (yyvs24.item (yyvsp24), yyvs92.item (yyvsp92), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp109 := yyvsp109 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp92 := yyvsp92 -1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_610
			--|#line 3088 "et_eiffel_parser.y"
		local
			yyval109: ET_QUALIFIED_LIKE_IDENTIFIER
		do
--|#line 3088 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3088")
end

			if not current_system.qualified_anchored_types_enabled then
				raise_error
			else
				yyval109 := ast_factory.new_qualified_like_type (ast_factory.new_attachment_symbol_separate_keyword (yyvs24.item (yyvsp24), yyvs2.item (yyvsp2)), yyvs92.item (yyvsp92), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp109 := yyvsp109 + 1
	yyvsp24 := yyvsp24 -1
	yyvsp2 := yyvsp2 -1
	yyvsp92 := yyvsp92 -1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp109 >= yyvsc109 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs109")
		end
		yyvsc109 := yyvsc109 + yyInitial_yyvs_size
		yyvs109 := yyspecial_routines109.aliased_resized_area (yyvs109, yyvsc109)
	end
	yyspecial_routines109.force (yyvs109, yyval109, yyvsp109)
end
		end

	yy_do_action_611
			--|#line 3100 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 3100 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3100")
end

yyval48 := ast_factory.new_do_compound (yyvs2.item (yyvsp2), yyvs48.item (yyvsp48)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_612
			--|#line 3104 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 3104 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3104")
end

yyval48 := ast_factory.new_attribute_compound (yyvs2.item (yyvsp2), yyvs48.item (yyvsp48)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_613
			--|#line 3108 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 3108 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3108")
end

yyval48 := ast_factory.new_then_compound (yyvs2.item (yyvsp2), yyvs48.item (yyvsp48)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_614
			--|#line 3112 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 3112 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3112")
end

yyval48 := ast_factory.new_then_compound (yyvs2.item (yyvsp2), yyvs48.item (yyvsp48)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_615
			--|#line 3116 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 3116 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3116")
end

yyval48 := ast_factory.new_else_compound (yyvs2.item (yyvsp2), yyvs48.item (yyvsp48)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_616
			--|#line 3120 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 3120 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3120")
end

yyval48 := ast_factory.new_else_compound (yyvs2.item (yyvsp2), yyvs48.item (yyvsp48)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_617
			--|#line 3124 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 3124 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3124")
end

yyval48 := ast_factory.new_rescue_compound (yyvs2.item (yyvsp2), yyvs48.item (yyvsp48)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_618
			--|#line 3128 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 3128 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3128")
end

yyval48 := ast_factory.new_from_compound (yyvs2.item (yyvsp2), yyvs48.item (yyvsp48)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_619
			--|#line 3132 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 3132 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3132")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp48 := yyvsp48 + 1
	if yyvsp48 >= yyvsc48 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs48")
		end
		yyvsc48 := yyvsc48 + yyInitial_yyvs_size
		yyvs48 := yyspecial_routines48.aliased_resized_area (yyvs48, yyvsc48)
	end
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_620
			--|#line 3134 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 3134 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3134")
end

yyval48 := yyvs48.item (yyvsp48) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_621
			--|#line 3138 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 3138 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3138")
end

yyval48 := ast_factory.new_loop_compound (yyvs2.item (yyvsp2), yyvs48.item (yyvsp48)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_622
			--|#line 3142 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 3142 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3142")
end

			yyval48 := yyvs48.item (yyvsp48)
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_623
			--|#line 3149 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 3149 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3149")
end

yyval48 := ast_factory.new_empty_compound 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp48 := yyvsp48 + 1
	if yyvsp48 >= yyvsc48 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs48")
		end
		yyvsc48 := yyvsc48 + yyInitial_yyvs_size
		yyvs48 := yyspecial_routines48.aliased_resized_area (yyvs48, yyvsc48)
	end
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_624
			--|#line 3151 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 3151 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3151")
end

yyval48 := yyvs48.item (yyvsp48) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_625
			--|#line 3155 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 3155 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3155")
end

yyval48 := ast_factory.new_compound (0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp48 := yyvsp48 + 1
	if yyvsp48 >= yyvsc48 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs48")
		end
		yyvsc48 := yyvsc48 + yyInitial_yyvs_size
		yyvs48 := yyspecial_routines48.aliased_resized_area (yyvs48, yyvsc48)
	end
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_626
			--|#line 3157 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 3157 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3157")
end

yyval48 := yyvs48.item (yyvsp48) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_627
			--|#line 3161 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 3161 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3161")
end

			if yyvs89.item (yyvsp89) /= Void then
				yyval48 := ast_factory.new_compound (counter_value + 1)
				if yyval48 /= Void then
					yyval48.put_first (yyvs89.item (yyvsp89))
				end
			else
				yyval48 := ast_factory.new_compound (counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp48 := yyvsp48 + 1
	yyvsp89 := yyvsp89 -1
	if yyvsp48 >= yyvsc48 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs48")
		end
		yyvsc48 := yyvsc48 + yyInitial_yyvs_size
		yyvs48 := yyspecial_routines48.aliased_resized_area (yyvs48, yyvsc48)
	end
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_628
			--|#line 3172 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 3172 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3172")
end

			yyval48 := yyvs48.item (yyvsp48)
			if yyval48 /= Void and yyvs89.item (yyvsp89) /= Void then
				yyval48.put_first (yyvs89.item (yyvsp89))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp48 := yyvsp48 -1
	yyvsp89 := yyvsp89 -1
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_629
			--|#line 3172 "et_eiffel_parser.y"
		local
			yyval48: ET_COMPOUND
		do
--|#line 3172 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3172")
end

			if yyvs89.item (yyvsp89) /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp48 := yyvsp48 + 1
	if yyvsp48 >= yyvsc48 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs48")
		end
		yyvsc48 := yyvsc48 + yyInitial_yyvs_size
		yyvs48 := yyspecial_routines48.aliased_resized_area (yyvs48, yyvsc48)
	end
	yyspecial_routines48.force (yyvs48, yyval48, yyvsp48)
end
		end

	yy_do_action_630
			--|#line 3193 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3193 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3193")
end

yyval89 := yyvs89.item (yyvsp89) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_631
			--|#line 3195 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3195 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3195")
end

yyval89 := yyvs89.item (yyvsp89) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_632
			--|#line 3197 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3197 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3197")
end

yyval89 := yyvs89.item (yyvsp89) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_633
			--|#line 3199 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3199 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3199")
end

yyval89 := ast_factory.new_assigner_instruction (yyvs39.item (yyvsp39), yyvs5.item (yyvsp5), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp89 := yyvsp89 + 1
	yyvsp39 := yyvsp39 -1
	yyvsp5 := yyvsp5 -1
	yyvsp66 := yyvsp66 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_634
			--|#line 3201 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3201 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3201")
end

yyval89 := ast_factory.new_assigner_instruction (yyvs37.item (yyvsp37), yyvs5.item (yyvsp5), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp89 := yyvsp89 + 1
	yyvsp37 := yyvsp37 -1
	yyvsp5 := yyvsp5 -1
	yyvsp66 := yyvsp66 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_635
			--|#line 3203 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3203 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3203")
end

yyval89 := ast_factory.new_assignment (yyvs121.item (yyvsp121), yyvs5.item (yyvsp5), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp89 := yyvsp89 + 1
	yyvsp121 := yyvsp121 -1
	yyvsp5 := yyvsp5 -1
	yyvsp66 := yyvsp66 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_636
			--|#line 3205 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3205 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3205")
end

yyval89 := ast_factory.new_assignment_attempt (yyvs121.item (yyvsp121), yyvs5.item (yyvsp5), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp89 := yyvsp89 + 1
	yyvsp121 := yyvsp121 -1
	yyvsp5 := yyvsp5 -1
	yyvsp66 := yyvsp66 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_637
			--|#line 3207 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3207 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3207")
end

yyval89 := yyvs81.item (yyvsp81) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp89 := yyvsp89 + 1
	yyvsp81 := yyvsp81 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_638
			--|#line 3209 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3209 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3209")
end

yyval89 := yyvs88.item (yyvsp88) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp89 := yyvsp89 + 1
	yyvsp88 := yyvsp88 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_639
			--|#line 3211 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3211 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3211")
end

yyval89 := ast_factory.new_loop_instruction_old_syntax (yyvs48.item (yyvsp48 - 1), yyvs96.item (yyvsp96), yyvs118.item (yyvsp118), ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs66.item (yyvsp66)), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp89 := yyvsp89 + 1
	yyvsp48 := yyvsp48 -2
	yyvsp96 := yyvsp96 -1
	yyvsp118 := yyvsp118 -1
	yyvsp2 := yyvsp2 -2
	yyvsp66 := yyvsp66 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_640
			--|#line 3213 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3213 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3213")
end

			if current_system.is_ise and then current_system.ise_version < ise_6_3_7_4554 then
				yyval89 := ast_factory.new_loop_instruction_old_syntax (yyvs48.item (yyvsp48 - 1), yyvs96.item (yyvsp96), Void, ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs66.item (yyvsp66)), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2))
			else
				yyval89 := ast_factory.new_loop_instruction (yyvs48.item (yyvsp48 - 1), yyvs96.item (yyvsp96), ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs66.item (yyvsp66)), yyvs48.item (yyvsp48), Void, yyvs2.item (yyvsp2))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp89 := yyvsp89 + 1
	yyvsp48 := yyvsp48 -2
	yyvsp96 := yyvsp96 -1
	yyvsp2 := yyvsp2 -2
	yyvsp66 := yyvsp66 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_641
			--|#line 3221 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3221 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3221")
end

			if current_system.is_ise and then current_system.ise_version < ise_6_3_7_4554 then
				raise_error
			else
				yyval89 := ast_factory.new_loop_instruction (yyvs48.item (yyvsp48 - 1), yyvs96.item (yyvsp96), ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs66.item (yyvsp66)), yyvs48.item (yyvsp48), yyvs118.item (yyvsp118), yyvs2.item (yyvsp2))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp89 := yyvsp89 + 1
	yyvsp48 := yyvsp48 -2
	yyvsp96 := yyvsp96 -1
	yyvsp2 := yyvsp2 -2
	yyvsp66 := yyvsp66 -1
	yyvsp118 := yyvsp118 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_642
			--|#line 3234 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3234 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3234")
end

yyval89 := new_across_instruction (yyvs26.item (yyvsp26), yyvs48.item (yyvsp48 - 1), yyvs96.item (yyvsp96), yyvs49.item (yyvsp49), yyvs48.item (yyvsp48), yyvs118.item (yyvsp118), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp89 := yyvsp89 + 1
	yyvsp26 := yyvsp26 -1
	yyvsp48 := yyvsp48 -2
	yyvsp96 := yyvsp96 -1
	yyvsp49 := yyvsp49 -1
	yyvsp118 := yyvsp118 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_643
			--|#line 3236 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3236 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3236")
end

yyval89 := yyvs61.item (yyvsp61) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp89 := yyvsp89 + 1
	yyvsp61 := yyvsp61 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_644
			--|#line 3238 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3238 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3238")
end

yyval89 := yyvs40.item (yyvsp40) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp89 := yyvsp89 + 1
	yyvsp40 := yyvsp40 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_645
			--|#line 3240 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3240 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3240")
end

yyval89 := yyvs19.item (yyvsp19) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp89 := yyvsp89 + 1
	yyvsp19 := yyvsp19 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_646
			--|#line 3242 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3242 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3242")
end

yyval89 := ast_factory.new_null_instruction (yyvs22.item (yyvsp22)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp89 := yyvsp89 + 1
	yyvsp22 := yyvsp22 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_647
			--|#line 3248 "et_eiffel_parser.y"
		local
			yyval40: ET_CHECK_INSTRUCTION
		do
--|#line 3248 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3248")
end

yyval40 := new_check_instruction (yyvs2.item (yyvsp2 - 1), Void, yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp40 := yyvsp40 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp1 := yyvsp1 -1
	if yyvsp40 >= yyvsc40 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs40")
		end
		yyvsc40 := yyvsc40 + yyInitial_yyvs_size
		yyvs40 := yyspecial_routines40.aliased_resized_area (yyvs40, yyvsc40)
	end
	yyspecial_routines40.force (yyvs40, yyval40, yyvsp40)
end
		end

	yy_do_action_648
			--|#line 3250 "et_eiffel_parser.y"
		local
			yyval40: ET_CHECK_INSTRUCTION
		do
--|#line 3250 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3250")
end

yyval40 := new_check_instruction (yyvs2.item (yyvsp2 - 1), Void, yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp40 := yyvsp40 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp1 := yyvsp1 -2
	if yyvsp40 >= yyvsc40 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs40")
		end
		yyvsc40 := yyvsc40 + yyInitial_yyvs_size
		yyvs40 := yyspecial_routines40.aliased_resized_area (yyvs40, yyvsc40)
	end
	yyspecial_routines40.force (yyvs40, yyval40, yyvsp40)
end
		end

	yy_do_action_649
			--|#line 3252 "et_eiffel_parser.y"
		local
			yyval40: ET_CHECK_INSTRUCTION
		do
--|#line 3252 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3252")
end

yyval40 := new_check_instruction (yyvs2.item (yyvsp2 - 1), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp40 := yyvsp40 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp1 := yyvsp1 -1
	yyvsp48 := yyvsp48 -1
	if yyvsp40 >= yyvsc40 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs40")
		end
		yyvsc40 := yyvsc40 + yyInitial_yyvs_size
		yyvs40 := yyspecial_routines40.aliased_resized_area (yyvs40, yyvsc40)
	end
	yyspecial_routines40.force (yyvs40, yyval40, yyvsp40)
end
		end

	yy_do_action_650
			--|#line 3254 "et_eiffel_parser.y"
		local
			yyval40: ET_CHECK_INSTRUCTION
		do
--|#line 3254 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3254")
end

yyval40 := new_check_instruction (yyvs2.item (yyvsp2 - 1), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp40 := yyvsp40 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp1 := yyvsp1 -2
	yyvsp48 := yyvsp48 -1
	if yyvsp40 >= yyvsc40 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs40")
		end
		yyvsc40 := yyvsc40 + yyInitial_yyvs_size
		yyvs40 := yyspecial_routines40.aliased_resized_area (yyvs40, yyvsc40)
	end
	yyspecial_routines40.force (yyvs40, yyval40, yyvsp40)
end
		end

	yy_do_action_651
			--|#line 3258 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 3258 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3258")
end

start_check_instruction 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_652
			--|#line 3264 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3264 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3264")
end

yyval89 := ast_factory.new_bang_instruction (yyvs5.item (yyvsp5 - 1), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5), yyvs121.item (yyvsp121), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp89 := yyvsp89 + 1
	yyvsp5 := yyvsp5 -2
	yyvsp115 := yyvsp115 -1
	yyvsp121 := yyvsp121 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_653
			--|#line 3266 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3266 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3266")
end

yyval89 := ast_factory.new_bang_instruction (yyvs5.item (yyvsp5 - 2), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5 - 1), yyvs121.item (yyvsp121), ast_factory.new_qualified_call (ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)), yyvs27.item (yyvsp27))) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp89 := yyvsp89 + 1
	yyvsp5 := yyvsp5 -3
	yyvsp115 := yyvsp115 -1
	yyvsp121 := yyvsp121 -1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_654
			--|#line 3268 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3268 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3268")
end

yyval89 := ast_factory.new_bang_instruction (yyvs5.item (yyvsp5 - 1), Void, yyvs5.item (yyvsp5), yyvs121.item (yyvsp121), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp89 := yyvsp89 + 1
	yyvsp5 := yyvsp5 -2
	yyvsp121 := yyvsp121 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_655
			--|#line 3270 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3270 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3270")
end

yyval89 := ast_factory.new_bang_instruction (yyvs5.item (yyvsp5 - 2), Void, yyvs5.item (yyvsp5 - 1), yyvs121.item (yyvsp121), ast_factory.new_qualified_call (ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)), yyvs27.item (yyvsp27))) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp89 := yyvsp89 + 1
	yyvsp5 := yyvsp5 -3
	yyvsp121 := yyvsp121 -1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_656
			--|#line 3274 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3274 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3274")
end

yyval89 := ast_factory.new_create_instruction (yyvs2.item (yyvsp2), ast_factory.new_target_type (yyvs5.item (yyvsp5 - 1), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5)), yyvs121.item (yyvsp121), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp89 := yyvsp89 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp5 := yyvsp5 -2
	yyvsp115 := yyvsp115 -1
	yyvsp121 := yyvsp121 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_657
			--|#line 3276 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3276 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3276")
end

yyval89 := ast_factory.new_create_instruction (yyvs2.item (yyvsp2), ast_factory.new_target_type (yyvs5.item (yyvsp5 - 2), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5 - 1)), yyvs121.item (yyvsp121), ast_factory.new_qualified_call (ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)), yyvs27.item (yyvsp27))) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp89 := yyvsp89 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp5 := yyvsp5 -3
	yyvsp115 := yyvsp115 -1
	yyvsp121 := yyvsp121 -1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_658
			--|#line 3278 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3278 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3278")
end

yyval89 := ast_factory.new_create_instruction (yyvs2.item (yyvsp2), Void, yyvs121.item (yyvsp121), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp89 := yyvsp89 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp121 := yyvsp121 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_659
			--|#line 3280 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3280 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3280")
end

yyval89 := ast_factory.new_create_instruction (yyvs2.item (yyvsp2), Void, yyvs121.item (yyvsp121), ast_factory.new_qualified_call (ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)), yyvs27.item (yyvsp27))) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp89 := yyvsp89 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp121 := yyvsp121 -1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_660
			--|#line 3284 "et_eiffel_parser.y"
		local
			yyval58: ET_CREATE_EXPRESSION
		do
--|#line 3284 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3284")
end

yyval58 := ast_factory.new_create_expression (yyvs2.item (yyvsp2), ast_factory.new_target_type (yyvs5.item (yyvsp5 - 1), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5)), Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp58 := yyvsp58 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp5 := yyvsp5 -2
	yyvsp115 := yyvsp115 -1
	if yyvsp58 >= yyvsc58 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs58")
		end
		yyvsc58 := yyvsc58 + yyInitial_yyvs_size
		yyvs58 := yyspecial_routines58.aliased_resized_area (yyvs58, yyvsc58)
	end
	yyspecial_routines58.force (yyvs58, yyval58, yyvsp58)
end
		end

	yy_do_action_661
			--|#line 3286 "et_eiffel_parser.y"
		local
			yyval58: ET_CREATE_EXPRESSION
		do
--|#line 3286 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3286")
end

yyval58 := ast_factory.new_create_expression (yyvs2.item (yyvsp2), ast_factory.new_target_type (yyvs5.item (yyvsp5 - 2), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5 - 1)), ast_factory.new_qualified_call (ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)), yyvs27.item (yyvsp27))) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp58 := yyvsp58 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp5 := yyvsp5 -3
	yyvsp115 := yyvsp115 -1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp58 >= yyvsc58 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs58")
		end
		yyvsc58 := yyvsc58 + yyInitial_yyvs_size
		yyvs58 := yyspecial_routines58.aliased_resized_area (yyvs58, yyvsc58)
	end
	yyspecial_routines58.force (yyvs58, yyval58, yyvsp58)
end
		end

	yy_do_action_662
			--|#line 3292 "et_eiffel_parser.y"
		local
			yyval81: ET_IF_INSTRUCTION
		do
--|#line 3292 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3292")
end

yyval81 := ast_factory.new_if_instruction (ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs66.item (yyvsp66)), yyvs48.item (yyvsp48), Void, Void, yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp81 := yyvsp81 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp66 := yyvsp66 -1
	yyvsp48 := yyvsp48 -1
	if yyvsp81 >= yyvsc81 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs81")
		end
		yyvsc81 := yyvsc81 + yyInitial_yyvs_size
		yyvs81 := yyspecial_routines81.aliased_resized_area (yyvs81, yyvsc81)
	end
	yyspecial_routines81.force (yyvs81, yyval81, yyvsp81)
end
		end

	yy_do_action_663
			--|#line 3294 "et_eiffel_parser.y"
		local
			yyval81: ET_IF_INSTRUCTION
		do
--|#line 3294 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3294")
end

yyval81 := ast_factory.new_if_instruction (ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs66.item (yyvsp66)), yyvs48.item (yyvsp48 - 1), Void, yyvs48.item (yyvsp48), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp81 := yyvsp81 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp66 := yyvsp66 -1
	yyvsp48 := yyvsp48 -2
	if yyvsp81 >= yyvsc81 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs81")
		end
		yyvsc81 := yyvsc81 + yyInitial_yyvs_size
		yyvs81 := yyspecial_routines81.aliased_resized_area (yyvs81, yyvsc81)
	end
	yyspecial_routines81.force (yyvs81, yyval81, yyvsp81)
end
		end

	yy_do_action_664
			--|#line 3296 "et_eiffel_parser.y"
		local
			yyval81: ET_IF_INSTRUCTION
		do
--|#line 3296 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3296")
end

yyval81 := ast_factory.new_if_instruction (ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs66.item (yyvsp66)), yyvs48.item (yyvsp48), yyvs63.item (yyvsp63), Void, yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp81 := yyvsp81 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp66 := yyvsp66 -1
	yyvsp48 := yyvsp48 -1
	yyvsp63 := yyvsp63 -1
	if yyvsp81 >= yyvsc81 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs81")
		end
		yyvsc81 := yyvsc81 + yyInitial_yyvs_size
		yyvs81 := yyspecial_routines81.aliased_resized_area (yyvs81, yyvsc81)
	end
	yyspecial_routines81.force (yyvs81, yyval81, yyvsp81)
end
		end

	yy_do_action_665
			--|#line 3298 "et_eiffel_parser.y"
		local
			yyval81: ET_IF_INSTRUCTION
		do
--|#line 3298 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3298")
end

yyval81 := ast_factory.new_if_instruction (ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs66.item (yyvsp66)), yyvs48.item (yyvsp48 - 1), yyvs63.item (yyvsp63), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp81 := yyvsp81 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp66 := yyvsp66 -1
	yyvsp48 := yyvsp48 -2
	yyvsp63 := yyvsp63 -1
	if yyvsp81 >= yyvsc81 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs81")
		end
		yyvsc81 := yyvsc81 + yyInitial_yyvs_size
		yyvs81 := yyspecial_routines81.aliased_resized_area (yyvs81, yyvsc81)
	end
	yyspecial_routines81.force (yyvs81, yyval81, yyvsp81)
end
		end

	yy_do_action_666
			--|#line 3302 "et_eiffel_parser.y"
		local
			yyval63: ET_ELSEIF_PART_LIST
		do
--|#line 3302 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3302")
end

			yyval63 := yyvs63.item (yyvsp63)
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines63.force (yyvs63, yyval63, yyvsp63)
end
		end

	yy_do_action_667
			--|#line 3309 "et_eiffel_parser.y"
		local
			yyval63: ET_ELSEIF_PART_LIST
		do
--|#line 3309 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3309")
end

			yyval63 := ast_factory.new_elseif_part_list (counter_value)
			if yyval63 /= Void and yyvs62.item (yyvsp62) /= Void then
				yyval63.put_first (yyvs62.item (yyvsp62))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp63 := yyvsp63 + 1
	yyvsp62 := yyvsp62 -1
	if yyvsp63 >= yyvsc63 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs63")
		end
		yyvsc63 := yyvsc63 + yyInitial_yyvs_size
		yyvs63 := yyspecial_routines63.aliased_resized_area (yyvs63, yyvsc63)
	end
	yyspecial_routines63.force (yyvs63, yyval63, yyvsp63)
end
		end

	yy_do_action_668
			--|#line 3316 "et_eiffel_parser.y"
		local
			yyval63: ET_ELSEIF_PART_LIST
		do
--|#line 3316 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3316")
end

			yyval63 := yyvs63.item (yyvsp63)
			if yyval63 /= Void and yyvs62.item (yyvsp62) /= Void then
				yyval63.put_first (yyvs62.item (yyvsp62))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp62 := yyvsp62 -1
	yyspecial_routines63.force (yyvs63, yyval63, yyvsp63)
end
		end

	yy_do_action_669
			--|#line 3325 "et_eiffel_parser.y"
		local
			yyval62: ET_ELSEIF_PART
		do
--|#line 3325 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3325")
end

			yyval62 := ast_factory.new_elseif_part (ast_factory.new_conditional (yyvs2.item (yyvsp2), yyvs66.item (yyvsp66)), yyvs48.item (yyvsp48))
			if yyval62 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp62 := yyvsp62 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp66 := yyvsp66 -1
	yyvsp48 := yyvsp48 -1
	if yyvsp62 >= yyvsc62 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs62")
		end
		yyvsc62 := yyvsc62 + yyInitial_yyvs_size
		yyvs62 := yyspecial_routines62.aliased_resized_area (yyvs62, yyvsc62)
	end
	yyspecial_routines62.force (yyvs62, yyval62, yyvsp62)
end
		end

	yy_do_action_670
			--|#line 3336 "et_eiffel_parser.y"
		local
			yyval88: ET_INSPECT_INSTRUCTION
		do
--|#line 3336 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3336")
end

yyval88 := ast_factory.new_inspect_instruction (ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs66.item (yyvsp66)), yyvs120.item (yyvsp120), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp88 := yyvsp88 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp66 := yyvsp66 -1
	yyvsp120 := yyvsp120 -1
	yyvsp48 := yyvsp48 -1
	if yyvsp88 >= yyvsc88 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs88")
		end
		yyvsc88 := yyvsc88 + yyInitial_yyvs_size
		yyvs88 := yyspecial_routines88.aliased_resized_area (yyvs88, yyvsc88)
	end
	yyspecial_routines88.force (yyvs88, yyval88, yyvsp88)
end
		end

	yy_do_action_671
			--|#line 3338 "et_eiffel_parser.y"
		local
			yyval88: ET_INSPECT_INSTRUCTION
		do
--|#line 3338 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3338")
end

yyval88 := ast_factory.new_inspect_instruction (ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs66.item (yyvsp66)), yyvs120.item (yyvsp120), Void, yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp88 := yyvsp88 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp66 := yyvsp66 -1
	yyvsp120 := yyvsp120 -1
	if yyvsp88 >= yyvsc88 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs88")
		end
		yyvsc88 := yyvsc88 + yyInitial_yyvs_size
		yyvs88 := yyspecial_routines88.aliased_resized_area (yyvs88, yyvsc88)
	end
	yyspecial_routines88.force (yyvs88, yyval88, yyvsp88)
end
		end

	yy_do_action_672
			--|#line 3342 "et_eiffel_parser.y"
		local
			yyval120: ET_WHEN_PART_LIST
		do
--|#line 3342 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3342")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp120 := yyvsp120 + 1
	if yyvsp120 >= yyvsc120 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs120")
		end
		yyvsc120 := yyvsc120 + yyInitial_yyvs_size
		yyvs120 := yyspecial_routines120.aliased_resized_area (yyvs120, yyvsc120)
	end
	yyspecial_routines120.force (yyvs120, yyval120, yyvsp120)
end
		end

	yy_do_action_673
			--|#line 3344 "et_eiffel_parser.y"
		local
			yyval120: ET_WHEN_PART_LIST
		do
--|#line 3344 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3344")
end

			yyval120 := yyvs120.item (yyvsp120)
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp1 := yyvsp1 -1
	yyspecial_routines120.force (yyvs120, yyval120, yyvsp120)
end
		end

	yy_do_action_674
			--|#line 3351 "et_eiffel_parser.y"
		local
			yyval120: ET_WHEN_PART_LIST
		do
--|#line 3351 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3351")
end

			yyval120 := ast_factory.new_when_part_list (counter_value)
			if yyval120 /= Void and yyvs119.item (yyvsp119) /= Void then
				yyval120.put_first (yyvs119.item (yyvsp119))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp120 := yyvsp120 + 1
	yyvsp119 := yyvsp119 -1
	if yyvsp120 >= yyvsc120 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs120")
		end
		yyvsc120 := yyvsc120 + yyInitial_yyvs_size
		yyvs120 := yyspecial_routines120.aliased_resized_area (yyvs120, yyvsc120)
	end
	yyspecial_routines120.force (yyvs120, yyval120, yyvsp120)
end
		end

	yy_do_action_675
			--|#line 3358 "et_eiffel_parser.y"
		local
			yyval120: ET_WHEN_PART_LIST
		do
--|#line 3358 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3358")
end

			yyval120 := yyvs120.item (yyvsp120)
			if yyval120 /= Void and yyvs119.item (yyvsp119) /= Void then
				yyval120.put_first (yyvs119.item (yyvsp119))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp119 := yyvsp119 -1
	yyspecial_routines120.force (yyvs120, yyval120, yyvsp120)
end
		end

	yy_do_action_676
			--|#line 3367 "et_eiffel_parser.y"
		local
			yyval119: ET_WHEN_PART
		do
--|#line 3367 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3367")
end

			yyval119 := ast_factory.new_when_part (yyvs44.item (yyvsp44), yyvs48.item (yyvsp48))
			if yyval119 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp119 := yyvsp119 + 1
	yyvsp44 := yyvsp44 -1
	yyvsp48 := yyvsp48 -1
	if yyvsp119 >= yyvsc119 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs119")
		end
		yyvsc119 := yyvsc119 + yyInitial_yyvs_size
		yyvs119 := yyspecial_routines119.aliased_resized_area (yyvs119, yyvsc119)
	end
	yyspecial_routines119.force (yyvs119, yyval119, yyvsp119)
end
		end

	yy_do_action_677
			--|#line 3376 "et_eiffel_parser.y"
		local
			yyval44: ET_CHOICE_LIST
		do
--|#line 3376 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3376")
end

yyval44 := ast_factory.new_choice_list (yyvs2.item (yyvsp2), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp44 := yyvsp44 + 1
	yyvsp2 := yyvsp2 -1
	if yyvsp44 >= yyvsc44 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs44")
		end
		yyvsc44 := yyvsc44 + yyInitial_yyvs_size
		yyvs44 := yyspecial_routines44.aliased_resized_area (yyvs44, yyvsc44)
	end
	yyspecial_routines44.force (yyvs44, yyval44, yyvsp44)
end
		end

	yy_do_action_678
			--|#line 3378 "et_eiffel_parser.y"
		local
			yyval44: ET_CHOICE_LIST
		do
--|#line 3378 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3378")
end

			yyval44 := yyvs44.item (yyvsp44)
			remove_keyword
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp44 := yyvsp44 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines44.force (yyvs44, yyval44, yyvsp44)
end
		end

	yy_do_action_679
			--|#line 3378 "et_eiffel_parser.y"
		local
			yyval44: ET_CHOICE_LIST
		do
--|#line 3378 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3378")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp44 := yyvsp44 + 1
	if yyvsp44 >= yyvsc44 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs44")
		end
		yyvsc44 := yyvsc44 + yyInitial_yyvs_size
		yyvs44 := yyspecial_routines44.aliased_resized_area (yyvs44, yyvsc44)
	end
	yyspecial_routines44.force (yyvs44, yyval44, yyvsp44)
end
		end

	yy_do_action_680
			--|#line 3391 "et_eiffel_parser.y"
		local
			yyval44: ET_CHOICE_LIST
		do
--|#line 3391 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3391")
end

			if yyvs41.item (yyvsp41) /= Void then
				yyval44 := ast_factory.new_choice_list (last_keyword, counter_value + 1)
				if yyval44 /= Void then
					yyval44.put_first (yyvs41.item (yyvsp41))
				end
			else
				yyval44 := ast_factory.new_choice_list (last_keyword, counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp44 := yyvsp44 + 1
	yyvsp41 := yyvsp41 -1
	if yyvsp44 >= yyvsc44 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs44")
		end
		yyvsc44 := yyvsc44 + yyInitial_yyvs_size
		yyvs44 := yyspecial_routines44.aliased_resized_area (yyvs44, yyvsc44)
	end
	yyspecial_routines44.force (yyvs44, yyval44, yyvsp44)
end
		end

	yy_do_action_681
			--|#line 3402 "et_eiffel_parser.y"
		local
			yyval44: ET_CHOICE_LIST
		do
--|#line 3402 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3402")
end

			yyval44 := ast_factory.new_choice_list (last_keyword, counter_value)
			if yyval44 /= Void and yyvs43.item (yyvsp43) /= Void then
				yyval44.put_first (yyvs43.item (yyvsp43))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp44 := yyvsp44 + 1
	yyvsp43 := yyvsp43 -1
	if yyvsp44 >= yyvsc44 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs44")
		end
		yyvsc44 := yyvsc44 + yyInitial_yyvs_size
		yyvs44 := yyspecial_routines44.aliased_resized_area (yyvs44, yyvsc44)
	end
	yyspecial_routines44.force (yyvs44, yyval44, yyvsp44)
end
		end

	yy_do_action_682
			--|#line 3410 "et_eiffel_parser.y"
		local
			yyval44: ET_CHOICE_LIST
		do
--|#line 3410 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3410")
end

			yyval44 := yyvs44.item (yyvsp44)
			if yyval44 /= Void and yyvs43.item (yyvsp43) /= Void then
				yyval44.put_first (yyvs43.item (yyvsp43))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp43 := yyvsp43 -1
	yyspecial_routines44.force (yyvs44, yyval44, yyvsp44)
end
		end

	yy_do_action_683
			--|#line 3419 "et_eiffel_parser.y"
		local
			yyval43: ET_CHOICE_ITEM
		do
--|#line 3419 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3419")
end

			yyval43 := ast_factory.new_choice_comma (yyvs41.item (yyvsp41), yyvs5.item (yyvsp5))
			if yyval43 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp43 := yyvsp43 + 1
	yyvsp41 := yyvsp41 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp43 >= yyvsc43 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs43")
		end
		yyvsc43 := yyvsc43 + yyInitial_yyvs_size
		yyvs43 := yyspecial_routines43.aliased_resized_area (yyvs43, yyvsc43)
	end
	yyspecial_routines43.force (yyvs43, yyval43, yyvsp43)
end
		end

	yy_do_action_684
			--|#line 3428 "et_eiffel_parser.y"
		local
			yyval41: ET_CHOICE
		do
--|#line 3428 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3428")
end

yyval41 := yyvs42.item (yyvsp42) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp41 := yyvsp41 + 1
	yyvsp42 := yyvsp42 -1
	if yyvsp41 >= yyvsc41 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs41")
		end
		yyvsc41 := yyvsc41 + yyInitial_yyvs_size
		yyvs41 := yyspecial_routines41.aliased_resized_area (yyvs41, yyvsc41)
	end
	yyspecial_routines41.force (yyvs41, yyval41, yyvsp41)
end
		end

	yy_do_action_685
			--|#line 3430 "et_eiffel_parser.y"
		local
			yyval41: ET_CHOICE
		do
--|#line 3430 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3430")
end

yyval41 := ast_factory.new_choice_range (yyvs42.item (yyvsp42 - 1), yyvs5.item (yyvsp5), yyvs42.item (yyvsp42)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp41 := yyvsp41 + 1
	yyvsp42 := yyvsp42 -2
	yyvsp5 := yyvsp5 -1
	if yyvsp41 >= yyvsc41 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs41")
		end
		yyvsc41 := yyvsc41 + yyInitial_yyvs_size
		yyvs41 := yyspecial_routines41.aliased_resized_area (yyvs41, yyvsc41)
	end
	yyspecial_routines41.force (yyvs41, yyval41, yyvsp41)
end
		end

	yy_do_action_686
			--|#line 3434 "et_eiffel_parser.y"
		local
			yyval42: ET_CHOICE_CONSTANT
		do
--|#line 3434 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3434")
end

yyval42 := yyvs14.item (yyvsp14) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp42 := yyvsp42 + 1
	yyvsp14 := yyvsp14 -1
	if yyvsp42 >= yyvsc42 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs42")
		end
		yyvsc42 := yyvsc42 + yyInitial_yyvs_size
		yyvs42 := yyspecial_routines42.aliased_resized_area (yyvs42, yyvsc42)
	end
	yyspecial_routines42.force (yyvs42, yyval42, yyvsp42)
end
		end

	yy_do_action_687
			--|#line 3436 "et_eiffel_parser.y"
		local
			yyval42: ET_CHOICE_CONSTANT
		do
--|#line 3436 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3436")
end

yyval42 := yyvs10.item (yyvsp10) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp42 := yyvsp42 + 1
	yyvsp10 := yyvsp10 -1
	if yyvsp42 >= yyvsc42 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs42")
		end
		yyvsc42 := yyvsc42 + yyInitial_yyvs_size
		yyvs42 := yyspecial_routines42.aliased_resized_area (yyvs42, yyvsc42)
	end
	yyspecial_routines42.force (yyvs42, yyval42, yyvsp42)
end
		end

	yy_do_action_688
			--|#line 3438 "et_eiffel_parser.y"
		local
			yyval42: ET_CHOICE_CONSTANT
		do
--|#line 3438 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3438")
end

yyval42 := new_choice_attribute_constant (yyvs13.item (yyvsp13)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp42 := yyvsp42 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp42 >= yyvsc42 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs42")
		end
		yyvsc42 := yyvsc42 + yyInitial_yyvs_size
		yyvs42 := yyspecial_routines42.aliased_resized_area (yyvs42, yyvsc42)
	end
	yyspecial_routines42.force (yyvs42, yyval42, yyvsp42)
end
		end

	yy_do_action_689
			--|#line 3440 "et_eiffel_parser.y"
		local
			yyval42: ET_CHOICE_CONSTANT
		do
--|#line 3440 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3440")
end

yyval42 := yyvs113.item (yyvsp113) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp42 := yyvsp42 + 1
	yyvsp113 := yyvsp113 -1
	if yyvsp42 >= yyvsc42 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs42")
		end
		yyvsc42 := yyvsc42 + yyInitial_yyvs_size
		yyvs42 := yyspecial_routines42.aliased_resized_area (yyvs42, yyvsc42)
	end
	yyspecial_routines42.force (yyvs42, yyval42, yyvsp42)
end
		end

	yy_do_action_690
			--|#line 3446 "et_eiffel_parser.y"
		local
			yyval26: ET_ACROSS_INSTRUCTION
		do
--|#line 3446 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3446")
end

yyval26 := new_across_instruction_header (yyvs2.item (yyvsp2 - 1), yyvs66.item (yyvsp66), yyvs2.item (yyvsp2), yyvs13.item (yyvsp13)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp26 := yyvsp26 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp66 := yyvsp66 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp26 >= yyvsc26 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs26")
		end
		yyvsc26 := yyvsc26 + yyInitial_yyvs_size
		yyvs26 := yyspecial_routines26.aliased_resized_area (yyvs26, yyvsc26)
	end
	yyspecial_routines26.force (yyvs26, yyval26, yyvsp26)
end
		end

	yy_do_action_691
			--|#line 3450 "et_eiffel_parser.y"
		local
			yyval49: ET_CONDITIONAL
		do
--|#line 3450 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3450")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp49 := yyvsp49 + 1
	if yyvsp49 >= yyvsc49 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs49")
		end
		yyvsc49 := yyvsc49 + yyInitial_yyvs_size
		yyvs49 := yyspecial_routines49.aliased_resized_area (yyvs49, yyvsc49)
	end
	yyspecial_routines49.force (yyvs49, yyval49, yyvsp49)
end
		end

	yy_do_action_692
			--|#line 3452 "et_eiffel_parser.y"
		local
			yyval49: ET_CONDITIONAL
		do
--|#line 3452 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3452")
end

yyval49 := ast_factory.new_conditional (yyvs2.item (yyvsp2), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp49 := yyvsp49 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp66 := yyvsp66 -1
	if yyvsp49 >= yyvsc49 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs49")
		end
		yyvsc49 := yyvsc49 + yyInitial_yyvs_size
		yyvs49 := yyspecial_routines49.aliased_resized_area (yyvs49, yyvsc49)
	end
	yyspecial_routines49.force (yyvs49, yyval49, yyvsp49)
end
		end

	yy_do_action_693
			--|#line 3458 "et_eiffel_parser.y"
		local
			yyval61: ET_DEBUG_INSTRUCTION
		do
--|#line 3458 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3458")
end

yyval61 := ast_factory.new_debug_instruction (yyvs99.item (yyvsp99), ast_factory.new_debug_compound (yyvs2.item (yyvsp2 - 1), yyvs48.item (yyvsp48)), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp61 := yyvsp61 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp99 := yyvsp99 -1
	yyvsp48 := yyvsp48 -1
	if yyvsp61 >= yyvsc61 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs61")
		end
		yyvsc61 := yyvsc61 + yyInitial_yyvs_size
		yyvs61 := yyspecial_routines61.aliased_resized_area (yyvs61, yyvsc61)
	end
	yyspecial_routines61.force (yyvs61, yyval61, yyvsp61)
end
		end

	yy_do_action_694
			--|#line 3462 "et_eiffel_parser.y"
		local
			yyval99: ET_MANIFEST_STRING_LIST
		do
--|#line 3462 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3462")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp99 := yyvsp99 + 1
	if yyvsp99 >= yyvsc99 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs99")
		end
		yyvsc99 := yyvsc99 + yyInitial_yyvs_size
		yyvs99 := yyspecial_routines99.aliased_resized_area (yyvs99, yyvsc99)
	end
	yyspecial_routines99.force (yyvs99, yyval99, yyvsp99)
end
		end

	yy_do_action_695
			--|#line 3464 "et_eiffel_parser.y"
		local
			yyval99: ET_MANIFEST_STRING_LIST
		do
--|#line 3464 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3464")
end

yyval99 := ast_factory.new_manifest_string_list (yyvs5.item (yyvsp5 - 1), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp99 := yyvsp99 + 1
	yyvsp5 := yyvsp5 -2
	if yyvsp99 >= yyvsc99 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs99")
		end
		yyvsc99 := yyvsc99 + yyInitial_yyvs_size
		yyvs99 := yyspecial_routines99.aliased_resized_area (yyvs99, yyvsc99)
	end
	yyspecial_routines99.force (yyvs99, yyval99, yyvsp99)
end
		end

	yy_do_action_696
			--|#line 3466 "et_eiffel_parser.y"
		local
			yyval99: ET_MANIFEST_STRING_LIST
		do
--|#line 3466 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3466")
end

			yyval99 := yyvs99.item (yyvsp99)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp99 := yyvsp99 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines99.force (yyvs99, yyval99, yyvsp99)
end
		end

	yy_do_action_697
			--|#line 3466 "et_eiffel_parser.y"
		local
			yyval99: ET_MANIFEST_STRING_LIST
		do
--|#line 3466 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3466")
end

			add_symbol (yyvs5.item (yyvsp5))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp99 := yyvsp99 + 1
	if yyvsp99 >= yyvsc99 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs99")
		end
		yyvsc99 := yyvsc99 + yyInitial_yyvs_size
		yyvs99 := yyspecial_routines99.aliased_resized_area (yyvs99, yyvsc99)
	end
	yyspecial_routines99.force (yyvs99, yyval99, yyvsp99)
end
		end

	yy_do_action_698
			--|#line 3479 "et_eiffel_parser.y"
		local
			yyval99: ET_MANIFEST_STRING_LIST
		do
--|#line 3479 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3479")
end

			if yyvs16.item (yyvsp16) /= Void then
				yyval99 := ast_factory.new_manifest_string_list (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval99 /= Void then
					yyval99.put_first (yyvs16.item (yyvsp16))
				end
			else
				yyval99 := ast_factory.new_manifest_string_list (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp99 := yyvsp99 + 1
	yyvsp16 := yyvsp16 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp99 >= yyvsc99 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs99")
		end
		yyvsc99 := yyvsc99 + yyInitial_yyvs_size
		yyvs99 := yyspecial_routines99.aliased_resized_area (yyvs99, yyvsc99)
	end
	yyspecial_routines99.force (yyvs99, yyval99, yyvsp99)
end
		end

	yy_do_action_699
			--|#line 3490 "et_eiffel_parser.y"
		local
			yyval99: ET_MANIFEST_STRING_LIST
		do
--|#line 3490 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3490")
end

			yyval99 := yyvs99.item (yyvsp99)
			if yyval99 /= Void and yyvs98.item (yyvsp98) /= Void then
				yyval99.put_first (yyvs98.item (yyvsp98))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp98 := yyvsp98 -1
	yyspecial_routines99.force (yyvs99, yyval99, yyvsp99)
end
		end

	yy_do_action_700
			--|#line 3499 "et_eiffel_parser.y"
		local
			yyval98: ET_MANIFEST_STRING_ITEM
		do
--|#line 3499 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3499")
end

			yyval98 := ast_factory.new_manifest_string_comma (yyvs16.item (yyvsp16), yyvs5.item (yyvsp5))
			if yyval98 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp98 := yyvsp98 + 1
	yyvsp16 := yyvsp16 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp98 >= yyvsc98 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs98")
		end
		yyvsc98 := yyvsc98 + yyInitial_yyvs_size
		yyvs98 := yyspecial_routines98.aliased_resized_area (yyvs98, yyvsc98)
	end
	yyspecial_routines98.force (yyvs98, yyval98, yyvsp98)
end
		end

	yy_do_action_701
			--|#line 3510 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3510 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3510")
end

yyval89 := new_unqualified_call_instruction (yyvs13.item (yyvsp13), yyvs27.item (yyvsp27)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp89 := yyvsp89 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_702
			--|#line 3512 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3512 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3512")
end

yyval89 := ast_factory.new_call_instruction (yyvs66.item (yyvsp66), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)), yyvs27.item (yyvsp27)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp89 := yyvsp89 + 1
	yyvsp66 := yyvsp66 -1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_703
			--|#line 3514 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3514 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3514")
end

yyval89 := ast_factory.new_call_instruction (yyvs66.item (yyvsp66), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)), yyvs27.item (yyvsp27)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp89 := yyvsp89 + 1
	yyvsp66 := yyvsp66 -1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_704
			--|#line 3516 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3516 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3516")
end

yyval89 := ast_factory.new_precursor_instruction (False, yyvs4.item (yyvsp4), Void, yyvs27.item (yyvsp27)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp89 := yyvsp89 + 1
	yyvsp4 := yyvsp4 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_705
			--|#line 3518 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3518 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3518")
end

yyval89 := ast_factory.new_precursor_instruction (False, yyvs4.item (yyvsp4), ast_factory.new_precursor_class_name (yyvs5.item (yyvsp5 - 1), yyvs13.item (yyvsp13), yyvs5.item (yyvsp5)), yyvs27.item (yyvsp27)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp89 := yyvsp89 + 1
	yyvsp4 := yyvsp4 -1
	yyvsp5 := yyvsp5 -2
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_706
			--|#line 3520 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3520 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3520")
end

yyval89 := ast_factory.new_static_call_instruction (yyvs2.item (yyvsp2), ast_factory.new_target_type (yyvs5.item (yyvsp5 - 2), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5 - 1)), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)), yyvs27.item (yyvsp27)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp89 := yyvsp89 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp5 := yyvsp5 -3
	yyvsp115 := yyvsp115 -1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_707
			--|#line 3522 "et_eiffel_parser.y"
		local
			yyval89: ET_INSTRUCTION
		do
--|#line 3522 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3522")
end

yyval89 := ast_factory.new_static_call_instruction (Void, ast_factory.new_target_type (yyvs5.item (yyvsp5 - 2), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5 - 1)), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)), yyvs27.item (yyvsp27)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp89 := yyvsp89 + 1
	yyvsp5 := yyvsp5 -3
	yyvsp115 := yyvsp115 -1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp89 >= yyvsc89 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs89")
		end
		yyvsc89 := yyvsc89 + yyInitial_yyvs_size
		yyvs89 := yyspecial_routines89.aliased_resized_area (yyvs89, yyvsc89)
	end
	yyspecial_routines89.force (yyvs89, yyval89, yyvsp89)
end
		end

	yy_do_action_708
			--|#line 3526 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3526 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3526")
end

yyval66 := new_unqualified_call_expression (yyvs13.item (yyvsp13), yyvs27.item (yyvsp27)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp66 := yyvsp66 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_709
			--|#line 3528 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3528 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3528")
end

yyval66 := ast_factory.new_call_expression (yyvs66.item (yyvsp66), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)), yyvs27.item (yyvsp27)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_710
			--|#line 3532 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3532 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3532")
end

yyval66 := ast_factory.new_call_expression (yyvs66.item (yyvsp66), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)), yyvs27.item (yyvsp27)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_711
			--|#line 3536 "et_eiffel_parser.y"
		local
			yyval39: ET_CALL_EXPRESSION
		do
--|#line 3536 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3536")
end

yyval39 := ast_factory.new_call_expression (yyvs66.item (yyvsp66), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)), yyvs27.item (yyvsp27)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp39 := yyvsp39 + 1
	yyvsp66 := yyvsp66 -1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp39 >= yyvsc39 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs39")
		end
		yyvsc39 := yyvsc39 + yyInitial_yyvs_size
		yyvs39 := yyspecial_routines39.aliased_resized_area (yyvs39, yyvsc39)
	end
	yyspecial_routines39.force (yyvs39, yyval39, yyvsp39)
end
		end

	yy_do_action_712
			--|#line 3538 "et_eiffel_parser.y"
		local
			yyval39: ET_CALL_EXPRESSION
		do
--|#line 3538 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3538")
end

yyval39 := ast_factory.new_call_expression (yyvs66.item (yyvsp66), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)), yyvs27.item (yyvsp27)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp39 := yyvsp39 + 1
	yyvsp66 := yyvsp66 -1
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp39 >= yyvsc39 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs39")
		end
		yyvsc39 := yyvsc39 + yyInitial_yyvs_size
		yyvs39 := yyspecial_routines39.aliased_resized_area (yyvs39, yyvsc39)
	end
	yyspecial_routines39.force (yyvs39, yyval39, yyvsp39)
end
		end

	yy_do_action_713
			--|#line 3542 "et_eiffel_parser.y"
		local
			yyval113: ET_STATIC_CALL_EXPRESSION
		do
--|#line 3542 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3542")
end

yyval113 := ast_factory.new_static_call_expression (yyvs2.item (yyvsp2), ast_factory.new_target_type (yyvs5.item (yyvsp5 - 2), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5 - 1)), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)), yyvs27.item (yyvsp27)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp113 := yyvsp113 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp5 := yyvsp5 -3
	yyvsp115 := yyvsp115 -1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_714
			--|#line 3544 "et_eiffel_parser.y"
		local
			yyval113: ET_STATIC_CALL_EXPRESSION
		do
--|#line 3544 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3544")
end

yyval113 := ast_factory.new_static_call_expression (Void, ast_factory.new_target_type (yyvs5.item (yyvsp5 - 2), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5 - 1)), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)), yyvs27.item (yyvsp27)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp113 := yyvsp113 + 1
	yyvsp5 := yyvsp5 -3
	yyvsp115 := yyvsp115 -1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp113 >= yyvsc113 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs113")
		end
		yyvsc113 := yyvsc113 + yyInitial_yyvs_size
		yyvs113 := yyspecial_routines113.aliased_resized_area (yyvs113, yyvsc113)
	end
	yyspecial_routines113.force (yyvs113, yyval113, yyvsp113)
end
		end

	yy_do_action_715
			--|#line 3548 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3548 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3548")
end

yyval66 := ast_factory.new_precursor_expression (False, yyvs4.item (yyvsp4), Void, yyvs27.item (yyvsp27)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp66 := yyvsp66 + 1
	yyvsp4 := yyvsp4 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_716
			--|#line 3550 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3550 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3550")
end

yyval66 := ast_factory.new_precursor_expression (False, yyvs4.item (yyvsp4), ast_factory.new_precursor_class_name (yyvs5.item (yyvsp5 - 1), yyvs13.item (yyvsp13), yyvs5.item (yyvsp5)), yyvs27.item (yyvsp27)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp66 := yyvsp66 + 1
	yyvsp4 := yyvsp4 -1
	yyvsp5 := yyvsp5 -2
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_717
			--|#line 3554 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3554 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3554")
end

yyval66 := new_unqualified_call_expression (yyvs13.item (yyvsp13), yyvs27.item (yyvsp27)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp66 := yyvsp66 + 1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_718
			--|#line 3556 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3556 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3556")
end

yyval66 := yyvs18.item (yyvsp18) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp18 := yyvsp18 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_719
			--|#line 3558 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3558 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3558")
end

yyval66 := yyvs11.item (yyvsp11) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp11 := yyvsp11 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_720
			--|#line 3560 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3560 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3560")
end

yyval66 := yyvs102.item (yyvsp102) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp102 := yyvsp102 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_721
			--|#line 3562 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3562 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3562")
end

yyval66 := yyvs66.item (yyvsp66) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_722
			--|#line 3564 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3564 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3564")
end

			if current_system.is_ise and then current_system.ise_version < ise_5_7_59914 then
				raise_error
			else
				yyval66 := yyvs37.item (yyvsp37)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp37 := yyvsp37 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_723
			--|#line 3572 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3572 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3572")
end

yyval66 := yyvs113.item (yyvsp113) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp113 := yyvsp113 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_724
			--|#line 3574 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3574 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3574")
end

yyval66 := ast_factory.new_call_expression (yyvs66.item (yyvsp66), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)), yyvs27.item (yyvsp27)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_725
			--|#line 3578 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3578 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3578")
end

			if current_system.is_ise and then current_system.ise_version < ise_5_7_59914 then
				raise_error
			else
				yyval66 := yyvs37.item (yyvsp37)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp37 := yyvsp37 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_726
			--|#line 3586 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3586 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3586")
end

yyval66 := ast_factory.new_call_expression (yyvs66.item (yyvsp66), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs13.item (yyvsp13)), yyvs27.item (yyvsp27)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp5 := yyvsp5 -1
	yyvsp13 := yyvsp13 -1
	yyvsp27 := yyvsp27 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_727
			--|#line 3592 "et_eiffel_parser.y"
		local
			yyval27: ET_ACTUAL_ARGUMENT_LIST
		do
--|#line 3592 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3592")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp27 := yyvsp27 + 1
	if yyvsp27 >= yyvsc27 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs27")
		end
		yyvsc27 := yyvsc27 + yyInitial_yyvs_size
		yyvs27 := yyspecial_routines27.aliased_resized_area (yyvs27, yyvsc27)
	end
	yyspecial_routines27.force (yyvs27, yyval27, yyvsp27)
end
		end

	yy_do_action_728
			--|#line 3594 "et_eiffel_parser.y"
		local
			yyval27: ET_ACTUAL_ARGUMENT_LIST
		do
--|#line 3594 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3594")
end

yyval27 := ast_factory.new_actual_arguments (yyvs5.item (yyvsp5 - 1), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp27 := yyvsp27 + 1
	yyvsp5 := yyvsp5 -2
	if yyvsp27 >= yyvsc27 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs27")
		end
		yyvsc27 := yyvsc27 + yyInitial_yyvs_size
		yyvs27 := yyspecial_routines27.aliased_resized_area (yyvs27, yyvsc27)
	end
	yyspecial_routines27.force (yyvs27, yyval27, yyvsp27)
end
		end

	yy_do_action_729
			--|#line 3596 "et_eiffel_parser.y"
		local
			yyval27: ET_ACTUAL_ARGUMENT_LIST
		do
--|#line 3596 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3596")
end

			yyval27 := yyvs27.item (yyvsp27)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp27 := yyvsp27 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines27.force (yyvs27, yyval27, yyvsp27)
end
		end

	yy_do_action_730
			--|#line 3596 "et_eiffel_parser.y"
		local
			yyval27: ET_ACTUAL_ARGUMENT_LIST
		do
--|#line 3596 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3596")
end

			add_symbol (yyvs5.item (yyvsp5))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp27 := yyvsp27 + 1
	if yyvsp27 >= yyvsc27 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs27")
		end
		yyvsc27 := yyvsc27 + yyInitial_yyvs_size
		yyvs27 := yyspecial_routines27.aliased_resized_area (yyvs27, yyvsc27)
	end
	yyspecial_routines27.force (yyvs27, yyval27, yyvsp27)
end
		end

	yy_do_action_731
			--|#line 3609 "et_eiffel_parser.y"
		local
			yyval27: ET_ACTUAL_ARGUMENT_LIST
		do
--|#line 3609 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3609")
end

			if yyvs66.item (yyvsp66) /= Void then
				yyval27 := ast_factory.new_actual_arguments (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval27 /= Void then
					yyval27.put_first (yyvs66.item (yyvsp66))
				end
			else
				yyval27 := ast_factory.new_actual_arguments (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp27 := yyvsp27 + 1
	yyvsp66 := yyvsp66 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp27 >= yyvsc27 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs27")
		end
		yyvsc27 := yyvsc27 + yyInitial_yyvs_size
		yyvs27 := yyspecial_routines27.aliased_resized_area (yyvs27, yyvsc27)
	end
	yyspecial_routines27.force (yyvs27, yyval27, yyvsp27)
end
		end

	yy_do_action_732
			--|#line 3620 "et_eiffel_parser.y"
		local
			yyval27: ET_ACTUAL_ARGUMENT_LIST
		do
--|#line 3620 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3620")
end

			yyval27 := ast_factory.new_actual_arguments (last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval27 /= Void and yyvs67.item (yyvsp67) /= Void then
				yyval27.put_first (yyvs67.item (yyvsp67))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp27 := yyvsp27 + 1
	yyvsp67 := yyvsp67 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp27 >= yyvsc27 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs27")
		end
		yyvsc27 := yyvsc27 + yyInitial_yyvs_size
		yyvs27 := yyspecial_routines27.aliased_resized_area (yyvs27, yyvsc27)
	end
	yyspecial_routines27.force (yyvs27, yyval27, yyvsp27)
end
		end

	yy_do_action_733
			--|#line 3628 "et_eiffel_parser.y"
		local
			yyval27: ET_ACTUAL_ARGUMENT_LIST
		do
--|#line 3628 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3628")
end

			yyval27 := yyvs27.item (yyvsp27)
			if yyval27 /= Void and yyvs67.item (yyvsp67) /= Void then
				yyval27.put_first (yyvs67.item (yyvsp67))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp67 := yyvsp67 -1
	yyspecial_routines27.force (yyvs27, yyval27, yyvsp27)
end
		end

	yy_do_action_734
			--|#line 3637 "et_eiffel_parser.y"
		local
			yyval67: ET_EXPRESSION_ITEM
		do
--|#line 3637 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3637")
end

			yyval67 := ast_factory.new_expression_comma (yyvs66.item (yyvsp66), yyvs5.item (yyvsp5))
			if yyval67 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp67 := yyvsp67 + 1
	yyvsp66 := yyvsp66 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp67 >= yyvsc67 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs67")
		end
		yyvsc67 := yyvsc67 + yyInitial_yyvs_size
		yyvs67 := yyspecial_routines67.aliased_resized_area (yyvs67, yyvsc67)
	end
	yyspecial_routines67.force (yyvs67, yyval67, yyvsp67)
end
		end

	yy_do_action_735
			--|#line 3646 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3646 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3646")
end

yyval66 := new_feature_address (yyvs5.item (yyvsp5), yyvs73.item (yyvsp73)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp66 := yyvsp66 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp73 := yyvsp73 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_736
			--|#line 3648 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3648 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3648")
end

yyval66 := ast_factory.new_current_address (yyvs5.item (yyvsp5), yyvs11.item (yyvsp11)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp66 := yyvsp66 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp11 := yyvsp11 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_737
			--|#line 3650 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3650 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3650")
end

yyval66 := ast_factory.new_result_address (yyvs5.item (yyvsp5), yyvs18.item (yyvsp18)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp66 := yyvsp66 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp18 := yyvsp18 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_738
			--|#line 3652 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3652 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3652")
end

yyval66 := ast_factory.new_expression_address (yyvs5.item (yyvsp5), yyvs102.item (yyvsp102)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp66 := yyvsp66 + 1
	yyvsp5 := yyvsp5 -1
	yyvsp102 := yyvsp102 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_739
			--|#line 3659 "et_eiffel_parser.y"
		local
			yyval121: ET_WRITABLE
		do
--|#line 3659 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3659")
end

yyval121 := new_writable (yyvs13.item (yyvsp13)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp121 := yyvsp121 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp121 >= yyvsc121 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs121")
		end
		yyvsc121 := yyvsc121 + yyInitial_yyvs_size
		yyvs121 := yyspecial_routines121.aliased_resized_area (yyvs121, yyvsc121)
	end
	yyspecial_routines121.force (yyvs121, yyval121, yyvsp121)
end
		end

	yy_do_action_740
			--|#line 3661 "et_eiffel_parser.y"
		local
			yyval121: ET_WRITABLE
		do
--|#line 3661 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3661")
end

yyval121 := yyvs18.item (yyvsp18) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp121 := yyvsp121 + 1
	yyvsp18 := yyvsp18 -1
	if yyvsp121 >= yyvsc121 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs121")
		end
		yyvsc121 := yyvsc121 + yyInitial_yyvs_size
		yyvs121 := yyspecial_routines121.aliased_resized_area (yyvs121, yyvsc121)
	end
	yyspecial_routines121.force (yyvs121, yyval121, yyvsp121)
end
		end

	yy_do_action_741
			--|#line 3667 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3667 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3667")
end

yyval66 := yyvs66.item (yyvsp66) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_742
			--|#line 3669 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3669 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3669")
end

yyval66 := yyvs66.item (yyvsp66) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_743
			--|#line 3673 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3673 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3673")
end

yyval66 := ast_factory.new_infix_expression (yyvs66.item (yyvsp66 - 1), ast_factory.new_infix_free_operator (yyvs12.item (yyvsp12)), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp12 := yyvsp12 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_744
			--|#line 3675 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3675 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3675")
end

yyval66 := ast_factory.new_infix_expression (yyvs66.item (yyvsp66 - 1), ast_factory.new_infix_plus_operator (yyvs20.item (yyvsp20)), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp20 := yyvsp20 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_745
			--|#line 3677 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3677 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3677")
end

yyval66 := ast_factory.new_infix_expression (yyvs66.item (yyvsp66 - 1), ast_factory.new_infix_minus_operator (yyvs20.item (yyvsp20)), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp20 := yyvsp20 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_746
			--|#line 3679 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3679 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3679")
end

yyval66 := ast_factory.new_infix_expression (yyvs66.item (yyvsp66 - 1), yyvs20.item (yyvsp20), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp20 := yyvsp20 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_747
			--|#line 3681 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3681 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3681")
end

yyval66 := ast_factory.new_infix_expression (yyvs66.item (yyvsp66 - 1), yyvs20.item (yyvsp20), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp20 := yyvsp20 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_748
			--|#line 3683 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3683 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3683")
end

yyval66 := ast_factory.new_infix_expression (yyvs66.item (yyvsp66 - 1), yyvs20.item (yyvsp20), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp20 := yyvsp20 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_749
			--|#line 3685 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3685 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3685")
end

yyval66 := ast_factory.new_infix_expression (yyvs66.item (yyvsp66 - 1), yyvs20.item (yyvsp20), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp20 := yyvsp20 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_750
			--|#line 3687 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3687 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3687")
end

yyval66 := ast_factory.new_infix_expression (yyvs66.item (yyvsp66 - 1), yyvs20.item (yyvsp20), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp20 := yyvsp20 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_751
			--|#line 3689 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3689 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3689")
end

yyval66 := ast_factory.new_infix_expression (yyvs66.item (yyvsp66 - 1), yyvs20.item (yyvsp20), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp20 := yyvsp20 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_752
			--|#line 3691 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3691 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3691")
end

yyval66 := ast_factory.new_infix_expression (yyvs66.item (yyvsp66 - 1), yyvs20.item (yyvsp20), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp20 := yyvsp20 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_753
			--|#line 3693 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3693 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3693")
end

yyval66 := ast_factory.new_infix_expression (yyvs66.item (yyvsp66 - 1), yyvs20.item (yyvsp20), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp20 := yyvsp20 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_754
			--|#line 3695 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3695 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3695")
end

yyval66 := ast_factory.new_infix_expression (yyvs66.item (yyvsp66 - 1), yyvs20.item (yyvsp20), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp20 := yyvsp20 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_755
			--|#line 3697 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3697 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3697")
end

yyval66 := ast_factory.new_infix_expression (yyvs66.item (yyvsp66 - 1), yyvs15.item (yyvsp15), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp15 := yyvsp15 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_756
			--|#line 3699 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3699 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3699")
end

yyval66 := ast_factory.new_infix_expression (yyvs66.item (yyvsp66 - 1), yyvs15.item (yyvsp15), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp15 := yyvsp15 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_757
			--|#line 3701 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3701 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3701")
end

yyval66 := ast_factory.new_infix_expression (yyvs66.item (yyvsp66 - 1), yyvs15.item (yyvsp15), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp15 := yyvsp15 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_758
			--|#line 3703 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3703 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3703")
end

yyval66 := ast_factory.new_infix_expression (yyvs66.item (yyvsp66 - 1), ast_factory.new_infix_and_then_operator (yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp66 := yyvsp66 -1
	yyvsp15 := yyvsp15 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_759
			--|#line 3705 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3705 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3705")
end

yyval66 := ast_factory.new_infix_expression (yyvs66.item (yyvsp66 - 1), ast_factory.new_infix_or_else_operator (yyvs15.item (yyvsp15), yyvs2.item (yyvsp2)), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp66 := yyvsp66 -1
	yyvsp15 := yyvsp15 -1
	yyvsp2 := yyvsp2 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_760
			--|#line 3707 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3707 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3707")
end

yyval66 := ast_factory.new_infix_expression (yyvs66.item (yyvsp66 - 1), yyvs15.item (yyvsp15), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp15 := yyvsp15 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_761
			--|#line 3709 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3709 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3709")
end

yyval66 := ast_factory.new_equality_expression (yyvs66.item (yyvsp66 - 1), yyvs5.item (yyvsp5), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_762
			--|#line 3711 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3711 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3711")
end

yyval66 := ast_factory.new_equality_expression (yyvs66.item (yyvsp66 - 1), yyvs5.item (yyvsp5), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_763
			--|#line 3713 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3713 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3713")
end

yyval66 := ast_factory.new_object_equality_expression (yyvs66.item (yyvsp66 - 1), yyvs5.item (yyvsp5), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_764
			--|#line 3715 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3715 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3715")
end

yyval66 := ast_factory.new_object_equality_expression (yyvs66.item (yyvsp66 - 1), yyvs5.item (yyvsp5), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_765
			--|#line 3719 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3719 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3719")
end

yyval66 := yyvs66.item (yyvsp66) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_766
			--|#line 3721 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3721 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3721")
end

yyval66 := yyvs14.item (yyvsp14) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp14 := yyvsp14 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_767
			--|#line 3723 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3723 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3723")
end

yyval66 := yyvs17.item (yyvsp17) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp17 := yyvsp17 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_768
			--|#line 3725 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3725 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3725")
end

yyval66 := yyvs66.item (yyvsp66) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_769
			--|#line 3727 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3727 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3727")
end

yyval66 := yyvs37.item (yyvsp37) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp37 := yyvsp37 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_770
			--|#line 3729 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3729 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3729")
end

yyval66 := ast_factory.new_manifest_type (yyvs5.item (yyvsp5 - 1), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp66 := yyvsp66 + 1
	yyvsp5 := yyvsp5 -2
	yyvsp115 := yyvsp115 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_771
			--|#line 3733 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3733 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3733")
end

yyval66 := yyvs66.item (yyvsp66) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_772
			--|#line 3735 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3735 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3735")
end

yyval66 := yyvs37.item (yyvsp37) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp37 := yyvsp37 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_773
			--|#line 3737 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3737 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3737")
end

yyval66 := yyvs58.item (yyvsp58) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp58 := yyvsp58 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_774
			--|#line 3739 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3739 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3739")
end

yyval66 := yyvs25.item (yyvsp25) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp25 := yyvsp25 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_775
			--|#line 3741 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3741 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3741")
end

yyval66 := yyvs25.item (yyvsp25) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp25 := yyvsp25 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_776
			--|#line 3743 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3743 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3743")
end

yyval66 := yyvs100.item (yyvsp100) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp100 := yyvsp100 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_777
			--|#line 3745 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3745 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3745")
end

yyval66 := yyvs14.item (yyvsp14) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp14 := yyvsp14 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_778
			--|#line 3747 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3747 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3747")
end

yyval66 := yyvs17.item (yyvsp17) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp17 := yyvsp17 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_779
			--|#line 3749 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3749 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3749")
end

yyval66 := new_prefix_plus_expression (yyvs20.item (yyvsp20), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp20 := yyvsp20 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_780
			--|#line 3751 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3751 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3751")
end

yyval66 := new_prefix_minus_expression (yyvs20.item (yyvsp20), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp20 := yyvsp20 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_781
			--|#line 3753 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3753 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3753")
end

yyval66 := ast_factory.new_prefix_expression (yyvs15.item (yyvsp15), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp15 := yyvsp15 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_782
			--|#line 3755 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3755 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3755")
end

yyval66 := ast_factory.new_prefix_expression (ast_factory.new_prefix_free_operator (yyvs12.item (yyvsp12)), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp12 := yyvsp12 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_783
			--|#line 3757 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3757 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3757")
end

yyval66 := ast_factory.new_old_expression (yyvs2.item (yyvsp2), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_784
			--|#line 3759 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3759 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3759")
end

			if current_system.is_ise and then current_system.ise_version < ise_6_1_0 then
				raise_error
			else
				yyval66 := new_old_object_test (yyvs5.item (yyvsp5 - 2), yyvs13.item (yyvsp13), yyvs5.item (yyvsp5 - 1), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5), yyvs66.item (yyvsp66))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 6
	yyvsp5 := yyvsp5 -3
	yyvsp13 := yyvsp13 -1
	yyvsp115 := yyvsp115 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_785
			--|#line 3767 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3767 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3767")
end

yyval66 := ast_factory.new_object_test (yyvs2.item (yyvsp2), Void, yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp2 := yyvsp2 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_786
			--|#line 3769 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3769 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3769")
end

yyval66 := ast_factory.new_object_test (yyvs2.item (yyvsp2), ast_factory.new_target_type (yyvs5.item (yyvsp5 - 1), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5)), yyvs66.item (yyvsp66)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp2 := yyvsp2 -1
	yyvsp5 := yyvsp5 -2
	yyvsp115 := yyvsp115 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_787
			--|#line 3771 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3771 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3771")
end

yyval66 := new_named_object_test (yyvs2.item (yyvsp2 - 1), Void, yyvs66.item (yyvsp66), yyvs2.item (yyvsp2), yyvs13.item (yyvsp13)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp2 := yyvsp2 -2
	yyvsp13 := yyvsp13 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_788
			--|#line 3773 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3773 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3773")
end

yyval66 := new_named_object_test (yyvs2.item (yyvsp2 - 1), ast_factory.new_target_type (yyvs5.item (yyvsp5 - 1), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5)), yyvs66.item (yyvsp66), yyvs2.item (yyvsp2), yyvs13.item (yyvsp13)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp2 := yyvsp2 -2
	yyvsp5 := yyvsp5 -2
	yyvsp115 := yyvsp115 -1
	yyvsp13 := yyvsp13 -1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_789
			--|#line 3777 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3777 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3777")
end

yyval66 := yyvs66.item (yyvsp66) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_790
			--|#line 3779 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3779 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3779")
end

yyval66 := yyvs113.item (yyvsp113) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp113 := yyvsp113 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_791
			--|#line 3781 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3781 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3781")
end

yyval66 := yyvs66.item (yyvsp66) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_792
			--|#line 3783 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3783 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3783")
end

yyval66 := yyvs18.item (yyvsp18) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp18 := yyvsp18 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_793
			--|#line 3785 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3785 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3785")
end

yyval66 := yyvs11.item (yyvsp11) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp11 := yyvsp11 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_794
			--|#line 3787 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3787 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3787")
end

yyval66 := yyvs102.item (yyvsp102) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp102 := yyvsp102 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_795
			--|#line 3789 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3789 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3789")
end

yyval66 := yyvs8.item (yyvsp8) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp8 := yyvsp8 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_796
			--|#line 3791 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3791 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3791")
end

yyval66 := yyvs38.item (yyvsp38) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp38 := yyvsp38 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_797
			--|#line 3793 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3793 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3793")
end

yyval66 := yyvs87.item (yyvsp87) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp87 := yyvsp87 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_798
			--|#line 3795 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3795 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3795")
end

yyval66 := yyvs21.item (yyvsp21) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp21 := yyvsp21 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_799
			--|#line 3797 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3797 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3797")
end

yyval66 := yyvs10.item (yyvsp10) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp10 := yyvsp10 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_800
			--|#line 3799 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3799 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3799")
end

yyval66 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp16 := yyvsp16 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_801
			--|#line 3801 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3801 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3801")
end

yyval66 := new_once_manifest_string (yyvs2.item (yyvsp2), yyvs16.item (yyvsp16)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp66 := yyvsp66 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp16 := yyvsp16 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_802
			--|#line 3834 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3834 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3834")
end

yyval66 := yyvs7.item (yyvsp7) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp7 := yyvsp7 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_803
			--|#line 3836 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3836 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3836")
end

yyval66 := yyvs97.item (yyvsp97) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp97 := yyvsp97 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_804
			--|#line 3838 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3838 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3838")
end

yyval66 := yyvs114.item (yyvsp114) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp114 := yyvsp114 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_805
			--|#line 3840 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3840 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3840")
end

yyval66 := yyvs66.item (yyvsp66) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_806
			--|#line 3844 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3844 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3844")
end

yyval66 := yyvs66.item (yyvsp66) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_807
			--|#line 3846 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3846 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3846")
end

yyval66 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp16 := yyvsp16 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_808
			--|#line 3848 "et_eiffel_parser.y"
		local
			yyval66: ET_EXPRESSION
		do
--|#line 3848 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3848")
end

yyval66 := yyvs10.item (yyvsp10) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp66 := yyvsp66 + 1
	yyvsp10 := yyvsp10 -1
	if yyvsp66 >= yyvsc66 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs66")
		end
		yyvsc66 := yyvsc66 + yyInitial_yyvs_size
		yyvs66 := yyspecial_routines66.aliased_resized_area (yyvs66, yyvsc66)
	end
	yyspecial_routines66.force (yyvs66, yyval66, yyvsp66)
end
		end

	yy_do_action_809
			--|#line 3852 "et_eiffel_parser.y"
		local
			yyval37: ET_BRACKET_EXPRESSION
		do
--|#line 3852 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3852")
end

yyval37 := yyvs37.item (yyvsp37) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines37.force (yyvs37, yyval37, yyvsp37)
end
		end

	yy_do_action_810
			--|#line 3854 "et_eiffel_parser.y"
		local
			yyval37: ET_BRACKET_EXPRESSION
		do
--|#line 3854 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3854")
end

yyval37 := yyvs37.item (yyvsp37) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines37.force (yyvs37, yyval37, yyvsp37)
end
		end

	yy_do_action_811
			--|#line 3858 "et_eiffel_parser.y"
		local
			yyval37: ET_BRACKET_EXPRESSION
		do
--|#line 3858 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3858")
end

			yyval37 := ast_factory.new_bracket_expression (yyvs66.item (yyvsp66), yyvs23.item (yyvsp23), yyvs36.item (yyvsp36))
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp66 := yyvsp66 -1
	yyvsp23 := yyvsp23 -1
	yyvsp36 := yyvsp36 -1
	yyspecial_routines37.force (yyvs37, yyval37, yyvsp37)
end
		end

	yy_do_action_812
			--|#line 3858 "et_eiffel_parser.y"
		local
			yyval37: ET_BRACKET_EXPRESSION
		do
--|#line 3858 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3858")
end

			add_symbol (yyvs23.item (yyvsp23))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp37 := yyvsp37 + 1
	if yyvsp37 >= yyvsc37 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs37")
		end
		yyvsc37 := yyvsc37 + yyInitial_yyvs_size
		yyvs37 := yyspecial_routines37.aliased_resized_area (yyvs37, yyvsc37)
	end
	yyspecial_routines37.force (yyvs37, yyval37, yyvsp37)
end
		end

	yy_do_action_813
			--|#line 3871 "et_eiffel_parser.y"
		local
			yyval37: ET_BRACKET_EXPRESSION
		do
--|#line 3871 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3871")
end

			yyval37 := ast_factory.new_bracket_expression (yyvs66.item (yyvsp66), yyvs23.item (yyvsp23), yyvs36.item (yyvsp36))
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp66 := yyvsp66 -1
	yyvsp23 := yyvsp23 -1
	yyvsp36 := yyvsp36 -1
	yyspecial_routines37.force (yyvs37, yyval37, yyvsp37)
end
		end

	yy_do_action_814
			--|#line 3871 "et_eiffel_parser.y"
		local
			yyval37: ET_BRACKET_EXPRESSION
		do
--|#line 3871 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3871")
end

			add_symbol (yyvs23.item (yyvsp23))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp37 := yyvsp37 + 1
	if yyvsp37 >= yyvsc37 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs37")
		end
		yyvsc37 := yyvsc37 + yyInitial_yyvs_size
		yyvs37 := yyspecial_routines37.aliased_resized_area (yyvs37, yyvsc37)
	end
	yyspecial_routines37.force (yyvs37, yyval37, yyvsp37)
end
		end

	yy_do_action_815
			--|#line 3884 "et_eiffel_parser.y"
		local
			yyval36: ET_BRACKET_ARGUMENT_LIST
		do
--|#line 3884 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3884")
end

			if yyvs66.item (yyvsp66) /= Void then
				yyval36 := ast_factory.new_bracket_arguments (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval36 /= Void then
					yyval36.put_first (yyvs66.item (yyvsp66))
				end
			else
				yyval36 := ast_factory.new_bracket_arguments (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp36 := yyvsp36 + 1
	yyvsp66 := yyvsp66 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp36 >= yyvsc36 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs36")
		end
		yyvsc36 := yyvsc36 + yyInitial_yyvs_size
		yyvs36 := yyspecial_routines36.aliased_resized_area (yyvs36, yyvsc36)
	end
	yyspecial_routines36.force (yyvs36, yyval36, yyvsp36)
end
		end

	yy_do_action_816
			--|#line 3895 "et_eiffel_parser.y"
		local
			yyval36: ET_BRACKET_ARGUMENT_LIST
		do
--|#line 3895 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3895")
end

			yyval36 := ast_factory.new_bracket_arguments (last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval36 /= Void and yyvs67.item (yyvsp67) /= Void then
				yyval36.put_first (yyvs67.item (yyvsp67))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp36 := yyvsp36 + 1
	yyvsp67 := yyvsp67 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp36 >= yyvsc36 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs36")
		end
		yyvsc36 := yyvsc36 + yyInitial_yyvs_size
		yyvs36 := yyspecial_routines36.aliased_resized_area (yyvs36, yyvsc36)
	end
	yyspecial_routines36.force (yyvs36, yyval36, yyvsp36)
end
		end

	yy_do_action_817
			--|#line 3903 "et_eiffel_parser.y"
		local
			yyval36: ET_BRACKET_ARGUMENT_LIST
		do
--|#line 3903 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3903")
end

			yyval36 := yyvs36.item (yyvsp36)
			if yyval36 /= Void and yyvs67.item (yyvsp67) /= Void then
				yyval36.put_first (yyvs67.item (yyvsp67))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp67 := yyvsp67 -1
	yyspecial_routines36.force (yyvs36, yyval36, yyvsp36)
end
		end

	yy_do_action_818
			--|#line 3912 "et_eiffel_parser.y"
		local
			yyval102: ET_PARENTHESIZED_EXPRESSION
		do
--|#line 3912 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3912")
end

			remove_symbol
			remove_counter
		 	yyval102 := ast_factory.new_parenthesized_expression (yyvs5.item (yyvsp5 - 1), yyvs66.item (yyvsp66), yyvs5.item (yyvsp5))
		 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp102 := yyvsp102 + 1
	yyvsp5 := yyvsp5 -2
	yyvsp66 := yyvsp66 -1
	if yyvsp102 >= yyvsc102 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs102")
		end
		yyvsc102 := yyvsc102 + yyInitial_yyvs_size
		yyvs102 := yyspecial_routines102.aliased_resized_area (yyvs102, yyvsc102)
	end
	yyspecial_routines102.force (yyvs102, yyval102, yyvsp102)
end
		end

	yy_do_action_819
			--|#line 3920 "et_eiffel_parser.y"
		local
			yyval97: ET_MANIFEST_ARRAY
		do
--|#line 3920 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3920")
end

yyval97 := ast_factory.new_manifest_array (yyvs5.item (yyvsp5 - 1), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp97 := yyvsp97 + 1
	yyvsp5 := yyvsp5 -2
	if yyvsp97 >= yyvsc97 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs97")
		end
		yyvsc97 := yyvsc97 + yyInitial_yyvs_size
		yyvs97 := yyspecial_routines97.aliased_resized_area (yyvs97, yyvsc97)
	end
	yyspecial_routines97.force (yyvs97, yyval97, yyvsp97)
end
		end

	yy_do_action_820
			--|#line 3922 "et_eiffel_parser.y"
		local
			yyval97: ET_MANIFEST_ARRAY
		do
--|#line 3922 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3922")
end

			yyval97 := yyvs97.item (yyvsp97)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp97 := yyvsp97 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines97.force (yyvs97, yyval97, yyvsp97)
end
		end

	yy_do_action_821
			--|#line 3922 "et_eiffel_parser.y"
		local
			yyval97: ET_MANIFEST_ARRAY
		do
--|#line 3922 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3922")
end

			add_symbol (yyvs5.item (yyvsp5))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp97 := yyvsp97 + 1
	if yyvsp97 >= yyvsc97 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs97")
		end
		yyvsc97 := yyvsc97 + yyInitial_yyvs_size
		yyvs97 := yyspecial_routines97.aliased_resized_area (yyvs97, yyvsc97)
	end
	yyspecial_routines97.force (yyvs97, yyval97, yyvsp97)
end
		end

	yy_do_action_822
			--|#line 3935 "et_eiffel_parser.y"
		local
			yyval97: ET_MANIFEST_ARRAY
		do
--|#line 3935 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3935")
end

			if yyvs66.item (yyvsp66) /= Void then
				yyval97 := ast_factory.new_manifest_array (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval97 /= Void then
					yyval97.put_first (yyvs66.item (yyvsp66))
				end
			else
				yyval97 := ast_factory.new_manifest_array (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp97 := yyvsp97 + 1
	yyvsp66 := yyvsp66 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp97 >= yyvsc97 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs97")
		end
		yyvsc97 := yyvsc97 + yyInitial_yyvs_size
		yyvs97 := yyspecial_routines97.aliased_resized_area (yyvs97, yyvsc97)
	end
	yyspecial_routines97.force (yyvs97, yyval97, yyvsp97)
end
		end

	yy_do_action_823
			--|#line 3946 "et_eiffel_parser.y"
		local
			yyval97: ET_MANIFEST_ARRAY
		do
--|#line 3946 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3946")
end

			yyval97 := ast_factory.new_manifest_array (last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval97 /= Void and yyvs67.item (yyvsp67) /= Void then
				yyval97.put_first (yyvs67.item (yyvsp67))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp97 := yyvsp97 + 1
	yyvsp67 := yyvsp67 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp97 >= yyvsc97 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs97")
		end
		yyvsc97 := yyvsc97 + yyInitial_yyvs_size
		yyvs97 := yyspecial_routines97.aliased_resized_area (yyvs97, yyvsc97)
	end
	yyspecial_routines97.force (yyvs97, yyval97, yyvsp97)
end
		end

	yy_do_action_824
			--|#line 3954 "et_eiffel_parser.y"
		local
			yyval97: ET_MANIFEST_ARRAY
		do
--|#line 3954 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3954")
end

			yyval97 := yyvs97.item (yyvsp97)
			if yyval97 /= Void and yyvs67.item (yyvsp67) /= Void then
				yyval97.put_first (yyvs67.item (yyvsp67))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp67 := yyvsp67 -1
	yyspecial_routines97.force (yyvs97, yyval97, yyvsp97)
end
		end

	yy_do_action_825
			--|#line 3963 "et_eiffel_parser.y"
		local
			yyval100: ET_MANIFEST_TUPLE
		do
--|#line 3963 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3963")
end

yyval100 := ast_factory.new_manifest_tuple (yyvs23.item (yyvsp23), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp100 := yyvsp100 + 1
	yyvsp23 := yyvsp23 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp100 >= yyvsc100 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs100")
		end
		yyvsc100 := yyvsc100 + yyInitial_yyvs_size
		yyvs100 := yyspecial_routines100.aliased_resized_area (yyvs100, yyvsc100)
	end
	yyspecial_routines100.force (yyvs100, yyval100, yyvsp100)
end
		end

	yy_do_action_826
			--|#line 3965 "et_eiffel_parser.y"
		local
			yyval100: ET_MANIFEST_TUPLE
		do
--|#line 3965 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3965")
end

			yyval100 := yyvs100.item (yyvsp100)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp100 := yyvsp100 -1
	yyvsp23 := yyvsp23 -1
	yyspecial_routines100.force (yyvs100, yyval100, yyvsp100)
end
		end

	yy_do_action_827
			--|#line 3965 "et_eiffel_parser.y"
		local
			yyval100: ET_MANIFEST_TUPLE
		do
--|#line 3965 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3965")
end

			add_symbol (yyvs23.item (yyvsp23))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp100 := yyvsp100 + 1
	if yyvsp100 >= yyvsc100 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs100")
		end
		yyvsc100 := yyvsc100 + yyInitial_yyvs_size
		yyvs100 := yyspecial_routines100.aliased_resized_area (yyvs100, yyvsc100)
	end
	yyspecial_routines100.force (yyvs100, yyval100, yyvsp100)
end
		end

	yy_do_action_828
			--|#line 3978 "et_eiffel_parser.y"
		local
			yyval100: ET_MANIFEST_TUPLE
		do
--|#line 3978 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3978")
end

			if yyvs66.item (yyvsp66) /= Void then
				yyval100 := ast_factory.new_manifest_tuple (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval100 /= Void then
					yyval100.put_first (yyvs66.item (yyvsp66))
				end
			else
				yyval100 := ast_factory.new_manifest_tuple (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp100 := yyvsp100 + 1
	yyvsp66 := yyvsp66 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp100 >= yyvsc100 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs100")
		end
		yyvsc100 := yyvsc100 + yyInitial_yyvs_size
		yyvs100 := yyspecial_routines100.aliased_resized_area (yyvs100, yyvsc100)
	end
	yyspecial_routines100.force (yyvs100, yyval100, yyvsp100)
end
		end

	yy_do_action_829
			--|#line 3989 "et_eiffel_parser.y"
		local
			yyval100: ET_MANIFEST_TUPLE
		do
--|#line 3989 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3989")
end

			yyval100 := ast_factory.new_manifest_tuple (last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval100 /= Void and yyvs67.item (yyvsp67) /= Void then
				yyval100.put_first (yyvs67.item (yyvsp67))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp100 := yyvsp100 + 1
	yyvsp67 := yyvsp67 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp100 >= yyvsc100 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs100")
		end
		yyvsc100 := yyvsc100 + yyInitial_yyvs_size
		yyvs100 := yyspecial_routines100.aliased_resized_area (yyvs100, yyvsc100)
	end
	yyspecial_routines100.force (yyvs100, yyval100, yyvsp100)
end
		end

	yy_do_action_830
			--|#line 3997 "et_eiffel_parser.y"
		local
			yyval100: ET_MANIFEST_TUPLE
		do
--|#line 3997 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 3997")
end

			yyval100 := yyvs100.item (yyvsp100)
			if yyval100 /= Void and yyvs67.item (yyvsp67) /= Void then
				yyval100.put_first (yyvs67.item (yyvsp67))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp67 := yyvsp67 -1
	yyspecial_routines100.force (yyvs100, yyval100, yyvsp100)
end
		end

	yy_do_action_831
			--|#line 4006 "et_eiffel_parser.y"
		local
			yyval114: ET_STRIP_EXPRESSION
		do
--|#line 4006 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4006")
end

yyval114 := ast_factory.new_strip_expression (yyvs2.item (yyvsp2), yyvs5.item (yyvsp5 - 1), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp114 := yyvsp114 + 1
	yyvsp2 := yyvsp2 -1
	yyvsp5 := yyvsp5 -2
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_832
			--|#line 4008 "et_eiffel_parser.y"
		local
			yyval114: ET_STRIP_EXPRESSION
		do
--|#line 4008 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4008")
end

			yyval114 := yyvs114.item (yyvsp114)
			remove_keyword
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp114 := yyvsp114 -1
	yyvsp2 := yyvsp2 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_833
			--|#line 4008 "et_eiffel_parser.y"
		local
			yyval114: ET_STRIP_EXPRESSION
		do
--|#line 4008 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4008")
end

			add_keyword (yyvs2.item (yyvsp2))
			add_symbol (yyvs5.item (yyvsp5))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp114 := yyvsp114 + 1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_834
			--|#line 4023 "et_eiffel_parser.y"
		local
			yyval114: ET_STRIP_EXPRESSION
		do
--|#line 4023 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4023")
end

			if yyvs73.item (yyvsp73) /= Void then
				yyval114 := ast_factory.new_strip_expression (last_keyword, last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval114 /= Void then
					yyval114.put_first (yyvs73.item (yyvsp73))
				end
			else
				yyval114 := ast_factory.new_strip_expression (last_keyword, last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp114 := yyvsp114 + 1
	yyvsp73 := yyvsp73 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_835
			--|#line 4034 "et_eiffel_parser.y"
		local
			yyval114: ET_STRIP_EXPRESSION
		do
--|#line 4034 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4034")
end

			yyval114 := ast_factory.new_strip_expression (last_keyword, last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval114 /= Void and yyvs74.item (yyvsp74) /= Void then
				yyval114.put_first (yyvs74.item (yyvsp74))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp114 := yyvsp114 + 1
	yyvsp74 := yyvsp74 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp114 >= yyvsc114 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs114")
		end
		yyvsc114 := yyvsc114 + yyInitial_yyvs_size
		yyvs114 := yyspecial_routines114.aliased_resized_area (yyvs114, yyvsc114)
	end
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_836
			--|#line 4042 "et_eiffel_parser.y"
		local
			yyval114: ET_STRIP_EXPRESSION
		do
--|#line 4042 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4042")
end

			yyval114 := yyvs114.item (yyvsp114)
			if yyval114 /= Void and yyvs74.item (yyvsp74) /= Void then
				yyval114.put_first (yyvs74.item (yyvsp74))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp74 := yyvsp74 -1
	yyspecial_routines114.force (yyvs114, yyval114, yyvsp114)
end
		end

	yy_do_action_837
			--|#line 4051 "et_eiffel_parser.y"
		local
			yyval50: ET_CONSTANT
		do
--|#line 4051 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4051")
end

yyval50 := yyvs8.item (yyvsp8) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp50 := yyvsp50 + 1
	yyvsp8 := yyvsp8 -1
	if yyvsp50 >= yyvsc50 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs50")
		end
		yyvsc50 := yyvsc50 + yyInitial_yyvs_size
		yyvs50 := yyspecial_routines50.aliased_resized_area (yyvs50, yyvsc50)
	end
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_838
			--|#line 4053 "et_eiffel_parser.y"
		local
			yyval50: ET_CONSTANT
		do
--|#line 4053 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4053")
end

yyval50 := yyvs10.item (yyvsp10) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp50 := yyvsp50 + 1
	yyvsp10 := yyvsp10 -1
	if yyvsp50 >= yyvsc50 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs50")
		end
		yyvsc50 := yyvsc50 + yyInitial_yyvs_size
		yyvs50 := yyspecial_routines50.aliased_resized_area (yyvs50, yyvsc50)
	end
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_839
			--|#line 4055 "et_eiffel_parser.y"
		local
			yyval50: ET_CONSTANT
		do
--|#line 4055 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4055")
end

yyval50 := yyvs14.item (yyvsp14) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp50 := yyvsp50 + 1
	yyvsp14 := yyvsp14 -1
	if yyvsp50 >= yyvsc50 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs50")
		end
		yyvsc50 := yyvsc50 + yyInitial_yyvs_size
		yyvs50 := yyspecial_routines50.aliased_resized_area (yyvs50, yyvsc50)
	end
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_840
			--|#line 4057 "et_eiffel_parser.y"
		local
			yyval50: ET_CONSTANT
		do
--|#line 4057 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4057")
end

yyval50 := yyvs17.item (yyvsp17) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp50 := yyvsp50 + 1
	yyvsp17 := yyvsp17 -1
	if yyvsp50 >= yyvsc50 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs50")
		end
		yyvsc50 := yyvsc50 + yyInitial_yyvs_size
		yyvs50 := yyspecial_routines50.aliased_resized_area (yyvs50, yyvsc50)
	end
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_841
			--|#line 4059 "et_eiffel_parser.y"
		local
			yyval50: ET_CONSTANT
		do
--|#line 4059 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4059")
end

yyval50 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp50 := yyvsp50 + 1
	yyvsp16 := yyvsp16 -1
	if yyvsp50 >= yyvsc50 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs50")
		end
		yyvsc50 := yyvsc50 + yyInitial_yyvs_size
		yyvs50 := yyspecial_routines50.aliased_resized_area (yyvs50, yyvsc50)
	end
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_842
			--|#line 4061 "et_eiffel_parser.y"
		local
			yyval50: ET_CONSTANT
		do
--|#line 4061 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4061")
end

yyval50 := yyvs7.item (yyvsp7) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp50 := yyvsp50 + 1
	yyvsp7 := yyvsp7 -1
	if yyvsp50 >= yyvsc50 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs50")
		end
		yyvsc50 := yyvsc50 + yyInitial_yyvs_size
		yyvs50 := yyspecial_routines50.aliased_resized_area (yyvs50, yyvsc50)
	end
	yyspecial_routines50.force (yyvs50, yyval50, yyvsp50)
end
		end

	yy_do_action_843
			--|#line 4065 "et_eiffel_parser.y"
		local
			yyval25: ET_ACROSS_EXPRESSION
		do
--|#line 4065 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4065")
end

yyval25 := new_across_some_expression (yyvs25.item (yyvsp25), yyvs96.item (yyvsp96), yyvs49.item (yyvsp49), ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs66.item (yyvsp66)), yyvs118.item (yyvsp118), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp96 := yyvsp96 -1
	yyvsp49 := yyvsp49 -1
	yyvsp2 := yyvsp2 -2
	yyvsp66 := yyvsp66 -1
	yyvsp118 := yyvsp118 -1
	yyspecial_routines25.force (yyvs25, yyval25, yyvsp25)
end
		end

	yy_do_action_844
			--|#line 4069 "et_eiffel_parser.y"
		local
			yyval25: ET_ACROSS_EXPRESSION
		do
--|#line 4069 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4069")
end

yyval25 := new_across_all_expression (yyvs25.item (yyvsp25), yyvs96.item (yyvsp96), yyvs49.item (yyvsp49), ast_factory.new_conditional (yyvs2.item (yyvsp2 - 1), yyvs66.item (yyvsp66)), yyvs118.item (yyvsp118), yyvs2.item (yyvsp2)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 7
	yyvsp96 := yyvsp96 -1
	yyvsp49 := yyvsp49 -1
	yyvsp2 := yyvsp2 -2
	yyvsp66 := yyvsp66 -1
	yyvsp118 := yyvsp118 -1
	yyspecial_routines25.force (yyvs25, yyval25, yyvsp25)
end
		end

	yy_do_action_845
			--|#line 4073 "et_eiffel_parser.y"
		local
			yyval25: ET_ACROSS_EXPRESSION
		do
--|#line 4073 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4073")
end

yyval25 := new_across_expression_header (yyvs2.item (yyvsp2 - 1), yyvs66.item (yyvsp66), yyvs2.item (yyvsp2), yyvs13.item (yyvsp13)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp25 := yyvsp25 + 1
	yyvsp2 := yyvsp2 -2
	yyvsp66 := yyvsp66 -1
	yyvsp13 := yyvsp13 -1
	if yyvsp25 >= yyvsc25 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs25")
		end
		yyvsc25 := yyvsc25 + yyInitial_yyvs_size
		yyvs25 := yyspecial_routines25.aliased_resized_area (yyvs25, yyvsc25)
	end
	yyspecial_routines25.force (yyvs25, yyval25, yyvsp25)
end
		end

	yy_do_action_846
			--|#line 4079 "et_eiffel_parser.y"
		local
			yyval38: ET_CALL_AGENT
		do
--|#line 4079 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4079")
end

yyval38 := ast_factory.new_call_agent (yyvs3.item (yyvsp3), Void, yyvs73.item (yyvsp73), yyvs32.item (yyvsp32)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp38 := yyvsp38 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp73 := yyvsp73 -1
	yyvsp32 := yyvsp32 -1
	if yyvsp38 >= yyvsc38 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs38")
		end
		yyvsc38 := yyvsc38 + yyInitial_yyvs_size
		yyvs38 := yyspecial_routines38.aliased_resized_area (yyvs38, yyvsc38)
	end
	yyspecial_routines38.force (yyvs38, yyval38, yyvsp38)
end
		end

	yy_do_action_847
			--|#line 4081 "et_eiffel_parser.y"
		local
			yyval38: ET_CALL_AGENT
		do
--|#line 4081 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4081")
end

yyval38 := ast_factory.new_call_agent (yyvs3.item (yyvsp3), yyvs33.item (yyvsp33), ast_factory.new_dot_feature_name (yyvs5.item (yyvsp5), yyvs73.item (yyvsp73)), yyvs32.item (yyvsp32)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 5
	yyvsp38 := yyvsp38 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp33 := yyvsp33 -1
	yyvsp5 := yyvsp5 -1
	yyvsp73 := yyvsp73 -1
	yyvsp32 := yyvsp32 -1
	if yyvsp38 >= yyvsc38 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs38")
		end
		yyvsc38 := yyvsc38 + yyInitial_yyvs_size
		yyvs38 := yyspecial_routines38.aliased_resized_area (yyvs38, yyvsc38)
	end
	yyspecial_routines38.force (yyvs38, yyval38, yyvsp38)
end
		end

	yy_do_action_848
			--|#line 4085 "et_eiffel_parser.y"
		local
			yyval87: ET_INLINE_AGENT
		do
--|#line 4085 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4085")
end

			set_inline_agent_actual_arguments (yyvs87.item (yyvsp87), yyvs32.item (yyvsp32))
			yyval87 := yyvs87.item (yyvsp87)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp32 := yyvsp32 -1
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_849
			--|#line 4092 "et_eiffel_parser.y"
		local
			yyval87: ET_INLINE_AGENT
		do
--|#line 4092 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4092")
end

			yyval87 := ast_factory.new_do_function_inline_agent (yyvs3.item (yyvsp3), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs48.item (yyvsp48 - 1), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval87)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 10
	yyvsp87 := yyvsp87 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp1 := yyvsp1 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_850
			--|#line 4102 "et_eiffel_parser.y"
		local
			yyval87: ET_INLINE_AGENT
		do
--|#line 4102 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4102")
end

			yyval87 := ast_factory.new_do_function_inline_agent (yyvs3.item (yyvsp3), yyvs77.item (yyvsp77), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs48.item (yyvsp48 - 1), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval87)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 10
	yyvsp87 := yyvsp87 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp77 := yyvsp77 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_851
			--|#line 4108 "et_eiffel_parser.y"
		local
			yyval87: ET_INLINE_AGENT
		do
--|#line 4108 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4108")
end

			yyval87 := ast_factory.new_once_function_inline_agent (yyvs3.item (yyvsp3), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs99.item (yyvsp99), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs48.item (yyvsp48 - 1)), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval87)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 12
	yyvsp87 := yyvsp87 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp1 := yyvsp1 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp2 := yyvsp2 -2
	yyvsp99 := yyvsp99 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_852
			--|#line 4114 "et_eiffel_parser.y"
		local
			yyval87: ET_INLINE_AGENT
		do
--|#line 4114 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4114")
end

			yyval87 := ast_factory.new_once_function_inline_agent (yyvs3.item (yyvsp3), yyvs77.item (yyvsp77), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs99.item (yyvsp99), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs48.item (yyvsp48 - 1)), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval87)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 12
	yyvsp87 := yyvsp87 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp77 := yyvsp77 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp2 := yyvsp2 -2
	yyvsp99 := yyvsp99 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_853
			--|#line 4120 "et_eiffel_parser.y"
		local
			yyval87: ET_INLINE_AGENT
		do
--|#line 4120 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4120")
end

			yyval87 := ast_factory.new_external_function_inline_agent (yyvs3.item (yyvsp3), Void, ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs107.item (yyvsp107), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs16.item (yyvsp16)), yyvs69.item (yyvsp69), yyvs106.item (yyvsp106), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval87)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 10
	yyvsp87 := yyvsp87 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp1 := yyvsp1 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp107 := yyvsp107 -1
	yyvsp2 := yyvsp2 -2
	yyvsp16 := yyvsp16 -1
	yyvsp69 := yyvsp69 -1
	yyvsp106 := yyvsp106 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_854
			--|#line 4126 "et_eiffel_parser.y"
		local
			yyval87: ET_INLINE_AGENT
		do
--|#line 4126 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4126")
end

			yyval87 := ast_factory.new_external_function_inline_agent (yyvs3.item (yyvsp3), yyvs77.item (yyvsp77), ast_factory.new_colon_type (yyvs5.item (yyvsp5), yyvs115.item (yyvsp115)), yyvs107.item (yyvsp107), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs16.item (yyvsp16)), yyvs69.item (yyvsp69), yyvs106.item (yyvsp106), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval87)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 10
	yyvsp87 := yyvsp87 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp77 := yyvsp77 -1
	yyvsp5 := yyvsp5 -1
	yyvsp115 := yyvsp115 -1
	yyvsp107 := yyvsp107 -1
	yyvsp2 := yyvsp2 -2
	yyvsp16 := yyvsp16 -1
	yyvsp69 := yyvsp69 -1
	yyvsp106 := yyvsp106 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_855
			--|#line 4132 "et_eiffel_parser.y"
		local
			yyval87: ET_INLINE_AGENT
		do
--|#line 4132 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4132")
end

			yyval87 := ast_factory.new_do_procedure_inline_agent (yyvs3.item (yyvsp3), Void, yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs48.item (yyvsp48 - 1), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval87)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp87 := yyvsp87 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp1 := yyvsp1 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_856
			--|#line 4138 "et_eiffel_parser.y"
		local
			yyval87: ET_INLINE_AGENT
		do
--|#line 4138 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4138")
end

			yyval87 := ast_factory.new_do_procedure_inline_agent (yyvs3.item (yyvsp3), yyvs77.item (yyvsp77), yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs48.item (yyvsp48 - 1), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval87)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp87 := yyvsp87 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp77 := yyvsp77 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	yyvsp2 := yyvsp2 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_857
			--|#line 4144 "et_eiffel_parser.y"
		local
			yyval87: ET_INLINE_AGENT
		do
--|#line 4144 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4144")
end

			yyval87 := ast_factory.new_once_procedure_inline_agent (yyvs3.item (yyvsp3), Void, yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs99.item (yyvsp99), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs48.item (yyvsp48 - 1)), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval87)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 10
	yyvsp87 := yyvsp87 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp1 := yyvsp1 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp2 := yyvsp2 -2
	yyvsp99 := yyvsp99 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_858
			--|#line 4150 "et_eiffel_parser.y"
		local
			yyval87: ET_INLINE_AGENT
		do
--|#line 4150 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4150")
end

			yyval87 := ast_factory.new_once_procedure_inline_agent (yyvs3.item (yyvsp3), yyvs77.item (yyvsp77), yyvs107.item (yyvsp107), yyvs95.item (yyvsp95), yyvs99.item (yyvsp99), ast_factory.new_once_compound (yyvs2.item (yyvsp2 - 1), yyvs48.item (yyvsp48 - 1)), yyvs106.item (yyvsp106), yyvs48.item (yyvsp48), yyvs2.item (yyvsp2), Void)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 10
	yyvsp87 := yyvsp87 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp77 := yyvsp77 -1
	yyvsp107 := yyvsp107 -1
	yyvsp95 := yyvsp95 -1
	yyvsp2 := yyvsp2 -2
	yyvsp99 := yyvsp99 -1
	yyvsp48 := yyvsp48 -2
	yyvsp106 := yyvsp106 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_859
			--|#line 4155 "et_eiffel_parser.y"
		local
			yyval87: ET_INLINE_AGENT
		do
--|#line 4155 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4155")
end

			yyval87 := ast_factory.new_external_procedure_inline_agent (yyvs3.item (yyvsp3), Void, yyvs107.item (yyvsp107), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs16.item (yyvsp16)), yyvs69.item (yyvsp69), yyvs106.item (yyvsp106), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval87)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp87 := yyvsp87 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp1 := yyvsp1 -1
	yyvsp107 := yyvsp107 -1
	yyvsp2 := yyvsp2 -2
	yyvsp16 := yyvsp16 -1
	yyvsp69 := yyvsp69 -1
	yyvsp106 := yyvsp106 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_860
			--|#line 4161 "et_eiffel_parser.y"
		local
			yyval87: ET_INLINE_AGENT
		do
--|#line 4161 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4161")
end

			yyval87 := ast_factory.new_external_procedure_inline_agent (yyvs3.item (yyvsp3), yyvs77.item (yyvsp77), yyvs107.item (yyvsp107), ast_factory.new_external_language (yyvs2.item (yyvsp2 - 1), yyvs16.item (yyvsp16)), yyvs69.item (yyvsp69), yyvs106.item (yyvsp106), yyvs2.item (yyvsp2), Void)
			register_inline_agent (yyval87)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 8
	yyvsp87 := yyvsp87 + 1
	yyvsp3 := yyvsp3 -1
	yyvsp77 := yyvsp77 -1
	yyvsp107 := yyvsp107 -1
	yyvsp2 := yyvsp2 -2
	yyvsp16 := yyvsp16 -1
	yyvsp69 := yyvsp69 -1
	yyvsp106 := yyvsp106 -1
	if yyvsp87 >= yyvsc87 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs87")
		end
		yyvsc87 := yyvsc87 + yyInitial_yyvs_size
		yyvs87 := yyspecial_routines87.aliased_resized_area (yyvs87, yyvsc87)
	end
	yyspecial_routines87.force (yyvs87, yyval87, yyvsp87)
end
		end

	yy_do_action_861
			--|#line 4169 "et_eiffel_parser.y"
		local
			yyval77: ET_FORMAL_ARGUMENT_LIST
		do
--|#line 4169 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4169")
end

			yyval77 := yyvs77.item (yyvsp77)
			set_start_closure (yyval77)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines77.force (yyvs77, yyval77, yyvsp77)
end
		end

	yy_do_action_862
			--|#line 4176 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 4176 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4176")
end

set_start_closure (Void) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_action_863
			--|#line 4180 "et_eiffel_parser.y"
		local
			yyval33: ET_AGENT_TARGET
		do
--|#line 4180 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4180")
end

yyval33 := new_agent_identifier_target (yyvs13.item (yyvsp13)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp33 := yyvsp33 + 1
	yyvsp13 := yyvsp13 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_864
			--|#line 4182 "et_eiffel_parser.y"
		local
			yyval33: ET_AGENT_TARGET
		do
--|#line 4182 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4182")
end

yyval33 := yyvs102.item (yyvsp102) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp33 := yyvsp33 + 1
	yyvsp102 := yyvsp102 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_865
			--|#line 4184 "et_eiffel_parser.y"
		local
			yyval33: ET_AGENT_TARGET
		do
--|#line 4184 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4184")
end

yyval33 := yyvs18.item (yyvsp18) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp33 := yyvsp33 + 1
	yyvsp18 := yyvsp18 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_866
			--|#line 4186 "et_eiffel_parser.y"
		local
			yyval33: ET_AGENT_TARGET
		do
--|#line 4186 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4186")
end

yyval33 := yyvs11.item (yyvsp11) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp33 := yyvsp33 + 1
	yyvsp11 := yyvsp11 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_867
			--|#line 4188 "et_eiffel_parser.y"
		local
			yyval33: ET_AGENT_TARGET
		do
--|#line 4188 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4188")
end

yyval33 := ast_factory.new_agent_open_target (yyvs5.item (yyvsp5 - 1), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp33 := yyvsp33 + 1
	yyvsp5 := yyvsp5 -2
	yyvsp115 := yyvsp115 -1
	if yyvsp33 >= yyvsc33 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs33")
		end
		yyvsc33 := yyvsc33 + yyInitial_yyvs_size
		yyvs33 := yyspecial_routines33.aliased_resized_area (yyvs33, yyvsc33)
	end
	yyspecial_routines33.force (yyvs33, yyval33, yyvsp33)
end
		end

	yy_do_action_868
			--|#line 4192 "et_eiffel_parser.y"
		local
			yyval32: ET_AGENT_ARGUMENT_OPERAND_LIST
		do
--|#line 4192 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4192")
end


if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp32 := yyvsp32 + 1
	if yyvsp32 >= yyvsc32 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs32")
		end
		yyvsc32 := yyvsc32 + yyInitial_yyvs_size
		yyvs32 := yyspecial_routines32.aliased_resized_area (yyvs32, yyvsc32)
	end
	yyspecial_routines32.force (yyvs32, yyval32, yyvsp32)
end
		end

	yy_do_action_869
			--|#line 4194 "et_eiffel_parser.y"
		local
			yyval32: ET_AGENT_ARGUMENT_OPERAND_LIST
		do
--|#line 4194 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4194")
end

yyval32 := ast_factory.new_agent_argument_operands (yyvs5.item (yyvsp5 - 1), yyvs5.item (yyvsp5), 0) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp32 := yyvsp32 + 1
	yyvsp5 := yyvsp5 -2
	if yyvsp32 >= yyvsc32 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs32")
		end
		yyvsc32 := yyvsc32 + yyInitial_yyvs_size
		yyvs32 := yyspecial_routines32.aliased_resized_area (yyvs32, yyvsc32)
	end
	yyspecial_routines32.force (yyvs32, yyval32, yyvsp32)
end
		end

	yy_do_action_870
			--|#line 4196 "et_eiffel_parser.y"
		local
			yyval32: ET_AGENT_ARGUMENT_OPERAND_LIST
		do
--|#line 4196 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4196")
end

			yyval32 := yyvs32.item (yyvsp32)
			remove_symbol
			remove_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 3
	yyvsp32 := yyvsp32 -1
	yyvsp5 := yyvsp5 -1
	yyspecial_routines32.force (yyvs32, yyval32, yyvsp32)
end
		end

	yy_do_action_871
			--|#line 4196 "et_eiffel_parser.y"
		local
			yyval32: ET_AGENT_ARGUMENT_OPERAND_LIST
		do
--|#line 4196 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4196")
end

			add_symbol (yyvs5.item (yyvsp5))
			add_counter
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp32 := yyvsp32 + 1
	if yyvsp32 >= yyvsc32 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs32")
		end
		yyvsc32 := yyvsc32 + yyInitial_yyvs_size
		yyvs32 := yyspecial_routines32.aliased_resized_area (yyvs32, yyvsc32)
	end
	yyspecial_routines32.force (yyvs32, yyval32, yyvsp32)
end
		end

	yy_do_action_872
			--|#line 4209 "et_eiffel_parser.y"
		local
			yyval32: ET_AGENT_ARGUMENT_OPERAND_LIST
		do
--|#line 4209 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4209")
end

			if yyvs30.item (yyvsp30) /= Void then
				yyval32 := ast_factory.new_agent_argument_operands (last_symbol, yyvs5.item (yyvsp5), counter_value + 1)
				if yyval32 /= Void then
					yyval32.put_first (yyvs30.item (yyvsp30))
				end
			else
				yyval32 := ast_factory.new_agent_argument_operands (last_symbol, yyvs5.item (yyvsp5), counter_value)
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp32 := yyvsp32 + 1
	yyvsp30 := yyvsp30 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp32 >= yyvsc32 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs32")
		end
		yyvsc32 := yyvsc32 + yyInitial_yyvs_size
		yyvs32 := yyspecial_routines32.aliased_resized_area (yyvs32, yyvsc32)
	end
	yyspecial_routines32.force (yyvs32, yyval32, yyvsp32)
end
		end

	yy_do_action_873
			--|#line 4220 "et_eiffel_parser.y"
		local
			yyval32: ET_AGENT_ARGUMENT_OPERAND_LIST
		do
--|#line 4220 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4220")
end

			yyval32 := ast_factory.new_agent_argument_operands (last_symbol, yyvs5.item (yyvsp5), counter_value)
			if yyval32 /= Void and yyvs31.item (yyvsp31) /= Void then
				yyval32.put_first (yyvs31.item (yyvsp31))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp32 := yyvsp32 + 1
	yyvsp31 := yyvsp31 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp32 >= yyvsc32 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs32")
		end
		yyvsc32 := yyvsc32 + yyInitial_yyvs_size
		yyvs32 := yyspecial_routines32.aliased_resized_area (yyvs32, yyvsc32)
	end
	yyspecial_routines32.force (yyvs32, yyval32, yyvsp32)
end
		end

	yy_do_action_874
			--|#line 4228 "et_eiffel_parser.y"
		local
			yyval32: ET_AGENT_ARGUMENT_OPERAND_LIST
		do
--|#line 4228 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4228")
end

			yyval32 := yyvs32.item (yyvsp32)
			if yyval32 /= Void and yyvs31.item (yyvsp31) /= Void then
				yyval32.put_first (yyvs31.item (yyvsp31))
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp31 := yyvsp31 -1
	yyspecial_routines32.force (yyvs32, yyval32, yyvsp32)
end
		end

	yy_do_action_875
			--|#line 4237 "et_eiffel_parser.y"
		local
			yyval31: ET_AGENT_ARGUMENT_OPERAND_ITEM
		do
--|#line 4237 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4237")
end

			yyval31 := ast_factory.new_agent_argument_operand_comma (yyvs30.item (yyvsp30), yyvs5.item (yyvsp5))
			if yyval31 /= Void then
				increment_counter
			end
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp31 := yyvsp31 + 1
	yyvsp30 := yyvsp30 -1
	yyvsp5 := yyvsp5 -1
	if yyvsp31 >= yyvsc31 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs31")
		end
		yyvsc31 := yyvsc31 + yyInitial_yyvs_size
		yyvs31 := yyspecial_routines31.aliased_resized_area (yyvs31, yyvsc31)
	end
	yyspecial_routines31.force (yyvs31, yyval31, yyvsp31)
end
		end

	yy_do_action_876
			--|#line 4246 "et_eiffel_parser.y"
		local
			yyval30: ET_AGENT_ARGUMENT_OPERAND
		do
--|#line 4246 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4246")
end

yyval30 := yyvs66.item (yyvsp66) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp30 := yyvsp30 + 1
	yyvsp66 := yyvsp66 -1
	if yyvsp30 >= yyvsc30 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs30")
		end
		yyvsc30 := yyvsc30 + yyInitial_yyvs_size
		yyvs30 := yyspecial_routines30.aliased_resized_area (yyvs30, yyvsc30)
	end
	yyspecial_routines30.force (yyvs30, yyval30, yyvsp30)
end
		end

	yy_do_action_877
			--|#line 4248 "et_eiffel_parser.y"
		local
			yyval30: ET_AGENT_ARGUMENT_OPERAND
		do
--|#line 4248 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4248")
end

yyval30 := yyvs24.item (yyvsp24) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp30 := yyvsp30 + 1
	yyvsp24 := yyvsp24 -1
	if yyvsp30 >= yyvsc30 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs30")
		end
		yyvsc30 := yyvsc30 + yyInitial_yyvs_size
		yyvs30 := yyspecial_routines30.aliased_resized_area (yyvs30, yyvsc30)
	end
	yyspecial_routines30.force (yyvs30, yyval30, yyvsp30)
end
		end

	yy_do_action_878
			--|#line 4250 "et_eiffel_parser.y"
		local
			yyval30: ET_AGENT_ARGUMENT_OPERAND
		do
--|#line 4250 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4250")
end

yyval30 := ast_factory.new_agent_typed_open_argument (yyvs5.item (yyvsp5 - 1), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5), yyvs24.item (yyvsp24)) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp30 := yyvsp30 + 1
	yyvsp5 := yyvsp5 -2
	yyvsp115 := yyvsp115 -1
	yyvsp24 := yyvsp24 -1
	if yyvsp30 >= yyvsc30 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs30")
		end
		yyvsc30 := yyvsc30 + yyInitial_yyvs_size
		yyvs30 := yyspecial_routines30.aliased_resized_area (yyvs30, yyvsc30)
	end
	yyspecial_routines30.force (yyvs30, yyval30, yyvsp30)
end
		end

	yy_do_action_879
			--|#line 4256 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4256 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4256")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_880
			--|#line 4258 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4258 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4258")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_881
			--|#line 4262 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4262 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4262")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_882
			--|#line 4264 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4264 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4264")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_883
			--|#line 4266 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4266 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4266")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_884
			--|#line 4268 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4268 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4268")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_885
			--|#line 4270 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4270 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4270")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_886
			--|#line 4272 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4272 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4272")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_887
			--|#line 4274 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4274 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4274")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_888
			--|#line 4276 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4276 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4276")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_889
			--|#line 4278 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4278 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4278")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_890
			--|#line 4280 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4280 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4280")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_891
			--|#line 4282 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4282 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4282")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_892
			--|#line 4284 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4284 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4284")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_893
			--|#line 4286 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4286 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4286")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_894
			--|#line 4288 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4288 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4288")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_895
			--|#line 4290 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4290 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4290")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_896
			--|#line 4292 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4292 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4292")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_897
			--|#line 4294 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4294 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4294")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_898
			--|#line 4296 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4296 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4296")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_899
			--|#line 4298 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4298 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4298")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_900
			--|#line 4300 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4300 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4300")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_901
			--|#line 4302 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4302 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4302")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_902
			--|#line 4304 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4304 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4304")
end

yyval16 := yyvs16.item (yyvsp16) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_903
			--|#line 4306 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4306 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4306")
end

abort 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp16 := yyvsp16 + 1
	yyvsp6 := yyvsp6 -1
	if yyvsp16 >= yyvsc16 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs16")
		end
		yyvsc16 := yyvsc16 + yyInitial_yyvs_size
		yyvs16 := yyspecial_routines16.aliased_resized_area (yyvs16, yyvsc16)
	end
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_904
			--|#line 4310 "et_eiffel_parser.y"
		local
			yyval16: ET_MANIFEST_STRING
		do
--|#line 4310 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4310")
end

			yyval16 := yyvs16.item (yyvsp16)
			yyval16.set_cast_type (ast_factory.new_target_type (yyvs5.item (yyvsp5 - 1), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5)))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp5 := yyvsp5 -2
	yyvsp115 := yyvsp115 -1
	yyspecial_routines16.force (yyvs16, yyval16, yyvsp16)
end
		end

	yy_do_action_905
			--|#line 4317 "et_eiffel_parser.y"
		local
			yyval10: ET_CHARACTER_CONSTANT
		do
--|#line 4317 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4317")
end

yyval10 := yyvs10.item (yyvsp10) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines10.force (yyvs10, yyval10, yyvsp10)
end
		end

	yy_do_action_906
			--|#line 4319 "et_eiffel_parser.y"
		local
			yyval10: ET_CHARACTER_CONSTANT
		do
--|#line 4319 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4319")
end

yyval10 := yyvs10.item (yyvsp10) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines10.force (yyvs10, yyval10, yyvsp10)
end
		end

	yy_do_action_907
			--|#line 4323 "et_eiffel_parser.y"
		local
			yyval10: ET_CHARACTER_CONSTANT
		do
--|#line 4323 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4323")
end

yyval10 := yyvs10.item (yyvsp10) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines10.force (yyvs10, yyval10, yyvsp10)
end
		end

	yy_do_action_908
			--|#line 4325 "et_eiffel_parser.y"
		local
			yyval10: ET_CHARACTER_CONSTANT
		do
--|#line 4325 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4325")
end

abort 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyvsp10 := yyvsp10 + 1
	yyvsp6 := yyvsp6 -1
	if yyvsp10 >= yyvsc10 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs10")
		end
		yyvsc10 := yyvsc10 + yyInitial_yyvs_size
		yyvs10 := yyspecial_routines10.aliased_resized_area (yyvs10, yyvsc10)
	end
	yyspecial_routines10.force (yyvs10, yyval10, yyvsp10)
end
		end

	yy_do_action_909
			--|#line 4329 "et_eiffel_parser.y"
		local
			yyval10: ET_CHARACTER_CONSTANT
		do
--|#line 4329 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4329")
end

			yyval10 := yyvs10.item (yyvsp10)
			yyval10.set_cast_type (ast_factory.new_target_type (yyvs5.item (yyvsp5 - 1), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5)))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp5 := yyvsp5 -2
	yyvsp115 := yyvsp115 -1
	yyspecial_routines10.force (yyvs10, yyval10, yyvsp10)
end
		end

	yy_do_action_910
			--|#line 4336 "et_eiffel_parser.y"
		local
			yyval8: ET_BOOLEAN_CONSTANT
		do
--|#line 4336 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4336")
end

yyval8 := yyvs8.item (yyvsp8) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines8.force (yyvs8, yyval8, yyvsp8)
end
		end

	yy_do_action_911
			--|#line 4338 "et_eiffel_parser.y"
		local
			yyval8: ET_BOOLEAN_CONSTANT
		do
--|#line 4338 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4338")
end

yyval8 := yyvs8.item (yyvsp8) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines8.force (yyvs8, yyval8, yyvsp8)
end
		end

	yy_do_action_912
			--|#line 4342 "et_eiffel_parser.y"
		local
			yyval14: ET_INTEGER_CONSTANT
		do
--|#line 4342 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4342")
end

yyval14 := yyvs14.item (yyvsp14) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines14.force (yyvs14, yyval14, yyvsp14)
end
		end

	yy_do_action_913
			--|#line 4344 "et_eiffel_parser.y"
		local
			yyval14: ET_INTEGER_CONSTANT
		do
--|#line 4344 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4344")
end

yyval14 := yyvs14.item (yyvsp14) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines14.force (yyvs14, yyval14, yyvsp14)
end
		end

	yy_do_action_914
			--|#line 4348 "et_eiffel_parser.y"
		local
			yyval14: ET_INTEGER_CONSTANT
		do
--|#line 4348 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4348")
end

yyval14 := yyvs14.item (yyvsp14) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines14.force (yyvs14, yyval14, yyvsp14)
end
		end

	yy_do_action_915
			--|#line 4350 "et_eiffel_parser.y"
		local
			yyval14: ET_INTEGER_CONSTANT
		do
--|#line 4350 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4350")
end

yyval14 := yyvs14.item (yyvsp14) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines14.force (yyvs14, yyval14, yyvsp14)
end
		end

	yy_do_action_916
			--|#line 4354 "et_eiffel_parser.y"
		local
			yyval14: ET_INTEGER_CONSTANT
		do
--|#line 4354 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4354")
end

			yyval14 := yyvs14.item (yyvsp14)
			yyval14.set_sign (yyvs20.item (yyvsp20))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp20 := yyvsp20 -1
	yyspecial_routines14.force (yyvs14, yyval14, yyvsp14)
end
		end

	yy_do_action_917
			--|#line 4359 "et_eiffel_parser.y"
		local
			yyval14: ET_INTEGER_CONSTANT
		do
--|#line 4359 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4359")
end

			yyval14 := yyvs14.item (yyvsp14)
			yyval14.set_sign (yyvs20.item (yyvsp20))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp20 := yyvsp20 -1
	yyspecial_routines14.force (yyvs14, yyval14, yyvsp14)
end
		end

	yy_do_action_918
			--|#line 4366 "et_eiffel_parser.y"
		local
			yyval14: ET_INTEGER_CONSTANT
		do
--|#line 4366 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4366")
end

			yyval14 := yyvs14.item (yyvsp14)
			yyval14.set_cast_type (ast_factory.new_target_type (yyvs5.item (yyvsp5 - 1), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5)))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp5 := yyvsp5 -2
	yyvsp115 := yyvsp115 -1
	yyspecial_routines14.force (yyvs14, yyval14, yyvsp14)
end
		end

	yy_do_action_919
			--|#line 4373 "et_eiffel_parser.y"
		local
			yyval17: ET_REAL_CONSTANT
		do
--|#line 4373 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4373")
end

yyval17 := yyvs17.item (yyvsp17) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines17.force (yyvs17, yyval17, yyvsp17)
end
		end

	yy_do_action_920
			--|#line 4375 "et_eiffel_parser.y"
		local
			yyval17: ET_REAL_CONSTANT
		do
--|#line 4375 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4375")
end

yyval17 := yyvs17.item (yyvsp17) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines17.force (yyvs17, yyval17, yyvsp17)
end
		end

	yy_do_action_921
			--|#line 4379 "et_eiffel_parser.y"
		local
			yyval17: ET_REAL_CONSTANT
		do
--|#line 4379 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4379")
end

yyval17 := yyvs17.item (yyvsp17) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines17.force (yyvs17, yyval17, yyvsp17)
end
		end

	yy_do_action_922
			--|#line 4381 "et_eiffel_parser.y"
		local
			yyval17: ET_REAL_CONSTANT
		do
--|#line 4381 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4381")
end

yyval17 := yyvs17.item (yyvsp17) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines17.force (yyvs17, yyval17, yyvsp17)
end
		end

	yy_do_action_923
			--|#line 4385 "et_eiffel_parser.y"
		local
			yyval17: ET_REAL_CONSTANT
		do
--|#line 4385 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4385")
end

			yyval17 := yyvs17.item (yyvsp17)
			yyval17.set_sign (yyvs20.item (yyvsp20))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp20 := yyvsp20 -1
	yyspecial_routines17.force (yyvs17, yyval17, yyvsp17)
end
		end

	yy_do_action_924
			--|#line 4390 "et_eiffel_parser.y"
		local
			yyval17: ET_REAL_CONSTANT
		do
--|#line 4390 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4390")
end

			yyval17 := yyvs17.item (yyvsp17)
			yyval17.set_sign (yyvs20.item (yyvsp20))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 2
	yyvsp20 := yyvsp20 -1
	yyspecial_routines17.force (yyvs17, yyval17, yyvsp17)
end
		end

	yy_do_action_925
			--|#line 4397 "et_eiffel_parser.y"
		local
			yyval17: ET_REAL_CONSTANT
		do
--|#line 4397 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4397")
end

			yyval17 := yyvs17.item (yyvsp17)
			yyval17.set_cast_type (ast_factory.new_target_type (yyvs5.item (yyvsp5 - 1), yyvs115.item (yyvsp115), yyvs5.item (yyvsp5)))
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 4
	yyvsp5 := yyvsp5 -2
	yyvsp115 := yyvsp115 -1
	yyspecial_routines17.force (yyvs17, yyval17, yyvsp17)
end
		end

	yy_do_action_926
			--|#line 4404 "et_eiffel_parser.y"
		local
			yyval13: ET_IDENTIFIER
		do
--|#line 4404 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4404")
end

yyval13 := yyvs13.item (yyvsp13) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines13.force (yyvs13, yyval13, yyvsp13)
end
		end

	yy_do_action_927
			--|#line 4406 "et_eiffel_parser.y"
		local
			yyval13: ET_IDENTIFIER
		do
--|#line 4406 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4406")
end

yyval13 := yyvs13.item (yyvsp13) 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines13.force (yyvs13, yyval13, yyvsp13)
end
		end

	yy_do_action_928
			--|#line 4408 "et_eiffel_parser.y"
		local
			yyval13: ET_IDENTIFIER
		do
--|#line 4408 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4408")
end

				-- TO DO: reserved word `BIT'
			yyval13 := yyvs13.item (yyvsp13)
		
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 1
	yyspecial_routines13.force (yyvs13, yyval13, yyvsp13)
end
		end

	yy_do_action_929
			--|#line 4417 "et_eiffel_parser.y"
		local
			yyval1: detachable ANY
		do
--|#line 4417 "et_eiffel_parser.y"
debug ("GEYACC")
	std.error.put_line ("Executing parser user-code from file 'et_eiffel_parser.y' at line 4417")
end

add_counter 
if yy_parsing_status >= yyContinue then
	yyssp := yyssp - 0
	yyvsp1 := yyvsp1 + 1
	if yyvsp1 >= yyvsc1 then
		debug ("GEYACC")
			std.error.put_line ("Resize yyvs1")
		end
		yyvsc1 := yyvsc1 + yyInitial_yyvs_size
		yyvs1 := yyspecial_routines1.aliased_resized_area (yyvs1, yyvsc1)
	end
	yyspecial_routines1.force (yyvs1, yyval1, yyvsp1)
end
		end

	yy_do_error_action (yy_act: INTEGER)
			-- Execute error action.
		do
			if yy_act <= 199 then
				yy_do_error_action_0_199 (yy_act)
			elseif yy_act <= 399 then
				yy_do_error_action_200_399 (yy_act)
			elseif yy_act <= 599 then
				yy_do_error_action_400_599 (yy_act)
			elseif yy_act <= 799 then
				yy_do_error_action_600_799 (yy_act)
			elseif yy_act <= 999 then
				yy_do_error_action_800_999 (yy_act)
			elseif yy_act <= 1199 then
				yy_do_error_action_1000_1199 (yy_act)
			elseif yy_act <= 1399 then
				yy_do_error_action_1200_1399 (yy_act)
			elseif yy_act <= 1599 then
				yy_do_error_action_1400_1599 (yy_act)
			elseif yy_act <= 1799 then
				yy_do_error_action_1600_1799 (yy_act)
			else
					-- Default action.
				report_error ("parse error")
			end
		end

	yy_do_error_action_0_199 (yy_act: INTEGER)
			-- Execute error action.
		do
			inspect yy_act
			else
					-- Default action.
				report_error ("parse error")
			end
		end

	yy_do_error_action_200_399 (yy_act: INTEGER)
			-- Execute error action.
		do
			inspect yy_act
			else
					-- Default action.
				report_error ("parse error")
			end
		end

	yy_do_error_action_400_599 (yy_act: INTEGER)
			-- Execute error action.
		do
			inspect yy_act
			else
					-- Default action.
				report_error ("parse error")
			end
		end

	yy_do_error_action_600_799 (yy_act: INTEGER)
			-- Execute error action.
		do
			inspect yy_act
			else
					-- Default action.
				report_error ("parse error")
			end
		end

	yy_do_error_action_800_999 (yy_act: INTEGER)
			-- Execute error action.
		do
			inspect yy_act
			else
					-- Default action.
				report_error ("parse error")
			end
		end

	yy_do_error_action_1000_1199 (yy_act: INTEGER)
			-- Execute error action.
		do
			inspect yy_act
			else
					-- Default action.
				report_error ("parse error")
			end
		end

	yy_do_error_action_1200_1399 (yy_act: INTEGER)
			-- Execute error action.
		do
			inspect yy_act
			else
					-- Default action.
				report_error ("parse error")
			end
		end

	yy_do_error_action_1400_1599 (yy_act: INTEGER)
			-- Execute error action.
		do
			inspect yy_act
			else
					-- Default action.
				report_error ("parse error")
			end
		end

	yy_do_error_action_1600_1799 (yy_act: INTEGER)
			-- Execute error action.
		do
			inspect yy_act
			when 1755 then
					-- End-of-file expected action.
				report_eof_expected_error
			else
					-- Default action.
				report_error ("parse error")
			end
		end

feature {NONE} -- Table templates

	yytranslate_template: SPECIAL [INTEGER]
			-- Template for `yytranslate'
		once
			Result := yyfixed_array (<<
			    0,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,  133,    2,    2,  131,    2,    2,    2,
			  126,  127,  118,  135,  129,  134,  132,  111,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,  128,  140,
			  115,  136,  113,  142,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,  141,    2,  130,  117,    2,    2,    2,    2,    2,

			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,  124,    2,  125,  137,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,

			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    1,    2,    3,    4,
			    5,    6,    7,    8,    9,   10,   11,   12,   13,   14,
			   15,   16,   17,   18,   19,   20,   21,   22,   23,   24,
			   25,   26,   27,   28,   29,   30,   31,   32,   33,   34,
			   35,   36,   37,   38,   39,   40,   41,   42,   43,   44,

			   45,   46,   47,   48,   49,   50,   51,   52,   53,   54,
			   55,   56,   57,   58,   59,   60,   61,   62,   63,   64,
			   65,   66,   67,   68,   69,   70,   71,   72,   73,   74,
			   75,   76,   77,   78,   79,   80,   81,   82,   83,   84,
			   85,   86,   87,   88,   89,   90,   91,   92,   93,   94,
			   95,   96,   97,   98,   99,  100,  101,  102,  103,  104,
			  105,  106,  107,  108,  109,  110,  112,  114,  116,  119,
			  120,  121,  122,  123,  138,  139, yyDummy>>)
		end

	yyr1_template: SPECIAL [INTEGER]
			-- Template for `yyr1'
		once
			Result := yyfixed_array (<<
			    0,  375,  375,  183,  376,  376,  377,  182,  182,  182,
			  182,  182,  182,  379,  182,  182,  378,  276,  276,  380,
			  276,  276,  381,  277,  277,  279,  279,  382,  279,  383,
			  283,  285,  284,  278,  278,  278,  385,  278,  386,  280,
			  282,  282,  281,  281,  288,  288,  286,  286,  286,  286,
			  286,  286,  286,  286,  286,  287,  181,  181,  181,  181,
			  302,  302,  303,  303,  271,  271,  271,  387,  272,  272,
			  270,  269,  269,  269,  269,  269,  269,  269,  269,  269,
			  214,  214,  388,  215,  215,  215,  216,  216,  216,  216,
			  216,  216,  216,  216,  216,  216,  216,  216,  216,  216,

			  216,  216,  216,  216,  216,  216,  216,  216,  216,  216,
			  216,  217,  217,  217,  217,  217,  217,  217,  217,  217,
			  217,  217,  217,  217,  217,  217,  217,  217,  217,  217,
			  217,  217,  217,  217,  217,  217,  209,  209,  208,  208,
			  210,  210,  210,  210,  205,  212,  212,  211,  211,  211,
			  213,  213,  213,  213,  213,  213,  206,  207,  332,  332,
			  337,  337,  337,  338,  391,  334,  334,  334,  334,  334,
			  334,  335,  339,  339,  339,  339,  339,  340,  340,  340,
			  340,  336,  336,  355,  355,  392,  356,  356,  356,  353,
			  354,  234,  234,  393,  235,  235,  236,  236,  394,  233,

			  233,  233,  395,  233,  257,  257,  257,  186,  396,  186,
			  187,  187,  187,  187,  184,  185,  310,  310,  397,  311,
			  311,  308,  308,  398,  309,  309,  306,  306,  399,  307,
			  307,  305,  305,  305,  259,  227,  227,  226,  228,  228,
			  400,  224,  224,  224,  401,  224,  402,  224,  224,  224,
			  403,  224,  404,  225,  225,  225,  260,  220,  220,  221,
			  405,  222,  222,  222,  219,  218,  218,  367,  367,  406,
			  368,  368,  366,  255,  255,  254,  256,  256,  252,  252,
			  253,  253,  407,  407,  407,  407,  347,  347,  347,  347,
			  347,  347,  343,  343,  343,  343,  343,  343,  348,  348,

			  348,  348,  348,  348,  348,  348,  348,  348,  348,  348,
			  348,  348,  348,  348,  348,  348,  348,  348,  348,  348,
			  348,  344,  344,  344,  344,  344,  344,  344,  344,  304,
			  304,  357,  357,  251,  251,  164,  164,  258,  258,  258,
			  258,  258,  258,  258,  258,  258,  258,  258,  258,  258,
			  258,  258,  258,  258,  258,  258,  258,  258,  258,  258,
			  258,  258,  258,  258,  258,  258,  258,  258,  258,  258,
			  258,  258,  258,  258,  258,  258,  258,  258,  250,  250,
			  163,  163,  163,  163,  163,  163,  163,  163,  163,  163,
			  163,  163,  163,  163,  163,  163,  163,  163,  163,  163,

			  163,  163,  268,  265,  265,  361,  266,  266,  266,  266,
			  266,  266,  262,  261,  263,  264,  318,  318,  318,  408,
			  319,  319,  319,  319,  319,  319,  315,  314,  316,  317,
			  409,  409,  409,  409,  409,  409,  409,  409,  342,  342,
			  342,  342,  342,  341,  341,  341,  341,  341,  301,  301,
			  300,  300,  410,  321,  321,  320,  320,  369,  369,  370,
			  370,  189,  189,  362,  362,  363,  363,  363,  363,  363,
			  363,  363,  363,  363,  363,  363,  363,  363,  363,  363,
			  363,  363,  363,  363,  363,  363,  363,  363,  363,  363,
			  364,  364,  364,  364,  364,  364,  364,  364,  364,  364,

			  364,  364,  364,  364,  364,  364,  364,  364,  364,  364,
			  364,  364,  364,  364,  364,  365,  365,  365,  365,  365,
			  365,  365,  365,  365,  365,  365,  365,  365,  365,  365,
			  365,  365,  365,  365,  365,  365,  365,  365,  365,  365,
			  365,  274,  152,  152,  154,  154,  389,  153,  153,  153,
			  153,  390,  149,  155,  155,  156,  156,  156,  157,  157,
			  157,  157,  157,  157,  150,  151,  313,  313,  313,  312,
			  312,  312,  312,  312,  312,  312,  312,  312,  312,  312,
			  312,  312,  312,  312,  312,  312,  312,  312,  312,  312,
			  346,  346,  345,  345,  345,  345,  345,  345,  345,  345,

			  345,  345,  345,  345,  345,  345,  345,  345,  345,  345,
			  345,  190,  199,  191,  192,  193,  194,  195,  196,  197,
			  197,  198,  188,  201,  201,  202,  202,  200,  200,  411,
			  292,  292,  292,  292,  292,  292,  292,  292,  292,  292,
			  292,  292,  292,  292,  292,  292,  292,  175,  175,  175,
			  175,  412,  293,  293,  293,  293,  295,  295,  295,  295,
			  223,  223,  275,  275,  275,  275,  231,  232,  232,  230,
			  291,  291,  373,  373,  372,  372,  371,  179,  179,  413,
			  180,  180,  180,  178,  176,  176,  177,  177,  177,  177,
			  146,  203,  203,  229,  329,  329,  329,  414,  328,  328,

			  327,  294,  294,  294,  294,  294,  294,  294,  243,  243,
			  242,  171,  171,  358,  358,  240,  240,  239,  239,  239,
			  239,  239,  239,  239,  239,  238,  238,  147,  147,  147,
			  415,  148,  148,  148,  249,  241,  241,  241,  241,  374,
			  374,  237,  237,  246,  246,  246,  246,  246,  246,  246,
			  246,  246,  246,  246,  246,  246,  246,  246,  246,  246,
			  246,  246,  246,  246,  246,  247,  247,  247,  247,  247,
			  247,  248,  248,  248,  248,  248,  248,  248,  248,  248,
			  248,  248,  248,  248,  248,  248,  248,  248,  248,  245,
			  245,  245,  245,  245,  245,  245,  245,  245,  245,  245,

			  245,  245,  245,  245,  245,  245,  244,  244,  244,  167,
			  167,  168,  416,  169,  417,  166,  166,  166,  333,  322,
			  322,  418,  323,  323,  323,  330,  330,  419,  331,  331,
			  331,  359,  359,  420,  360,  360,  360,  204,  204,  204,
			  204,  204,  204,  144,  143,  145,  170,  170,  289,  290,
			  290,  290,  290,  290,  290,  290,  290,  290,  290,  290,
			  290,  267,  421,  162,  162,  162,  162,  162,  160,  160,
			  160,  422,  161,  161,  161,  159,  158,  158,  158,  324,
			  324,  326,  326,  326,  326,  326,  326,  326,  326,  326,
			  326,  326,  326,  326,  326,  326,  326,  326,  326,  326,

			  326,  326,  326,  326,  325,  172,  172,  174,  174,  173,
			  165,  165,  296,  296,  298,  298,  299,  299,  297,  349,
			  349,  351,  351,  352,  352,  350,  273,  273,  273,  384, yyDummy>>)
		end

	yytypes1_template: SPECIAL [INTEGER]
			-- Template for `yytypes1'
		local
			an_array: ARRAY [INTEGER]
		once
			create an_array.make_filled (0, 0, 1757)
			yytypes1_template_1 (an_array)
			yytypes1_template_2 (an_array)
			Result := yyfixed_array (an_array)
		end

	yytypes1_template_1 (an_array: ARRAY [INTEGER])
			-- Fill chunk #1 of template for `yytypes1'.
		do
			yyarray_subcopy (an_array, <<
			    1,    9,    2,    2,   45,   82,   82,   45,   82,   82,
			    2,   45,   45,    2,   82,   83,   83,    1,   82,   83,
			   83,    1,   23,   80,    2,    2,    2,    2,    2,   22,
			   82,   82,   13,   13,   13,   13,   83,   22,   82,   22,
			   82,   20,   20,    5,    6,    6,   17,   16,   16,   16,
			   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,
			   16,   16,   16,   16,   16,   16,   16,   16,   16,   14,
			   10,    8,    8,    7,    2,    8,   10,   10,   10,   58,
			   13,   83,   84,   85,   86,   14,   14,   14,   14,   16,
			   16,   16,   17,   17,   17,   17,    5,   80,    2,  101,

			    2,    2,    2,    2,   82,   82,    5,   82,   82,   17,
			   14,   17,   14,   24,    5,   13,   13,   13,    2,    2,
			    2,    2,    2,    2,   13,   92,   92,  109,  109,  115,
			  115,    5,   23,    2,  100,    5,    5,   13,   86,    2,
			    2,   78,   79,   80,   13,    5,   16,    2,  105,  105,
			    1,    2,    2,    2,   13,   86,   13,    2,    2,   13,
			   92,  109,   13,    2,    2,   13,   92,   23,   29,   29,
			    1,   20,   20,   13,   14,   13,    2,    2,   13,   92,
			   13,    2,    2,   13,   92,   13,    2,   13,   92,   13,
			   13,    5,   11,   13,   23,   29,    1,    5,    5,  115,

			    5,  100,    2,   86,   13,   13,    5,    5,   80,    5,
			  115,   60,    1,    2,    2,   57,   60,   71,   82,   90,
			    1,    1,   13,  103,  103,  104,  105,  105,   13,   13,
			   13,   29,   13,    2,   13,   92,    5,   11,   13,   29,
			   29,    5,   29,   13,    2,   13,   92,    5,   11,   13,
			   29,    5,    5,   24,    5,   13,   13,   13,    2,    2,
			    2,    2,    2,   28,   28,   28,   29,   29,   13,   13,
			   92,  115,  115,   29,   13,    2,   13,   92,    5,   11,
			   13,   29,    5,   29,   13,    2,   13,   92,    5,   11,
			   13,   29,    5,   29,    5,   11,   13,   29,    5,   29,

			   29,  115,    5,   13,   13,   13,   29,   13,   10,   14,
			   16,   17,    5,   20,   20,    5,    5,    5,    2,   21,
			   18,   17,   15,   14,   12,   11,    7,    5,    4,    3,
			    2,    2,    2,    2,    2,   25,   25,   25,    8,   37,
			   37,   38,   10,   10,   58,   66,   66,   66,   66,   66,
			   66,   66,   66,   66,   66,   66,   66,   67,   13,   87,
			   87,   14,   97,   16,   16,  100,  100,  102,   17,  113,
			  114,    5,    5,    5,   24,    5,   13,   13,    2,    2,
			    2,    2,    2,   54,   13,   92,    5,   57,   57,    2,
			    2,   59,   60,   57,    1,   71,   71,    1,   57,   90,

			   90,    2,    1,   82,    2,   60,   70,   70,   71,   29,
			   22,  105,  105,   22,  105,  105,  105,  105,   29,    5,
			   11,   13,   29,    5,  115,   13,   29,    5,   11,   13,
			   29,    5,  115,   13,   13,    2,   13,   13,    2,   13,
			    5,   29,    5,   13,   14,    5,   13,    2,   13,   13,
			    2,   13,   13,   13,   13,   13,   29,   13,   13,   13,
			   29,   29,    5,   29,    5,    5,   29,    5,   11,   13,
			   29,    5,  115,   13,   29,    5,   11,   13,   29,    5,
			  115,   13,  115,   13,    5,    5,    5,    5,   66,   66,
			   18,   11,    2,    2,   73,   13,  102,   13,   13,   13,

			   13,  115,   66,   66,   66,    5,   97,    5,    5,   27,
			    5,    5,   18,   11,   33,   73,   77,   77,   13,  102,
			    5,    1,   66,    5,   66,    5,   16,    5,    2,   96,
			   96,    5,    5,    5,    5,   20,   20,    5,    5,   20,
			   20,   20,   20,   20,   20,   20,   20,   20,   15,   15,
			   15,   15,   12,    5,    5,   23,   23,    5,  100,   27,
			    5,   32,   66,   54,   54,   13,    2,   13,   13,    2,
			   13,   23,   52,   52,    1,   13,   14,   13,    2,   13,
			   13,    2,   13,   13,   13,   13,   13,    2,   53,   23,
			   52,   52,    1,   71,    5,   47,   59,   47,   59,   60,

			   55,   56,   57,   73,   66,   13,    1,   90,   71,   82,
			    1,   45,    2,   47,   71,    2,   68,   73,   13,  108,
			  108,  110,  110,    1,    2,    2,    2,    2,    2,    2,
			   65,   91,   91,   91,  112,  115,   13,    5,  115,   13,
			    5,   29,   13,   13,   29,   29,   13,   13,   29,    1,
			    1,    1,   29,   13,   13,   29,   29,   13,   13,   29,
			   29,   29,   29,   29,    5,    5,  115,  115,   13,    5,
			  115,   13,    5,    5,    5,    1,    1,   13,   16,   16,
			   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,
			   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,

			   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,
			   16,   16,   16,   16,   16,   16,   16,   16,    5,    5,
			   66,   67,   97,    5,   27,   13,    5,  115,    5,   32,
			    5,    2,  107,   75,   75,   76,   76,   77,   13,    5,
			  107,    2,  115,    2,    5,  114,  115,    1,    2,   49,
			   66,   66,   66,   66,   66,   66,   66,   66,   66,   66,
			   66,   66,   66,   66,   66,   66,   66,    2,   66,    2,
			   66,   66,   13,   13,   37,   37,    5,   32,    5,   53,
			   53,   52,   13,   13,   52,   52,   13,   13,   52,    5,
			   24,    5,   13,   13,   13,    2,    2,    2,    2,    2,

			   51,   51,   51,   52,   52,   54,   54,   13,   13,   92,
			   52,   13,   13,   52,   52,   13,   13,   52,   52,   52,
			   52,   52,    2,   53,    5,   13,   13,   13,   52,   90,
			    5,   47,   59,   59,   74,   13,   59,   59,   60,    5,
			   57,    5,    5,   22,    5,   66,   13,   82,   90,    2,
			    1,    1,   45,    1,   68,  108,  110,    5,    5,    2,
			   77,   77,    2,  108,  110,    5,    2,   34,  108,  110,
			   91,   91,  112,   91,   65,   91,   91,    2,   91,   91,
			   91,   91,   65,   65,    5,    5,    5,    5,   29,   29,
			   29,   29,   29,   29,   29,   29,   29,   29,   29,   29,

			   29,    1,    1,   22,    5,    5,    5,    5,    5,    5,
			   13,   27,  115,    5,    5,    5,   97,   27,   66,   67,
			    5,    5,   73,  115,    2,    1,    2,    2,   95,   77,
			   13,   77,    5,   77,    5,   77,    5,    5,  115,    2,
			   95,   13,    5,   13,   73,   74,  114,    5,   66,    2,
			    2,   66,   66,   27,   27,   36,   66,   67,   36,   24,
			    5,   30,   31,   32,   66,   52,   52,   52,   52,   13,
			    2,   13,   13,    2,   13,    5,   52,    5,   13,   14,
			    5,   13,    2,   13,   13,    2,   13,   13,   13,   13,
			   13,   52,   13,   13,   13,   52,   52,    5,    5,    5, yyDummy>>,
			1, 1000, 0)
		end

	yytypes1_template_2 (an_array: ARRAY [INTEGER])
			-- Fill chunk #2 of template for `yytypes1'.
		do
			yyarray_subcopy (an_array, <<
			   52,   52,   52,   52,   52,   53,   74,   13,    5,    5,
			   82,   46,   46,   47,   13,   59,   59,    5,   59,    5,
			  117,  117,   22,   22,    5,    2,   82,    1,   45,    1,
			    5,  108,  110,  108,  110,  115,    5,    2,   82,   16,
			   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,
			   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,
			   16,   73,   74,   91,   91,   73,  111,  111,  112,   91,
			   22,   47,   64,   65,   91,   91,    2,   91,    5,   13,
			    5,   13,    5,   13,    5,   13,   13,    5,   13,    5,
			    5,   27,   27,   32,  107,    1,   95,   16,    2,    2,

			   48,  115,  107,   16,    2,   48,    5,   66,    5,    5,
			    5,  114,    5,   66,   66,    5,    5,   36,  115,    5,
			    5,    5,   32,   52,   13,   13,   52,   52,   13,   13,
			   52,    1,    1,    1,   52,   13,   13,   52,   52,   13,
			   13,   52,   52,   52,   52,   52,    5,    5,   54,    2,
			   53,    2,    1,    1,    2,    5,   47,    5,   47,    5,
			    5,  117,    5,   22,    1,    2,    1,  108,  110,    2,
			   35,  115,   82,  101,   91,    2,  112,    2,   64,   65,
			   91,    2,   91,   13,   13,   13,   13,   66,   27,    2,
			   95,   13,   93,   93,   94,   94,   95,    2,   69,    5,

			   99,   48,   48,    1,    2,  106,   22,    2,   95,   69,
			   99,  106,  115,    2,   13,    2,  118,  118,  118,    5,
			   52,   52,   52,   52,   52,   52,   52,   52,   52,   52,
			   52,   52,   52,    1,    1,   22,    5,    1,  115,  116,
			  117,    1,    1,   73,   22,    5,    2,   82,   35,  101,
			  107,   68,   72,   73,   74,   65,    2,   91,   16,    2,
			   48,    5,    5,   95,   95,   95,   95,   16,  106,    5,
			   99,   48,   22,    5,    5,   19,   18,    4,    2,    2,
			    2,    2,    2,    2,    2,    2,   26,   37,   37,   37,
			   39,   40,   48,   48,   61,   66,   66,   66,   66,   13,

			   81,   88,   89,   89,   89,   89,  121,    2,    1,    2,
			   48,   48,   16,    2,   48,  106,   48,   48,    5,   13,
			   27,   66,   13,    2,    2,   24,    1,    5,    5,  117,
			    1,    7,    2,    8,   10,   50,   14,   16,   17,    2,
			   50,   82,  101,    2,   82,  107,    2,    2,   95,    5,
			   72,    2,   69,   99,  106,  115,    2,   16,   98,   99,
			  106,   24,    5,   13,   13,    2,    2,    2,    2,    2,
			   13,   92,  115,  115,    5,   27,   66,   66,   66,   48,
			    5,   99,    5,   18,   13,  121,    1,   48,   48,    5,
			    5,   96,    5,    5,   27,   48,    5,    5,    1,   48,

			    2,   69,   99,  106,    2,  106,    2,    5,   22,   22,
			   22,   22,   22,  101,  107,   82,  101,    2,    2,   95,
			  106,   16,    2,   48,  106,   48,   48,   22,    5,    5,
			   99,   48,   13,    2,   13,   13,    2,   13,  121,   29,
			   13,   14,   13,    2,   13,   13,    2,   13,   13,   13,
			   13,   13,   29,    5,    5,   13,    2,  120,    1,    2,
			   48,  115,   48,  115,    5,    2,    2,   48,    1,   96,
			   66,   66,    2,  118,   13,   13,   48,   66,   66,  106,
			   48,   48,   48,   66,  107,    2,    2,   95,  101,  107,
			  106,   16,    2,   48,    2,   69,   99,  106,    2,  106,

			    2,    2,   29,   13,   13,   29,   29,   13,   13,   29,
			    5,   29,   13,   13,   29,   29,   13,   13,   29,   29,
			   29,   29,   29,  121,    5,    5,   13,    2,    2,   48,
			    2,   44,  119,  120,   48,    2,    2,   48,   63,    1,
			    5,    2,    5,   13,   48,   48,    2,    2,   48,   49,
			   66,    2,   27,   27,    2,  106,    2,    2,    2,    2,
			   95,  106,   16,    2,    2,   48,   48,  107,    2,    2,
			   95,    2,   69,   99,  106,   22,  106,   48,   48,   48,
			   29,   29,   29,   29,   13,   29,   29,   29,   29,    5,
			   13,   27,   48,    2,   44,   48,  120,   48,    2,    2,

			   48,    2,   62,   63,    5,  121,   27,    2,    2,   48,
			   48,   66,   48,  106,   16,    2,   48,    2,   69,   48,
			   99,  106,  106,    2,    2,   95,  106,   16,    2,   48,
			   22,  106,   48,   48,    2,  106,    2,    2,   27,   13,
			   27,    5,   10,   41,   42,   43,   44,   13,   14,  113,
			    2,   66,   63,   13,    5,   48,  118,    2,  118,   48,
			    2,    2,   69,   99,  106,   22,  106,   48,   48,   48,
			  106,   16,    2,   48,    2,   69,   99,  106,    2,  106,
			    2,   22,   48,   22,   27,  115,    5,    5,   44,   48,
			   27,   13,    2,    2,    2,   22,  106,   48,   48,    2,

			  106,    2,    2,    2,   69,   99,  106,   22,  106,   48,
			   48,   22,   48,   22,    2,    5,   42,   27,    2,  106,
			    2,   22,   48,   22,   22,   22,  106,   48,   48,    2,
			  106,    2,    2,   22,   22,   48,   22,    2,    2,  106,
			    2,   22,   48,   22,   22,    2,   22,   22,   48,   22,
			    2,   22,    2,   22,   22,    1,    1,    1, yyDummy>>,
			1, 758, 1000)
		end

	yytypes2_template: SPECIAL [INTEGER]
			-- Template for `yytypes2'
		once
			Result := yyfixed_array (<<
			    1,    1,    1,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    2,    2,    2,    2,    2,    2,    2,    2,    2,    2,
			    3,    4,    5,    5,    5,    5,    5,    5,    6,    7,
			    8,    8,    9,   10,   11,   12,   13,   13,   13,   14,
			   15,   15,   15,   15,   15,   16,   16,   16,   16,   16,
			   16,   16,   16,   16,   16,   16,   16,   16,   16,   16,

			   16,   16,   16,   16,   16,   16,   16,   17,   18,   19,
			   20,   20,   20,   20,   20,   20,   20,   20,   20,   21,
			    6,    6,    6,    2,    5,    5,    5,    5,    5,    5,
			    5,    5,    5,    5,   20,   20,    5,    5,    5,    5,
			   22,   23,   24, yyDummy>>)
		end

	yydefact_template: SPECIAL [INTEGER]
			-- Template for `yydefact'
		local
			an_array: ARRAY [INTEGER]
		once
			create an_array.make_filled (0, 0, 1757)
			yydefact_template_1 (an_array)
			yydefact_template_2 (an_array)
			Result := yyfixed_array (an_array)
		end

	yydefact_template_1 (an_array: ARRAY [INTEGER])
			-- Fill chunk #1 of template for `yydefact'.
		do
			yyarray_subcopy (an_array, <<
			   23,   23,   22,   19,    1,   24,   60,    2,  929,  929,
			   61,   64,    3,   62,   21,   27,   29,    0,   18,   36,
			   38,    0,   67,  158,   62,   62,   62,   63,    0,   32,
			  929,  929,  927,  928,  926,    0,   30,   42,  929,   43,
			  929,    0,    0,    0,  903,  908,  921,  881,  900,  899,
			  898,  902,  901,  897,  896,  895,  894,  893,  892,  891,
			  890,  889,  888,  887,  886,  885,  884,  883,  882,  914,
			  907,  910,  911,   52,    0,   47,   48,  906,  905,    0,
			   46,   39,   44,    0,   40,   49,  913,  912,  915,   51,
			  880,  879,   50,  920,  919,  922,   65,    0,    0,  160,

			    0,    0,    0,    0,   26,   28,    0,   35,   37,  924,
			  917,  923,  916,    0,    0,  553,    0,  541,    0,    0,
			    0,    0,    0,    0,  463,  477,    0,  589,  592,    0,
			  464,    0,  827,   53,    0,    0,   55,   46,   45,    0,
			    0,    0,    0,   66,   71,    0,  159,  164,  929,  929,
			    0,    0,    0,    0,   56,   31,  553,    0,    0,  542,
			    0,  568,  553,    0,    0,  542,    0,  546,  480,  554,
			    0,    0,    0,  479,  478,  553,    0,    0,  542,    0,
			  553,    0,    0,  542,    0,  553,    0,  542,    0,  542,
			  542,    0,  579,  569,  546,  465,    0,    0,    0,    0,

			  825,    0,   54,   41,   73,   72,   68,   70,   69,    0,
			    0,  257,    0,  260,  452,  929,  257,  448,   16,   23,
			   15,    0,  542,  172,  177,  173,  162,  163,   59,   58,
			   57,  488,  553,    0,  542,    0,    0,  587,  577,  475,
			  543,    0,  486,  553,    0,  542,    0,    0,  585,  575,
			  473,    0,  555,    0,    0,  927,  928,  926,    0,    0,
			    0,    0,    0,    0,    0,    0,  556,  557,    0,  463,
			  502,    0,    0,  484,  553,    0,  542,    0,    0,  583,
			  573,  471,    0,  482,  553,    0,  542,    0,    0,  581,
			  571,  469,    0,  481,    0,  580,  570,  467,    0,  468,

			  466,    0,  544,  553,    0,  541,  545,  591,  909,  918,
			  904,  925,  660,    0,    0,    0,  405,    0,    0,  798,
			  792,  778,    0,  777,    0,  793,  802,  821,  727,  862,
			    0,    0,    0,    0,    0,  775,  774,  453,  795,  769,
			  772,  796,  808,  799,  773,    0,    0,    0,  791,  805,
			  806,  789,  768,  771,  741,  742,  765,    0,  727,  797,
			  868,  766,  803,  807,  800,  776,  826,  794,  767,  790,
			  804,    0,    0,    0,    0,    0,  145,    0,    0,    0,
			    0,    0,    0,   74,  136,   98,    0,  929,  258,  246,
			  252,  240,  236,    0,  450,  274,  448,    0,  929,  449,

			   23,   16,   13,    0,  281,  237,  276,  278,  275,  165,
			  181,  174,  178,  182,  175,  179,  176,  180,  489,    0,
			  588,  578,  476,    0,    0,  609,  487,    0,  586,  576,
			  474,    0,    0,  607,  553,    0,  542,  553,    0,  542,
			  551,  554,  551,  504,  503,  551,  553,    0,  542,  553,
			    0,  542,  553,  542,  542,  542,  548,  927,  928,  926,
			  560,  559,    0,  490,  547,  552,  485,    0,  584,  574,
			  472,    0,    0,  605,  483,    0,  582,  572,  470,    0,
			    0,  603,    0,  602,    0,  551,  551,    0,  779,  780,
			  737,  736,    0,    0,  735,  337,  738,  927,  928,  926,

			    0,    0,  783,  781,  782,  819,    0,  730,    0,  715,
			  405,    0,  865,  866,    0,  868,  861,  438,  863,  864,
			    0,  438,    0,    0,  785,  833,  801,    0,  455,  454,
			  691,    0,    0,    0,    0,    0,    0,  828,  734,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,  812,  814,  829,  830,  717,
			  871,  848,    0,   76,   75,  145,    0,  136,  145,    0,
			  136,  546,  146,  101,    0,  100,   99,  145,    0,  136,
			  145,    0,  136,  145,  136,  136,  136,   82,   77,  546,
			  137,   86,    0,  448,  208,  244,    0,  250,    0,    0,

			  261,  262,  259,    0,  430,  727,  451,   23,  448,    0,
			    6,   60,   16,  280,  277,    0,  329,  378,  337,  283,
			  292,  282,  286,  279,  223,  228,  185,  218,  193,  171,
			  224,    0,  219,  229,  194,    0,  610,    0,    0,  608,
			    0,  513,  553,  542,  500,  511,  553,  542,  498,    0,
			    0,    0,  509,  553,  542,  496,  507,  553,  542,  494,
			  506,  492,  493,  491,  551,  551,  564,    0,  606,    0,
			    0,  604,    0,    0,    0,    0,    0,  727,  360,  338,
			  341,  375,  374,  373,  372,  371,  370,  369,  368,  367,
			  366,  365,  364,  363,  362,  361,  340,  339,  376,  377,

			  359,  357,  356,  354,  358,  355,  353,  352,  351,  350,
			  349,  348,  347,  346,  345,  344,  343,  342,    0,  770,
			    0,    0,  820,  728,    0,    0,  403,    0,    0,  846,
			    0,  439,  416,    0,    0,    0,    0,  404,  727,    0,
			  416,    0,    0,    0,  831,    0,    0,  456,    0,    0,
			  764,  762,  763,  761,  744,  745,  746,  748,  750,  751,
			  753,  752,  754,  747,  749,  760,  757,    0,  756,    0,
			  755,  743,  727,  727,    0,    0,  869,    0,  818,   79,
			   78,  109,  145,  136,   96,  107,  145,  136,   94,  147,
			    0,    0,  927,  928,  926,    0,    0,    0,    0,    0,

			    0,    0,    0,  148,  149,    0,    0,    0,  136,  123,
			  105,  145,  136,   92,  103,  145,  136,   90,  102,   88,
			   89,   87,   80,    0,  138,  145,    0,  541,  139,   23,
			  209,    0,    0,  245,  254,  253,    0,  251,  239,  264,
			  263,    0,    0,  431,  432,  434,  727,    0,   23,   16,
			   14,   23,   12,    6,  329,  293,  287,    0,    0,  330,
			  402,  329,   23,  295,  289,    0,    0,  379,  285,  284,
			    0,    0,    0,    0,    0,  225,  219,  170,  220,  229,
			  230,    0,  195,  224,    0,    0,    0,    0,  514,  501,
			  512,  499,  550,  562,  563,  549,  561,  510,  497,  508,

			  495,    0,    0,  565,  558,    0,    0,    0,    0,    0,
			  590,  661,    0,    0,  822,  823,  824,  729,    0,    0,
			  727,  867,  868,  438,  440,  441,  419,    0,    0,  409,
			  413,  408,  406,  411,  407,  410,  412,    0,  438,    0,
			    0,  845,    0,  787,    0,    0,  832,    0,  692,    0,
			    0,  759,  758,  726,  724,  811,    0,    0,  813,  877,
			    0,    0,    0,  870,  876,  110,   97,  108,   95,  145,
			    0,  136,  145,    0,  136,  551,  146,  551,  125,  124,
			  551,  145,    0,  136,  145,    0,  136,  145,  136,  136,
			  136,  141,  927,  928,  926,  152,  151,  140,  144,    0, yyDummy>>,
			1, 1000, 0)
		end

	yydefact_template_2 (an_array: ARRAY [INTEGER])
			-- Fill chunk #2 of template for `yydefact'.
		do
			yyarray_subcopy (an_array, <<
			  137,  106,   93,  104,   91,   81,    0,    0,  551,  551,
			    0,    0,    0,  207,  214,  243,  255,  256,  249,  269,
			  265,    0,  433,  435,  436,   16,    0,    6,    5,   11,
			    0,  297,  291,  294,  288,  335,    0,   23,  158,  401,
			  380,  399,  396,  400,  398,  395,  393,  397,  394,  392,
			  391,  390,  389,  388,  387,  386,  385,  384,  383,  382,
			  381,  231,  232,  222,  227,    0,  186,  187,  184,  217,
			  203,  202,  198,  192,  229,    0,  169,  219,    0,  600,
			    0,  598,    0,  596,    0,  594,  593,    0,  727,  731,
			  732,  733,  716,  847,  416,  442,    0,  333,  694,  929,

			  443,  414,  416,  333,  694,  443,    0,  786,  234,  834,
			  835,  836,    0,  459,  459,  815,  816,  817,    0,  875,
			  872,  873,  874,  134,  145,  136,  121,  132,  145,  136,
			  119,    0,    0,    0,  130,  145,  136,  117,  128,  145,
			  136,  115,  127,  113,  114,  112,  551,  551,  156,   84,
			   85,   83,    0,    0,   16,  210,  213,  211,  212,  215,
			  267,    0,  266,  437,    6,   16,   10,  296,  290,    0,
			  298,  335,  158,  438,  233,    0,  188,  199,    0,    0,
			    0,  168,  229,  601,  599,  597,  595,  784,  714,    0,
			    0,  427,    0,    0,  420,  421,  418,    0,  443,  697,

			  929,  624,  611,    0,  444,  461,  415,    0,    0,  443,
			  929,  461,    0,    0,  727,    0,  460,    0,    0,  770,
			  135,  122,  133,  120,  143,  154,  155,  142,  153,  131,
			  118,  129,  116,    0,    0,  157,  150,    6,    0,    0,
			  268,    9,    6,  336,  299,    0,   23,  158,   23,  438,
			  416,  189,  201,  204,  205,  197,  167,    0,  333,  694,
			  443,  426,    0,  423,  422,  425,  424,  334,    0,  695,
			    0,  443,  646,    0,    0,  645,  792,  727,    0,    0,
			    0,  929,    0,  694,    0,  651,  619,    0,  809,  810,
			    0,  644,  453,  622,  643,    0,    0,    0,    0,  739,

			  637,  638,  629,  630,  632,  631,    0,  445,  446,  929,
			    0,  462,  333,  694,  443,    0,  443,    0,    0,  788,
			  713,  457,  727,  843,  844,  878,    7,  272,  270,  271,
			    8,  842,  331,  837,  838,  331,  839,  841,  840,  331,
			  331,  158,  438,   23,  158,  416,  443,    0,    0,  190,
			  206,  166,  443,  929,  461,  428,  860,    0,    0,  696,
			  461,    0,    0,  553,    0,    0,    0,    0,    0,    0,
			  515,  528,    0,    0,    0,  715,    0,  929,    0,  618,
			    0,  929,    0,  740,  739,  658,    0,  620,  453,    0,
			    0,    0,    0,    0,  717,    0,    0,    0,  447,  617,

			  856,  443,  929,  461,  859,  461,  855,    0,  332,  304,
			  302,  303,  301,  438,  416,  158,  438,  443,    0,    0,
			    0,  333,  694,  443,    0,  443,    0,  429,  700,  698,
			  699,    0,  553,    0,  542,  927,    0,    0,  654,  531,
			  530,  529,  553,    0,  542,  553,    0,  542,  553,  542,
			  542,  542,  516,    0,    0,    0,    0,    0,    0,  929,
			  929,    0,    0,    0,    0,  929,  647,    0,    0,  691,
			  634,  633,    0,    0,  727,  727,  628,  636,  635,    0,
			  443,    0,    0,  458,  416,  443,    0,    0,  438,  416,
			    0,  333,  694,  443,  331,  443,  929,  461,  854,  461,

			  850,  858,  539,  553,  542,  526,  537,  553,  542,  524,
			    0,  535,  553,  542,  522,  533,  553,  542,  520,  532,
			  518,  519,  517,  652,    0,  727,  690,  671,  929,    0,
			  679,    0,  674,  673,  613,  662,  929,    0,    0,    0,
			    0,  693,    0,  727,  626,  614,  649,  648,    0,    0,
			    0,    0,  726,  724,  853,  461,  849,  857,  443,    0,
			    0,    0,  333,  929,  694,  443,  443,  416,  443,    0,
			    0,  331,  443,  929,  461,  325,    0,  443,    0,    0,
			  540,  527,  538,  525,  727,  536,  523,  534,  521,    0,
			  727,  716,  616,  670,    0,  676,  675,  615,  663,  664,

			    0,    0,  667,  666,    0,  656,  659,  650,  929,  459,
			    0,    0,    0,    0,  333,  694,  443,  331,  443,  612,
			  929,  461,  461,  443,    0,    0,    0,  333,  694,  443,
			  326,    0,  443,    0,  331,  461,  331,  852,  655,  727,
			  714,    0,  687,  680,  684,  681,  678,  688,  686,  689,
			  665,    0,  668,  727,    0,  621,    0,  640,    0,    0,
			  851,  331,  443,  929,  461,  314,    0,  443,    0,    0,
			    0,  333,  694,  443,  331,  443,  929,  461,  331,  461,
			  331,  327,    0,  321,  653,    0,  683,    0,  682,  669,
			  713,  727,  642,  641,  639,  313,    0,  443,    0,  331,

			  461,  331,  331,  331,  443,  929,  461,  316,    0,  443,
			    0,  328,    0,  322,  331,    0,  685,  657,  331,  461,
			  331,  318,    0,  306,  300,  315,    0,  443,    0,  331,
			  461,  331,  331,  323,  317,    0,  305,  331,  331,  461,
			  331,  320,    0,  308,  324,  331,  310,  319,    0,  307,
			  331,  309,  331,  312,  311,    0,    0,    0, yyDummy>>,
			1, 758, 1000)
		end

	yydefgoto_template: SPECIAL [INTEGER]
			-- Template for `yydefgoto'
		once
			Result := yyfixed_array (<<
			  335,  336,  337, 1286,  559,  917,  263,  264,  265,  239,
			  892,  240,  168,  169,  893,  961,  962,  561,  963,  514,
			  867, 1170,  338,  955, 1287,  339,  340,  341, 1290,   76,
			  342,  343, 1291, 1643, 1644, 1645, 1531, 1646,   11,   12,
			    4, 1011, 1012, 1071, 1013, 1201, 1310, 1100, 1460, 1467,
			 1537, 1529, 1311, 1292, 1388, 1609, 1566, 1293, 1202, 1545,
			  749, 1335,  800,  801,  802,  590,  591, 1224,  572,  573,
			 1225,  588, 1005,  805,  806,  600,  601,  387,  388,  602,
			  344,  391,  833,  216,  211,  392, 1294, 1602, 1538, 1603,
			 1072,  630,  883, 1073,  604,  346,  347,  348,  349,  350,

			  351,  352,  353,  354,  355,  356,  957,  616, 1198,  406,
			  407,  395,  396,  408, 1252,  617, 1062,  834,  733,  734,
			  735,  736,  860,  737,  517,  861,  141,  142,   23,  143,
			  358,  124, 1300,    5,    6,   18,   14,   19,   20,   81,
			   15,   16,   36,   82,   83,   84,  359,  360, 1301, 1302,
			 1303, 1304, 1305,   85,  361,   87,   88,  399,  400,   13,
			   28,  862, 1063,  880,  881,  875,  876,  878,  879,  125,
			  126, 1192, 1193, 1194, 1195,  928, 1196,  529,  530,  362,
			  722,   89,  363,  364, 1358, 1359, 1200,  365,  366,   99,
			  367,  223,  224,  225,  148,  149,  226,  227, 1205,  732,

			  619,  620,  127,  128,  621,  622,   92,  368,   94,   95,
			 1066, 1067,  634, 1068, 1409,  369,  370,  946,  371,  271,
			  130,  272, 1372, 1239, 1020, 1240, 1216, 1217, 1532, 1533,
			 1457, 1306, 1755,  850,  851,  220,  611,    9,    8,   30,
			   31, 1203,   38,   40,   97,  823,  196,  649,  150,  872,
			  874, 1179, 1178,  831,  873,  870,  871,  599,  832,  596,
			  836,  598,  393, 1161,  623, 1096,  606,  394, 1395, 1386,
			 1594, 1270,  724,  774,  775,  506,  201,  745,  521,  777, yyDummy>>)
		end

	yypact_template: SPECIAL [INTEGER]
			-- Template for `yypact'
		local
			an_array: ARRAY [INTEGER]
		once
			create an_array.make_filled (0, 0, 1757)
			yypact_template_1 (an_array)
			yypact_template_2 (an_array)
			Result := yyfixed_array (an_array)
		end

	yypact_template_1 (an_array: ARRAY [INTEGER])
			-- Fill chunk #1 of template for `yypact'.
		do
			yyarray_subcopy (an_array, <<
			  275,  501, 2605, 2307, -32768, -32768, 1618, -32768, -32768, -32768,
			 -32768, 1672, -32768,  356, -32768, 2206, -32768, 1396, -32768, 2112,
			 1669, 6337, 1681, 1125, 1793, 1793, 1793, -32768, 1794, -32768,
			 -32768, -32768, -32768, -32768, -32768, 1680, -32768, -32768, -32768, -32768,
			 -32768,  149,   33,  393, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, 1683, -32768, -32768, -32768, -32768,   57,
			 1674, -32768, 1671, 6337, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, 1475, 7023, 1772,

			 1787, 1783, 1779, 1396, -32768, -32768, 6337, -32768, -32768, -32768,
			 -32768, -32768, -32768, 1282, 1281,  858,  607, -32768, 1276, 1245,
			 1219, 1093, 1093,  982,  850, -32768, 1657, -32768, 1656, 1660,
			 -32768,  393, 1654, -32768, 1768, 6337, -32768, -32768, -32768, 1396,
			 1396,  567, 1475, -32768, 1719,  393, -32768, 1980, 1528, 1298,
			 1093, 1396, 1396, 1396, -32768, -32768,  858, 1199,  973,  850,
			 1647, -32768,  858, 1193,  967,  850, 1644, 1642, -32768, -32768,
			 1932, 1699, 1694, -32768, -32768,  858, 1139,  962,  850, 1639,
			  858, 1124,  937,  850, 1638,  858,  772,  850, 1637,  850,
			  850,  393, 1564, 1561, 1636, -32768, 1853, 1396, 6924, 1640,

			 -32768, 6160, -32768, -32768, 1690, 1688, -32768, -32768, -32768, 1535,
			 1633, 1693,  786, -32768, -32768, 1285, 1693, 1615, 1732,  501,
			 -32768,  231,  850,   20,    5, 1093, -32768, -32768, -32768, -32768,
			 -32768, -32768,  858,  706,  850, 1627,  393, 1564, 1561, -32768,
			 -32768, 1396, -32768,  858,  552,  850, 1625,  393, 1564, 1561,
			 -32768, 1396, -32768, 1225, 1210, 1151,  512,  960, 1207, 1163,
			 1096, 1093, 1093, 1853, 1437, 1437, -32768, -32768, 1617,  850,
			 1626, 1621, 1614, -32768,  858,  376,  850, 1610,  393, 1564,
			 1561, -32768, 1396, -32768,  858,  274,  850, 1609,  393, 1564,
			 1561, -32768, 1396, -32768,  393, 1564, 1561, -32768, 1396, -32768,

			 -32768, 1607, -32768,  616,  607, 1611, -32768, -32768, -32768, -32768,
			 -32768, -32768, 1605, 6160, 6160,  755, -32768, 1379, 6160, -32768,
			 1604, -32768, 6160, -32768, 6160, 1601, -32768, 1666, 1059,  900,
			 6160, 6264, 1603, 7023, 1600, -32768, -32768, 1137, -32768, 1099,
			 1090, -32768, -32768, -32768, -32768, 6674, 1596, 1595, 1594, -32768,
			 -32768, -32768, 1067, 1065, -32768, -32768, -32768, 6056,  333, -32768,
			 1361, -32768, -32768, -32768, -32768, -32768, -32768, 1593, -32768, 1590,
			 -32768, 6160, 1535, 1535, 1092, 1082, 1259,  607, 1052, 1037,
			 1068, 1093, 1093, 1662, 1256, -32768, 6631, 1285, -32768,  784,
			  327, 1485, -32768,  688, 6160, -32768, 1615, 1697, 1285, -32768,

			  501, -32768, -32768, 1707, 1592, -32768, 1697,  541, -32768, 1326,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,  393,
			 1564, 1561, -32768, 1396, 1588, 1461, -32768,  393, 1564, 1561,
			 -32768, 1396, 1586, 1461,  858, 1009,  850,  858,  954,  850,
			 -32768, 1581, -32768, 1579, 1578, -32768,  858,  905,  850,  858,
			  891,  850,  858,  850,  850,  850, -32768, 1577, 1576, 1574,
			 -32768, -32768,  393, 1569, -32768, -32768, -32768,  393, 1564, 1561,
			 -32768, 1396, 1567, 1461, -32768,  393, 1564, 1561, -32768, 1396,
			 1566, 1461, 1565, 1461, 1556, -32768, -32768, 1396, -32768, -32768,
			 -32768, -32768, 7107, 7085, -32768, -32768, -32768,  308,  607,  269,

			 1559, 1560, -32768, -32768, -32768, -32768, 6160, 1555, 1093, -32768,
			 1554,  393, -32768, -32768, 1547, 1361, -32768,   80, 3569, -32768,
			 6160,   50, 2592, 1379, 1673, 1548, -32768,  393, 6160, -32768,
			 1030, 6160, 6160, 6160, 6160, 6160, 6160, -32768, -32768, 6160,
			 6160, 6160, 6160, 6160, 6160, 6160, 6160, 6160, 6160, 6160,
			 5952, 5848, 6160, 1396, 1396, -32768, -32768, -32768, -32768, 3431,
			 1545, -32768, 6718, 1662, 1662, 1259,  872, 1256, 1259,  863,
			 1256, 1539, -32768, -32768, 1359, -32768, -32768, 1259,  844, 1256,
			 1259,  769, 1256, 1259, 1256, 1256, 1256, 1653, -32768, 1520,
			 -32768, -32768,  951, 1615, 1518, 1821, 1396, 1471, 1396,  786,

			 1513,  688, -32768, 1025, 6551, 1008, 6160,  501, 1615, 1622,
			 1254, 1618, -32768, -32768, -32768,  688, 1677, -32768, 1632, -32768,
			 -32768, -32768, -32768,  541, 1043, 1620, 1355,  170, 1431, -32768,
			 1511, 1616, 1398, 1325, 1612, 1500, 1461, 1495, 1477, 1461,
			 1494, 1493,  858,  850, 1492, 1490,  858,  850, 1488, 1932,
			 1437, 1932, 1480,  858,  850, 1478, 1476,  858,  850, 1474,
			 1473, 1470, 1469, 1466, -32768, -32768,  177, 1472, 1461, 1463,
			 1464, 1461, 1460, 1459, 1396, 1853, 1853,  333, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,

			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,  393, 6873,
			 6451, 5744, -32768, -32768, 6160, 1457, -32768, 1454,  688, -32768,
			  393, 5640,  715, 1396, 1396,  309,  261, -32768,  419,  393,
			  701, 1396, 1452, 1396, -32768,  688, 1440, 6160, 6160,  116,
			  590,  590,  590,  590, 1307, 1307,   87,   87,   87,  590,
			  590,  590,  590,   87,   87, 2419, 6806, 6160, 6806, 6160,
			 3139, -32768,  333,  333, 6160, 6160, -32768, 4793, -32768, -32768,
			 -32768, -32768, 1259, 1256, -32768, -32768, 1259, 1256, -32768, -32768,
			 1024,  862,  890,  465,  865,  838,  827,  758, 1093, 1093,

			  951, 1428, 1428, -32768, -32768, 1446, 1445, 1444, 1256, 1441,
			 -32768, 1259, 1256, -32768, -32768, 1259, 1256, -32768, -32768, -32768,
			 -32768, -32768, -32768, 1396, -32768,  457,  607, 1435, -32768,  501,
			 -32768, 1396, 1396, -32768, 1396, 1432, 1396, -32768, -32768, -32768,
			 -32768, 1438, 1438, -32768, 1420, 6437, 1003, 1544,  501, -32768,
			 -32768,  501, -32768, 1254,  945, -32768, -32768,  541,  393, -32768,
			 -32768,   48,  501, -32768, -32768, 1396, 7063, -32768, -32768, -32768,
			  688,  688,  688,  688,  237, -32768, 1398, -32768, -32768, 1325,
			 -32768, 1543, -32768, 1511, 1412, 1396, 1377, 1396, 1411, 1409,
			 1403, 1400, -32768, -32768, -32768, -32768, -32768, 1397, 1393, 1388,

			 1368, 1437, 1437, -32768, -32768, 1376, 1396, 1363, 1396, 1396,
			 -32768, -32768, 1366, 1396, -32768, -32768, -32768, -32768, 6630, 5536,
			  333, -32768, 1361,  972, 6160, 6160,  661, 6631,  574, -32768,
			  564, -32768, -32768, -32768, -32768, -32768, -32768,  393,  972, 6631,
			  563, -32768, 5432, -32768,  980,  495, -32768, 1356, 6762, 6160,
			 6160, 6806, 3139, 3293, 2997, -32768, 6565, 5328, -32768, -32768,
			 1379,  859, 4689, -32768, 6762, -32768, -32768, -32768, -32768, 1259,
			  749, 1256, 1259,  676, 1256, -32768, 1353, -32768, 1346, 1332,
			 -32768, 1259,  586, 1256, 1259,  585, 1256, 1259, 1256, 1256,
			 1256, -32768, 1349, 1340, 1337, -32768, -32768, -32768, -32768, 1535, yyDummy>>,
			1, 1000, 0)
		end

	yypact_template_2 (an_array: ARRAY [INTEGER])
			-- Fill chunk #2 of template for `yypact'.
		do
			yyarray_subcopy (an_array, <<
			 1336, -32768, -32768, -32768, -32768, -32768,  217,   62, -32768, -32768,
			 1447,  562,  556, -32768, 1330, -32768, -32768, -32768, -32768, 1333,
			 -32768, 1320, -32768, -32768, 1306, -32768, 1430, 1254, -32768, -32768,
			  541, -32768, -32768, -32768, -32768, 1304,  393,  501, 1125, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, 1123,  688, -32768, -32768, 1436, -32768,  688, -32768, -32768,
			 -32768,  189, 1424, -32768, 1325, 1426, -32768, 1398, 1396, 1224,
			 1396, 1224, 1396, 1224, 1396, 1224, 1224, 6160,  333, -32768,
			 -32768, -32768, -32768, -32768,  499, 6160, 1396,  646,  444,  307,

			  374, 1287,  470,  646,  444,  374, 1379, 1416, -32768, -32768,
			 -32768, -32768, 1396, 3109, 3109, -32768, -32768, -32768, 1250, -32768,
			 -32768, -32768, -32768, 1290, 1259, 1256, 1284, 1283, 1259, 1256,
			 1275, 1359, 1428, 1359, 1273, 1259, 1256, 1272, 1266, 1259,
			 1256, 1255, 1253, 1246, 1238, 1237, -32768, -32768,   49, -32768,
			 -32768, -32768,  951,  951, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768,  393, -32768, -32768, 1254, -32768, -32768, -32768, -32768,  688,
			  343, 1304, 1125,  972, -32768,  688, -32768, -32768,  688,  237,
			 1350, -32768, 1325, 1224, 1224, 1224, 1224, -32768, -32768, 6631,
			  523,  545, 1396, 1396, 1396, 1396, -32768, 6631,  374, 1216,

			  307, -32768, -32768, 4912, 5224,  332, -32768, 6631,  453,  374,
			  307,  332, 1214, 1396,  333, 6160, -32768, 1324, 1321, 6518,
			 1201, 1192, 1170, 1157, -32768, -32768, -32768, -32768, -32768, 1152,
			 1144, 1138, 1135, 1428, 1428, -32768, -32768, 1254,  299,  393,
			 -32768, -32768, 1254, -32768, -32768, 6404, 2768, 1125,  871,  972,
			  721, 1133, -32768, 1123,  688, -32768, -32768, 1234,  646,  444,
			  374, -32768,  393, -32768, -32768, -32768, -32768, -32768, 1223, -32768,
			 6631,  374, -32768,  876,  393, -32768,  100,  690, 6160, 6160,
			 6160, 1347, 1122,  444,  414, -32768, 1215, 1162, 1099, 1090,
			 1147, -32768, 1137, -32768, -32768, 1086, 1080, 1067, 1065, 3953,

			 -32768, -32768, 2252, -32768, -32768, -32768,  611, 6160, 6160,  930,
			 1183, -32768,  646,  444,  374, 1179,  374, 1178, 1056, -32768,
			 -32768, 6762,  709, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768,  104, -32768, -32768,  104, -32768, -32768, -32768,  104,
			  104, 1125,  972,  501, 1125,  719,  374, 6631,  389, -32768,
			 -32768, -32768,  374,  307,  332, 1047, -32768,  662, 6631, -32768,
			  332,  791,  291,  858,  607,  593,  503,  530, 1093, 1093,
			  850, -32768, 1044, 1057, 1093, 4585, 2432, 2195, 2844, -32768,
			  393,  930,  393, -32768, -32768, 1041, 5120, -32768, 1137, 6160,
			 6160,  596, 1396, 1396, 4089, 4912, 6160, 6160, 6160, -32768,

			 -32768,  374,  307,  332, -32768,  332, -32768, 6160, -32768, -32768,
			 -32768, -32768, -32768,  972,  445, 1125,  972,  374, 6631,  345,
			 1131,  646,  444,  374, 1111,  374, 1108, -32768, -32768, -32768,
			 -32768, 1098,  858,  427,  850,  858,  288,  850,  989, -32768,
			 -32768, -32768,  858,  146,  850,  858,  129,  850,  858,  850,
			  850,  850, -32768,  390, 6975,  986, 1396,  760,  909,  468,
			  748,  979, 1081,  969, 1396,  961, -32768, 1063, 5016, 1030,
			 6762, 6762, 6160,  971,  333,  333, -32768, 6762, 6762, 1055,
			  374, 1049, 1028, 6762,  386,  374, 6631,  612,  972,  311,
			  993,  646,  444,  374,  104,  374,  307,  332, -32768,  332,

			 -32768, -32768, -32768,  858,  850, -32768, -32768,  858,  850, -32768,
			 1396, -32768,  858,  850, -32768, -32768,  858,  850, -32768, -32768,
			 -32768, -32768, -32768,  853, 1396,  333, -32768, -32768,  961,  957,
			  919,  918,  909, -32768, -32768, -32768,  930,  923,  644,  815,
			  754, -32768,  390,  333, -32768, -32768, -32768, -32768,  920,  811,
			 2606, 6160, 3829, 3705, -32768,  332, -32768, -32768,  374, 6631,
			  322,  916,  646,  307,  444,  374,  374,  165,  374, 6631,
			  281,  104,  374,  307,  332, -32768,  903,  374,  883,  861,
			 -32768, -32768, -32768, -32768,  333, -32768, -32768, -32768, -32768, 1396,
			  333, 4461, -32768, -32768,  575, -32768, -32768, -32768, -32768, -32768,

			  824, 6160,  815, -32768, 1396,  692, -32768, -32768,  174,  774,
			   96, 2606,  797,  794,  646,  444,  374,  104,  374, -32768,
			  307,  332,  332,  374, 6631,  181,  785,  646,  444,  374,
			 -32768,  767,  374,  761,  104,  332,  104, -32768, -32768,  333,
			 4337,  393, -32768,  639,  547,  575, -32768, -32768, -32768, -32768,
			 -32768, 2844, -32768,  333, 1396, -32768,  745, -32768,  725,  720,
			 -32768,  104,  374,  307,  332, -32768,  699,  374,  689,  653,
			  645,  646,  444,  374,  104,  374,  307,  332,  104,  332,
			  104, -32768,  569, -32768, -32768,  388, -32768,  575, -32768, -32768,
			 4213,  333, -32768, -32768, -32768, -32768,  561,  374,  553,  104,

			  332,  104,  104,  104,  374,  307,  332, -32768,  543,  374,
			  513, -32768,  505, -32768,  104,  191, -32768, -32768,  104,  332,
			  104, -32768,  449, -32768, -32768, -32768,  425,  374,  381,  104,
			  332,  104,  104, -32768, -32768,  378, -32768,  104,  104,  332,
			  104, -32768,  317, -32768, -32768,  104, -32768, -32768,  262, -32768,
			  104, -32768,  104, -32768, -32768,  196,   91, -32768, yyDummy>>,
			1, 758, 1000)
		end

	yypgoto_template: SPECIAL [INTEGER]
			-- Template for `yypgoto'
		once
			Result := yyfixed_array (<<
			 -32768, -32768, -32768, -32768, -265,  977, -32768, -32768, -32768,  687,
			 -140, -111,  -26, -239, -149, -32768, -32768, -491,  933, -32768,
			 -32768,  723,   18, -710, -32768, -1090, -1099, -32768, -32768, -1167,
			  -13,  -21, -32768, -32768,  206, -32768, -32768,  247, -32768, 1280,
			    9, -32768, -32768,  176, -105, -1358,  140, -890, -1465,  421,
			  348, -32768, -32768,  599, -32768, -1442, -32768,  489, -397,  355,
			  409,  629, -32768, -32768, -32768, 1069, 1213, -538, -566,  178,
			 -529,  319,  867, -192, -32768, -32768, -32768, 1658, 1720, 1270,
			   65, -32768, -547, -32768, -32768, -183, -32768, -32768, -32768,  266,
			 -32768, 1233, -32768,  693, 1113, -1104, -1116, -32768, -32768, -32768,

			 -32768, -1129, -1130, -32768, -287, -317, -172, -606, -1003, -32768,
			 -32768, 1717, -153, 1458,  608, -182, -730, -763, -32768, -32768,
			 -32768, -32768, 1527,  881, -32768, -32768, -32768, -32768, -32768, 1713,
			  -14, 1796, -32768, -32768,  -92, 1165,  831, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768,   81, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -1198,  -16, -114, -32768, 1705, -341, -32768,
			 1523,  988, -742, 1448, -839, 1439,  958, 1429, -817,  -98,
			 1850, -32768, -32768, -32768, -32768, -688,  375, -32768, -1215, -32768,
			 1115,  -97,   -1,   -3, -32768,  474, -1060, 1749, 1468, -903,
			   -5, -32768, -32768, -32768, -32768, -32768, 1066,  734, 1268, -498,

			 -555, 1211, -32768, 1836, -574, 1206, -392,   11, -194, -32768,
			 -32768, -32768, -32768,  757,  113, -1433, -32768,  877, -304,   10,
			 -32768, -32768, -32768, -32768,  981,  581, -1333, -1092, -32768,  286,
			 -32768, -1256, -32768, -807, -32768, -199, -32768, -32768, -32768, -32768,
			 -32768,    3, -32768, -32768, -32768, -32768,  952, -204, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -522, -32768, -32768, -32768,
			 -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, -32768, yyDummy>>)
		end

	yytable_template: SPECIAL [INTEGER]
			-- Template for `yytable'
		local
			an_array: ARRAY [INTEGER]
		once
			create an_array.make_filled (0, 0, 7213)
			yytable_template_1 (an_array)
			yytable_template_2 (an_array)
			yytable_template_3 (an_array)
			yytable_template_4 (an_array)
			yytable_template_5 (an_array)
			yytable_template_6 (an_array)
			yytable_template_7 (an_array)
			yytable_template_8 (an_array)
			Result := yyfixed_array (an_array)
		end

	yytable_template_1 (an_array: ARRAY [INTEGER])
			-- Fill chunk #1 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			   78,  146,  174,   35,  311,   86,  747,   80,   77,  854,
			    7,   17,   21,  195,  524,  945,  441,  383,   91,  402,
			   90,  267, 1218,  740,  729,  520,  488,  489, 1385,  357,
			  266,  502,   93,   17,   17,  503,  803,  504,  405,   75,
			 1075,   21,  864,   21, 1210,  804, 1029, 1336, 1336,  869,
			 1105,  837,  940,  129,  828,  607,  306,  218, 1473, 1074,
			 1006,  863,   78,  509,  441,  958, 1595,   86,  868,  137,
			   77,  133,  270, 1298, 1297,  859, 1151, 1391, 1334, 1334,
			   91,  117,   90,  144,  309,   78,   79, 1296,  731,  154,
			   86, 1757,  137,   77,   93,   91,  117,   90,  270, 1295,

			 1209,   75,  173,   91, 1289,   90, 1438, 1544, 1610,  193,
			 1657,  385,  112, 1288,   78,  460,  461,   93,  731,   86,
			  950,  137,   77,  456,   75,  204,  205,  403,  144, 1064,
			  231, 1069,   91,  494,   90, 1173,  242,  228,  229,  230,
			  111,  199,  444, 1215,  238,  413,   93,  515,   79,  273,
			  249,  212,  221,   75,  283,  210,  268,  285,  463,  293,
			  410, 1649,  552,  280,  138,  270, -740, -740,  290, 1659,
			 1544,   79,  296, 1469,  275,  949, 1036,  308,  739, 1236,
			  563,  564, 1624,  307, -216,  357, 1689,  155, -623, 1235,
			  444, 1017, 1099, 1177,  926,  310, 1756, 1523,  132, 1353,

			   79,  301,  610, -200,  540,  117,  418, 1516,  730,  925,
			 -216,  603, 1649, 1623, 1672,  945,  203,  426,  397,  421,
			 1166, -623,  117, 1381, 1512, -200,  976,  425,  110, -200,
			  429, 1149, -718, -200,  593, 1180,  526,  433,  650,  390,
			  389,  651,  443, 1006, 1408,  608,  424, 1117,  466,  404,
			  268,  268,  829, 1402, 1649, 1352,  109,  432,  474,  976,
			 1182,  469,  991,  576,   70, 1298, 1297,  848,  473, 1249,
			   69,  477,  995,  996,  385,  385, 1752, 1658,  481, 1296,
			 1032,  675,  676, 1034,  483, 1015, 1605, 1016,  472, 1018,
			  443, 1295, 1099,   34,   33,   32, 1289,    3,  480, 1031,

			 1260,  495, 1033,  500,  482, 1288,    2,  904,  609, 1401,
			  496,   45,  865, -200, 1628,  518,  244,  903, 1314,  164,
			 1174, -623, -623,  913,  519,  172,  171,  501, 1569, -200,
			   91, 1750,   90, 1099,  721, -248, -248,   34,   33,   32,
			  926, -248, 1436, 1257, 1342, -248, -623,    1,  476, -248,
			   34,   33,   32, -248,  -23, 1615, 1099, 1241, -248, 1568,
			  -23,  594, 1496,  575,  117,    3, 1507,  499,   33, 1435,
			 1246, 1309,  -23,   27,    2,  -23,  -23, 1070, 1492,  495,
			  605,  -23, -248,  310,  174,   34,   33,   32,  934, 1204,
			  397,  -23, 1745,  618, -541, 1740, 1648,  -23,  475, 1383,

			 1099,  397, 1095, 1559,   26,   25, 1190,   24,  641,  636,
			 -541,  645,  911,  853, 1208,  926,  838,  639, 1495,  603,
			  652,  123, 1422,  656, 1328, 1094,  660, 1642, 1327,  635,
			 1326, 1093, 1573, -553, 1558, 1330,  932,  638, 1413, 1738,
			 1102, 1416,  122,  121,  120,  119,  118, 1648, 1254,  167,
			  468,  594,   34,   33,   32,  233, 1168,  668, 1423,  507,
			  901,  902, 1486, 1737, 1099,  671,   34,   33,   32,  117,
			  116,  115,  666,  677,  926, 1167,  809,  667, 1642, 1245,
			 -623, -623, -623, 1244,  173,  670, 1313, 1207, 1572, 1648,
			   34,   33,   32, 1485,  809, -413, -413, -413, 1383,  926,

			  467,  894,  896,  117, 1620, 1503,  738,  953,  954,  500,
			 -623,  895, 1488, 1715,  605,  847, 1189, 1656,  493, 1732,
			 1642,  727, 1383,    3, 1254,  311,  114, 1731,  926, 1493,
			  492,  182,    2,  742, 1099,  113,  895,  746, 1382,  772,
			  773,   34,   33,   32,   69,  507,  922,  937,  936,  721,
			  865,  270,  919,  270, 1446, 1663, 1259, 1729,  186, 1618,
			  807,  615, 1348,  944,  493,  595,  597, 1720, 1676, 1251,
			 1199,   34,   33,   32, 1099, 1718,  492,  270,  270,  117,
			  613, 1445,  835, 1714,  835, 1099, 1008,  495,   34,   33,
			   32,   69,  846,  334,  977, 1227, 1104, 1565,  571,  172,

			  171,  618,  618, 1226, 1228,  309,  117, 1098, 1448,  618,
			 1687, 1662, 1705,  285,  275, 1227,  888,   34,   33,   32,
			  890,  177, 1110, 1099, 1675, 1107,  428,  897,   34,   33,
			   32,  899,   34,   33,   32,  268,  268,  268,   34,   33,
			   32,  442, 1472, 1215, 1443, 1564,  172,  171,   70, 1197,
			 1027,   34,   33,   32,   69, 1092, 1536, 1419, 1599, 1703,
			  910,  117,  117, 1139, 1135,  552, 1563, 1702, 1704,  117,
			 1616, 1442, -417, 1262, 1261, 1250,  427, 1397, 1396,  979,
			 1629, 1157, 1308,   34,   33,   32,   69, 1155, 1061, 1061,
			 1065, 1061,  937,  936, -417,   45,  207,  206,  308, 1641,

			  547,  546,  809, 1701,  244, 1228,  541,  540,  539,  172,
			  171,  493,  979, 1699,  495, -417,  310,  605,  939,  930,
			  930,  930,  930,  492,  536,  535, 1487,  941,  912,  943,
			  926,  495,  927,  846, 1694, 1673, 1418, 1010, 1347, 1693,
			  923,  172,  171,  781,  926,  485,  785,  919,  926,  938,
			  926, 1345,  117,  896, 1128,  810, 1026,  167,  814, 1692,
			 1536,  818, 1535,  944,   34,   33,   32, 1417, 1686, 1346,
			 1038, 1131, 1528, 1132, 1527, 1680, 1133,  233,  493,  978,
			  420, 1678,   34,   33,   32, 1398,  186,  807,  807, 1429,
			  492, 1428, -242, -242,  390,  389, 1560,  285, -242, 1674,

			 1187, 1570, -242, 1271, 1152, 1153, -242, 1148, 1661, 1007,
			 -242, 1660,  978, 1316, 1374, -242,  507, 1014,  835,  158,
			  835, 1215,  835, 1188, 1654,  117, 1164, 1124, 1601,  491,
			  419,   34,   33,   32,  117,  507,  987, 1407, 1650, -242,
			  618, 1608, 1433,  618, 1414,  117,  295,  815,   34,   33,
			   32,  930,  250, 1338, 1338,  182,  495,  495,  495,  495,
			 1028,  104,  105,  490, 1468,  281,  177,  117, 1035, 1432,
			  291, 1079,  275, 1081,  297, 1637,  299,  300,  985, 1625,
			 1061,  316,  779,  780, 1379, 1065, 1604,  268,  268,  982,
			  164,  244, 1083,    3, 1085, 1086,  294, 1636, 1343, 1088,

			  233,  385,    2,  117,  123,  984, 1156, 1158,  594,  409,
			  605,  846, 1399,  973,  117, 1484,  981, 1634, 1489,  285,
			  117,  422,  811,  493, 1097, 1369, 1368, 1367, 1366, 1365,
			 1617,  495,  430,  275, 1607,  492, 1103, 1598,  117,  117,
			  972,  786, 1233, 1234, -623, 1172,  500, 1101,  117, 1320,
			  782, 1530,  117, 1364, 1363, 1237, 1425,  412,  415,  417,
			  965, 1459, -677,  470,  967,  615, 1242,  117,  493,  657,
			 1118, 1593,  859,  478,  513, -625,   34,   33,   32,  123,
			  492,  117,  244,  653, 1462, 1589, 1120, 1243, 1119, 1001,
			 1567,  194, 1007, 1003,  980, -541, 1253, 1014, 1014,  167, yyDummy>>,
			1, 1000, 0)
		end

	yytable_template_2 (an_array: ARRAY [INTEGER])
			-- Fill chunk #2 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			  799,  798,  797,  796,  795, 1480, -541, 1571,  512, 1362,
			  731,  289, 1375,   34,   33,   32,  618, 1551, 1361,  975,
			 -145,   34,   33,   32,  511,  311,  510,  827,  826,  825,
			  117,  571,  646,  809, 1394,  809,  279,  233,   34,   33,
			   32,  248, 1557,   34,   33,   32, 1171,  237,  495,   34,
			   33,   32,  158,  495,  809,  809,  192, -221,   34,   33,
			   32,  288, 1534, 1556, 1183,  182, 1184,  170, 1185, 1554,
			 1186,  510, 1253,  858, 1030,  970,  748, 1546, 1247, -221,
			  177,  846, 1191, -221,  791,  117,  278,  642,  581,  445,
			 -541,  247,  500,  790, 1542, 1541,  186,  236, 1214, 1577,

			  117, -541,  969,  578, 1540,  309,  191, 1109,  170, 1108,
			  164, 1525, 1501,  117,  170,  580, 1212,  807,  807,  807,
			  158, 1510, 1500,  644,  186, 1498,  648,  170,  117,  507,
			  577, 1024,  170,  569,  507,  655,  844,  170,  659, 1597,
			  661,  662,  663,  566,  117, 1494,  583, 1123, 1337, 1337,
			 1127,  842,  285,  841, 1341,  495, 1344,   98,  117, 1134,
			  568,  618, 1138,  528,  495, 1142, 1619,  275,  117,  117,
			  565, 1238,  117, 1464,  452, 1371, 1632, 1453, 1191, 1191,
			 1191, 1191, 1454,  508,  170,  507, 1258, 1427,  913, 1299,
			  605,  182, 1406, 1404, 1267,  170, 1506, 1400,  308, 1319,

			  117, 1322,  284,  107, 1312,  108,  556,  170,  555, 1552,
			 1553, 1655, 1393, 1390,  450,  117,  310,  274, 1392,  807,
			  807,  244, -722, 1667,   78,   78,  170,  233, 1389,   86,
			   86, -725,   77,   77, 1281,  177,  170, 1356,  164,  117,
			  495,  449,   91,   91,   90,   90, 1380,  186, 1351, 1238,
			 1441, 1415, 1108,  158,   -4,  170,   93,   93,  447, 1452,
			 1591,  438, 1349, 1333, 1333,  -91, 1697, 1357, -104,  117,
			 1384,  243, 1355,  182,  -93,  117,  435,  232, 1606, 1709,
			  440, -553, -106,  117, 1373,  446,  117,  -95,  437,  411,
			  414,  416,  167,  605,  846,  117,  181,  185,  -16, -273,

			 -108,  117, 1220,  434,  177,  -23, 1222, -273, 1727,  164,
			  158, -273,  -23, 1229,  345,  -23, -273, 1231,  -23, 1638,
			    3,  117,  -97,  180,  214, 1640, 1509,  176,  574,    2,
			  889, -110,  163,  157,  891, 1324,  592, 1439, 1323, 1318,
			  629,  898,  628, 1269, 1421,  900,  -23,  -23, 1384,  -23,
			 1440, 1317,  117,  213,  175, 1357, -590,  117,  117,  162,
			  156, 1169,  627,  626, 1256,  625,  625,  -87,  -89, -183,
			  624, -183,  605, -623, 1684, 1219,  -88, -623, 1474, 1475,
			 1458, 1299,  552, -102,  846,  -90,  170,  123, 1690,  170,
			 1461, -183, 1463, -623, -623, -183, -103,  589,  170, -183,

			  571,  170,  -92, -105,  170,  -94, 1502,  123,  799,  798,
			  797,  796,  795, -107,  -96, 1491, 1511,  547,  546, 1515,
			 -109, 1213, 1519,  541,  540,  539, 1717, 1206,  122,  121,
			  120,  119,  118,  308,  627,  794,  793,  792, -196, 1384,
			 1181, 1175, 1526,  522, 1165, -191, 1163, 1162, 1410,  170,
			 1543,  310, 1411, 1412,  846,  499,  498,  497, 1160, 1159,
			 -196, 1154,  -99, 1539, -196, -111, 1147, -191, -196,  977,
			  345, -191,   34,   33,   32, -191, -100, 1580, 1146, -247,
			 -247, 1582, -126, 1562,  562, -247, 1585,  560, 1112, -247,
			 1587, 1087,  791, -247, 1426, 1084, 1584, -247, -470, -238,

			 1431,  790, -247, -238,  994,  993,  992, -238, 1082, 1080,
			 1590, -238,  114,  459,  458,  457, -238,  574, -483,  592,
			  574,  113,  592, -472,  140,  139, -247, -485, 1384,  574,
			 -474,  592,  574, -487,  592,  574,  592,  592,  592, -476,
			 -238, -489, -235, 1481, 1078, 1482, -235,  100,  101,  102,
			 -235,   34,   33,   32, -235,  624, 1614, 1076, 1025, -235,
			 1022, 1017, 1019,  123, 1009,  947, 1627, 1263, 1264, 1265,
			 1266,  -98,  999,   78,  998, 1639,  997,  942,   86,  921,
			 1647,   77,  920, -235,  382,  381,  380,  379,  378,  907,
			 1653,  909,  908, -591,  170,  906, -466,  905,  170, -468,

			 -467,  309,  886, -481, -469,  170, -482, 1575, -471,  170,
			 -484,  117,  377,  376,  929,  931,  933,  935, -473,  720,
			 -486, 1671, -475, -488,   78,  884,  887,  885,  628,   86,
			  877, 1647,   77,  562, -226,  866,  849, 1578,   10, 1579,
			 1691,  214,  839,  830,  750,  751,  752,  753,  754,  755,
			  824, 1685,  756,  757,  758,  759,  760,  761,  762,  763,
			  764,  765,  766,  768,  770,  771,   78,  822,  375,  789,
			  587,   86,  776, 1647,   77,  744,  -34,  374,  743,  728,
			  -34,  726,  723,  -34, 1630,  719,  -34,  718,  674,  -34,
			  673,  672,  669, -566,  308, 1612, -567,  615,  -34, -465,

			  493,  -34,  -34,  665,  859,  442,  664,  -34, -478, -479,
			 -505,  640,  492,  637, 1633,  404,  594,  -34,  -34,  845,
			  -34,  612, -723,  -34,  527, -720, -721,  554,  553,  525,
			 1665,  505,  484, -719,  574,  592, -718,  487,  574,  592,
			  486,  479,  471,  465,  574,  462,  401, 1681,  213, 1683,
			  373,  464,  372,   34,   33,   32, -477,  431,  386,  423,
			  592, 1668, 1669,  574,  592,  312,  302,  574,  592,  298,
			  292,  282,  252,  112, 1695, 1682,  251,  574,  110,  241,
			  784,  209,  202,  788,  200,  198,  153, 1707, -568,  197,
			  152, 1711,  813, 1713,  151,  817,  147,  819,  820,  821,

			  136,  103,  135,  510, 1698,  858,  857,  131,  106,   39,
			   27,   96, 1721,   22, 1723, 1724, 1725, 1710, 1596, 1712,
			 1329,  856, 1111, 1021, 1176,  558,  855, 1733,  134, -241,
			 -241, 1734, 1430, 1736,  720, -241,  916,  918,  633, -241,
			 1722, 1077, 1741, -241, 1743, 1744, 1728, -241,  632, 1037,
			 1746, 1747, -241, 1749,  219,  208,  516,  631, 1751, 1735,
			  845,  948, 1350, 1753,  614, 1754,  217,  882, 1652,  215,
			 1742,  840, 1255, 1150,  398, 1340, -241, 1000, 1549, 1748,
			  951,  123,  952, 1592, 1476, 1387, 1600,  956,  956, 1548,
			  964,  852, 1688, 1716, 1248, 1122, 1091,    0,    0,    0,

			    0,    0,  262,  261,  260,  259,  258,    0,    0,  159,
			  165,    0,    0,    0,  178,  183,  187,  189,  190,    0,
			    0,  574,    0,  592,  574,    0,  592,    0,    0,  305,
			  304,  303,    0,  574,    0,  592,  574,    0,  592,  574,
			  592,  592,  592,    0,    0,    0,  222,    0,    0,  161,
			  161,    0,    0,  234,  161,  161,  161,    0,    0,  245,
			  123,    0,    0,  160,  166,    0,  269,    0,  179,  184,
			  188,    0,  276,    0,    0,    0,    0,  286,    0,    0,
			    0,  262,  261,  260,  259,  258,  254,    0, -161, -161,
			    0,    0,  269,  161, -161,  253,  966,    0, -161,  161, yyDummy>>,
			1, 1000, 1000)
		end

	yytable_template_3 (an_array: ARRAY [INTEGER])
			-- Fill chunk #3 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			  968,    0, -161,    0,    0,  384, -161,  235,  257,  256,
			  255, -161,  161,  246,    0,    0,    0,  161,    0,  222,
			  222,  222,    0,    0,    0, 1002,  277,    0,    0, 1004,
			    0,  287,  918,    0,    0, -161,    0,    0,  845,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,  436,
			  439,    0,    0,    0,  448,  451,  453,  454,  455,  269,
			    0,    0, 1113, 1114,    0,  254,    0,    0,    0,    0,
			  956,    0,    0,    0,  253,  964,  574,  592,    0,    0,
			  574,  592,    0,    0,    0,    0,    0,  574,  592,  161,
			  161,  574,  592,    0,  161,  161,  161,    0,    0,    0,

			    0,    0,    0,  160,  166,    0,    0,    0,  179,  184,
			  188,    0,    0,    0,    0,    0,    0,    0,    0,  -33,
			    0, 1505,    0,  -33,    0,    0,  -33,    0,    0,  -33,
			    0, 1514,  -33,    0, 1518,    0, 1520, 1521, 1522,    0,
			    0,  -33,    0,    0,  -33,  -33,    0,    0,    0,    0,
			  -33,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			  -33,  -33,    0,  -33,    0,    0,  -33,    0,  384,  384,
			  567,  570,    0,    0,  579,  582,  584,  585,  586,    0,
			    0,    0,    0,    0, 1126,    0,    0, 1130,    0,    0,
			    0, 1581,    0,    0,    0, 1583, 1137,    0,    0, 1141,

			 1586, 1143, 1144, 1145, 1588,    0,    0, -672,  845, -672,
			  161,  161,    0,  -25,  161,  161,  161,  -25,    0,    0,
			  -25,    0,    0,  -25,  160,  166,  -25,    0,  179,  184,
			  188,  643,    0,    0,  647,  -25,    0,    0,  -25,  -25,
			    0,    0,    0,  654,  -25,    0,  658,    0,    0,    0,
			    0,    0,   37,    0,  -25,  -25,    0,  -25,    0,    0,
			  -25,    0,    0,    0, -627, -627, -627, -627,    0,    0,
			  552,  161,    0,    0,  161,  551,  550,  549, -627,  548,
			    0,    0, -627,  161,    0,  235,  161,    0,  246,    0,
			    0, -627,    0,    0, -627,    0,    0,  277, -627, -627,

			  287,    0,    0,    0,  725,  547,  546,  545,  544,  543,
			  542,  541,  540,  539,  -17,  170,    0,    0,  -17,    0,
			    0,  -17,    0,    0,  -17,    0,    0,  -17, 1321,  536,
			  535,  534,  533,  532,  531,    0,  -17,    0, 1221,  -17,
			  -17,    0, 1223,    0,    0,  -17,   29,    0,    0, 1230,
			    0,    0,    0, 1232,    0,  -17,  -17,    0,  -17,    0,
			    0,  -17,  783,    0,    0,  787,    0,    0,    0,    0,
			  808,    0,    0, 1211,  812,    0,    0,  816,    0,    0,
			    0,    0,    0,    0,  170,    0,    0,  170,  808,    0,
			    0, 1376, 1377, 1378,  170,    0,    0,  170,    0,    0,

			  170,    0,  161,    0,    0,  161,    0,    0,    0,    0,
			    0,    0,    0,    0,  161,    0,  235,  161,    0,  246,
			    0,  845,    0,    0,    0,    0,    0,    0,  277,    0,
			    0,  287,    0,    0,    0,    0,    0, 1456,    0,    0,
			    0,    0,    0,    0,    0,  269,    0,  269,    0,    0,
			    0,    0,    0,    0,    0,  170,    0,    0,    0,  170,
			    0,    0,    0,    0,  170,    0, 1268,    0,  170,    0,
			    0,  269,  269,    0,    0,    0,    0, 1315,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,  552,    0,    0,    0,    0,  551,

			  550,  549, 1470, 1471,    0,    0,    0,  552,    0, 1477,
			 1478,  845,  551,  550,  549,    0,  548,    0,    0,    0,
			 1483,    0,    0,    0,    0,    0,    0,    0, 1354,  547,
			  546,  545,  544,  543,  542,  541,  540,  539,    0, 1360,
			    0,    0,  547,  546,  545,  544,  543,  542,  541,  540,
			  539,    0,    0,  536,  535,  534,  533,  532,  531,    0,
			    0,    0,    0,    0,    0,    0,  536,  535,  534,  533,
			  532,  531,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,  845, 1403,    0, 1405, 1550,  971,  974,    0,    0,
			    0,  983,  986,  988,  989,  990,  808,  741,    0,    0,

			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,  -20,    0, 1420,    0,  -20,    0,    0,  -20,
			 1424,    0,  -20,    0,    0,  -20,  161,  161,    0,    0,
			    0,  161,  161,  161,  -20,    0, 1608,  -20,  -20,    0,
			  160,  166,    0,  -20,    0,  179,  184,  188,    0,    0,
			    0,    0,    0,  -20,  -20,    0,  -20,    0,    0,  -20,
			    0,    0,    0,    0, 1611,    0,    0,  552,    0, 1479,
			    0,    0,  551,  550,  549,    0,  548,    0,    0,    0,
			    0,  552,    0,    0,    0, 1490,  551,  550,  549,    0,
			  548, 1497,    0, 1499,    0,    0,    0,    0,    0,    0,

			    0,    0,  547,  546,  545,  544,  543,  542,  541,  540,
			  539,    0,    0,    0, 1651,    0,  547,  546,  545,  544,
			  543,  542,  541,  540,  539,    0,  536,  535,  534,  533,
			  532,  531,    0,    0,    0,    0,    0,    0,    0,    0,
			  536,  535,  534,  533,  532,  531,    0,    0, 1555,    0,
			    0,    0,    0, 1561,    0,    0,    0,    0,    0,    0,
			    0, 1574,    0, 1576,    0,    0, 1125,    0,    0, 1129,
			    0,    0,    0,    0,    0,    0,    0,    0, 1136,    0,
			    0, 1140,    0,    0,    0,    0,    0,    0,    0,    0,
			    3,    0,    0,    0,    0,  384,    0,    0,    0,    2,

			    0,    0,    0,    0,    0,    0,  161,    0,    0,  161,
			    0,    0,    0, 1339,    0,    0,    0,    0,  161,    0,
			  235,  161,    0,  246,    0,    0, 1613,    0,    0,    0,
			    0,    0,  277, 1621, 1622,  287, 1626, 1331,   72,   71,
			 1631,   70,    0,    0,    0, 1635,    0,   69,    0,    0,
			    0,    0,    0,   68,   67,   66,   65,   64,   63,   62,
			   61,   60,   59,   58,   57,   56,   55,   54,   53,   52,
			   51,   50,   49,   48,   47,   46,    0,    0,    0,    0,
			    0,    0,    0,    0, 1664,    0, 1666, 1459,   45,   44,
			    0, 1670,   43,    0,    0,    0,    0, 1677,    0,    0,

			 1679,    0,   42,   41,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,  552,
			    0,    0,    0,    0,  551,  550,  549,  808,  548,  808,
			 1696,    0,    0,    0,    0, 1700,    0,    0,    0,    0,
			    0, 1706,    0, 1708,    0,    0,    0,    0,  808,  808,
			    0,    0,    0,    0,  547,  546,  545,  544,  543,  542,
			  541,  540,  539,    0,    0, 1719,    0,    0,    0,    0,
			    0,    0, 1726,    0,    0,    0,    0, 1730,  536,  535,
			  534,  533,  532,  531,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0, 1739,    0,    0,    0,    0, yyDummy>>,
			1, 1000, 2000)
		end

	yytable_template_4 (an_array: ARRAY [INTEGER])
			-- Fill chunk #4 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			    0, -709, -709, -709,    0, -709,    0, -709, -709, -709,
			 -709, -709, -709,    0, -709, -709, -709,    0, -709, -709,
			    0,    0, -709, -709,    0,    0, -709, -709, -709,    0,
			 -709, -709,    0,    0,    0,    0, -709,    0, -709, -709,
			 -709,    0,    0, -709, -709, -709,    0,    0,    0, -709,
			    0, -709,    0,    0,    0, -709, -709, -709, -709,    0,
			    0, -709, -709,    0,    0,    0, -709, -709, -709, 1370,
			 -709, -709, -709, -709, -709, -709, -709, -709, -709, -709,
			 -709, -709, -709, -709, -709, -709, -709, -709, -709, -709,
			 -709, -709, -709, -709, -709, -709, -709, -709, -709, -709,

			 -709, -709, -709, -709, -709, -709, -709, -709, -709, -709,
			 -709, -709, -709, -709, -709, -709, -709, -709, -709,    0,
			 -709, -709,    0, -709, -709,    0, -709, -709, -709,    0,
			 -709, -709, -709, -709, -709, -709, -709, -709, -709,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0, 1215, 1434, 1437,    0,
			    0, 1444, 1447, 1449, 1450, 1451,    0,    0,    0,    0,
			 1455,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,  552,    0,    0,    0,    0,  551,
			  550,  549,    0,  548,    0,    0,    0,  161,  161,    0,

			    0,  161,  161,  161,    0,    0,    0,    0,    0,    0,
			    0,  160,  166,    0,  552,  179,  184,  188,    0,  547,
			  546,  545,  544,  543,  542,  541,  540,  539,    0, 1504,
			    0,    0, 1508,    0,    0,    0,    0,    0,    0, 1513,
			    0,    0, 1517,  536,  535,  534,  533,  532,  531,  547,
			  546,  545,  544,  543,  542,  541,  540,  539,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,  161,
			    0,    0,  161,  536,  535,  534,  533,  532,  531,  161,
			    0,    0,  161,  235,    0,    0,  246,    0,    0,    0,
			    0,    0,    0,  277,    0,    0,  287, -710, -710, -710,

			    0, -710,    0, -710, -710, -710, -710, -710, -710,    0,
			 -710, -710, -710,    0, -710, -710,    0,    0, -710, -710,
			    0,    0, -710, -710, -710,    0, -710, -710,    0,    0,
			    0,    0, -710,    0, -710, -710, -710,    0,    0, -710,
			 -710, -710,    0,    0,    0, -710,    0, -710,    0,    0,
			    0, -710, -710, -710, -710,    0,    0, -710, -710,    0,
			    0,    0, -710, -710, -710,    0, -710, -710, -710, -710,
			 -710, -710, -710, -710, -710, -710, -710, -710, -710, -710,
			 -710, -710, -710, -710, -710, -710, -710, -710, -710, -710,
			 -710, -710, -710, -710, -710, -710, -710, -710, -710, -710,

			 -710, -710, -710, -710, -710, -710, -710, -710, -710, -710,
			 -710, -710, -710, -710, -710,    0, -710, -710,    0, -710,
			 -710,    0, -710, -710, -710,    0, -710, -710, -710, -710,
			 -710, -710, -710, -710, -710, -708, -708, -708,    0, -708,
			    0, -708, -708, -708, -708, -708, -708,    0, -708, -708,
			 -708,    0, -708, -708,    0,    0, -708, -708,    0,    0,
			 -708, -708, -708,    0, -708, -708,    0,    0,    0,    0,
			 -708,    0, -708, -708, -708,    0,    0, -708, -708, -708,
			    0,    0,    0, -708,    0, -708,    0,    0,    0, -708,
			 -708, -708, -708,    0,    0, -708, -708,    0,    0,    0,

			 -708, -708, -708,    0, -708, -708, -708, -708, -708, -708,
			 -708, -708, -708, -708, -708, -708, -708, -708, -708, -708,
			 -708, -708, -708, -708, -708, -708, -708, -708, -708, -708,
			 -708, -708, -708, -708, -708, -708, -708, -708, -708, -708,
			 -708, -708, -708, -708, -708, -708, -708, -708, -708, -708,
			 -708, -708, -708,    0, -708, -708,    0, -708, -708,    0,
			 -708, -708, -708,    0, -708, -708, -708, -708, -708, -708,
			 -708, -708, -708, -337, -337, -337,    0, -337,    0, -337,
			 -337, -337, -337, -337, -337,    0, -337, -337, -337,    0,
			 -337, -337,    0,    0, -337, -337,    0,    0, -337, -337,

			 -337,    0, -337, -337,    0,    0,    0,    0, -337,    0,
			 -337, -337, -337,    0,    0, -337, -337, -337,    0,    0,
			    0, -337,    0, -337,    0,    0,    0, -337, -337, -337,
			 -337,    0,    0, -337, -337,    0,    0,    0, -337, -337,
			 -337,    0, -337, -337, -337, -337, -337, -337, -337, -337,
			 -337, -337, -337, -337, -337, -337, -337, -337, -337, -337,
			 -337, -337, -337, -337, -337, -337, -337, -337, -337, -337,
			 -337, -337, -337, -337, -337, -337, -337, -337, -337, -337,
			 -337, -337, -337, -337, -337, -337, -337, -337, -337, -337,
			 -337,    0, -337, -337,    0, -337, -337,    0, -337, -337,

			 -337,    0, -337, -337, -337, -337, -337, -337, -337, -337,
			 -337, -703,    0, -703,    0, -703,    0, -703, -703, -703,
			 -703,    0,    0, -703, -703,    0, -703,    0,    0,    0,
			 -703, -703,    0,    0,    0, -703,    0,    0,    0, -703,
			    0,    0,    0,    0, -703,    0, -703, -703,    0,    0,
			    0, -703, -703,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0, -703,    0, -703, -703,    0,    0, -703,
			    0, -712,    0,    0, -703, -703, -703,    0, -703, -703,
			    0, -703, -703, -703,    0,    0,    0,    0,    0,    0,
			 -703, -703, -703, -703, -703, -703, -703, -703, -703, -703,

			 -703, -703, -703, -703, -703, -703, -703, -703, -703, -703,
			 -703, -703,    0, -703, -703,    0,    0,    0,    0,    0,
			    0,    0,    0,    0, -703, -703, -703,    0,    0, -703,
			    0, -703,    0,    0,    0, -702, -703, -702, -703, -702,
			    0, -702, -702, -702, -702, -703, -709, -702, -702,    0,
			 -702,    0,    0,    0, -702, -702,    0,    0,    0, -702,
			    0,    0,    0, -702,    0,    0,    0,    0, -702,    0,
			 -702, -702,    0,    0,    0, -702, -702,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,    0, -702,    0, -702,
			 -702,    0,    0, -702,    0, -711,    0,    0, -702, -702,

			 -702,    0, -702, -702,    0, -702, -702, -702,    0,    0,
			    0,    0,    0,    0, -702, -702, -702, -702, -702, -702,
			 -702, -702, -702, -702, -702, -702, -702, -702, -702, -702,
			 -702, -702, -702, -702, -702, -702,    0, -702, -702,    0,
			    0,    0,    0,    0,    0,    0,    0,    0, -702, -702,
			 -702,    0,    0, -702,    0, -702,    0,    0,    0, -727,
			 -702, -727, -702, -727,    0, -727, -727, -727, -727, -702,
			 -710, -727, -727,    0, -727,    0,    0,    0, -727, -727,
			    0,    0,    0, -727,    0,    0,    0, -727,    0,    0,
			    0,    0, -727,    0, -727, -727,    0,    0,    0, -727, yyDummy>>,
			1, 1000, 3000)
		end

	yytable_template_5 (an_array: ARRAY [INTEGER])
			-- Fill chunk #5 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			 -727,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0, -727,    0, -727, -727,    0,    0, -727,    0,    0,
			    0,    0, -727, -727, -727,    0, -727, -727,    0, -727,
			 -727, -727,    0,    0,    0,    0,    0,    0, -727, -727,
			 -727, -727, -727, -727, -727, -727, -727, -727, -727, -727,
			 -727, -727, -727, -727, -727, -727, -727, -727, -727, -727,
			    0, -727, -727,    0,    0,    0,    0,    0,    0,    0,
			    0,    0, -727, -727, -727,    0,    0, -727,    0,  507,
			    0,    0,    0,    0, -727, -727, -727,    0,    0,    0,
			    0,    0,    0, -727, -727, -701,    0, -701,    0, -701,

			    0, -701, -701, -701, -701,    0,    0, -701, -701,    0,
			 -701,    0,    0,    0, -701, -701,    0,    0,    0, -701,
			    0,    0,    0, -701,    0,    0,    0,    0, -701,    0,
			 -701, -701,    0,    0,    0, -701, -701,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,    0, -701,    0, -701,
			 -701,    0,    0, -701,    0,    0,    0,    0, -701, -701,
			 -701,    0, -701, -701,    0, -701, -701, -701,    0,    0,
			    0,    0,    0,    0, -701, -701, -701, -701, -701, -701,
			 -701, -701, -701, -701, -701, -701, -701, -701, -701, -701,
			 -701, -701, -701, -701, -701, -701,    0, -701, -701,    0,

			    0,    0,    0,    0,    0,    0,    0,    0, -701, -701,
			 -701,    0,    0, -701,    0, -701,    0,    0,    0, -706,
			 -701, -706, -701, -706,    0, -706, -706, -706, -706, -701,
			 -708, -706, -706,    0, -706,    0,    0,    0, -706, -706,
			    0,    0,    0, -706,    0,    0,    0, -706,    0,    0,
			    0,    0, -706,    0, -706, -706,    0,    0,    0, -706,
			 -706,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0, -706,    0, -706, -706,    0,    0, -706,    0,    0,
			    0,    0, -706, -706, -706,    0, -706, -706,    0, -706,
			 -706, -706,    0,    0,    0,    0,    0,    0, -706, -706,

			 -706, -706, -706, -706, -706, -706, -706, -706, -706, -706,
			 -706, -706, -706, -706, -706, -706, -706, -706, -706, -706,
			    0, -706, -706,    0,    0,    0,    0,    0,    0,    0,
			    0,    0, -706, -706, -706,    0,    0, -706,    0, -706,
			    0,    0,    0, -707, -706, -707, -706, -707,    0, -707,
			 -707, -707, -707, -706,    0, -707, -707,    0, -707,    0,
			    0,    0, -707, -707,    0,    0,    0, -707,    0,    0,
			    0, -707,    0,    0,    0,    0, -707,    0, -707, -707,
			    0,    0,    0, -707, -707,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0, -707,    0, -707, -707,    0,

			    0, -707,    0,    0,    0,    0, -707, -707, -707,    0,
			 -707, -707,    0, -707, -707, -707,    0,    0,    0,    0,
			    0,    0, -707, -707, -707, -707, -707, -707, -707, -707,
			 -707, -707, -707, -707, -707, -707, -707, -707, -707, -707,
			 -707, -707, -707, -707,    0, -707, -707,    0,    0,    0,
			    0,    0,    0,    0,    0,    0, -707, -707, -707,    0,
			    0, -707,    0, -707,    0,    0,    0, -705, -707, -705,
			 -707, -705,    0, -705, -705, -705, -705, -707,    0, -705,
			 -705,    0, -705,    0,    0,    0, -705, -705,    0,    0,
			    0, -705,    0,    0,    0, -705,    0,    0,    0,    0,

			 -705,    0, -705, -705,    0,    0,    0, -705, -705,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0, -705,
			    0, -705, -705,    0,    0, -705,    0,    0,    0,    0,
			 -705, -705, -705,    0, -705, -705,    0, -705, -705, -705,
			    0,    0,    0,    0,    0,    0, -705, -705, -705, -705,
			 -705, -705, -705, -705, -705, -705, -705, -705, -705, -705,
			 -705, -705, -705, -705, -705, -705, -705, -705,    0, -705,
			 -705,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			 -705, -705, -705,    0,    0, -705,    0, -705,    0,    0,
			    0, -704, -705, -704, -705, -704,    0, -704, -704, -704,

			 -704, -705,    0, -704, -704,    0, -704,    0,    0,    0,
			 -704, -704,    0,    0,    0, -704,    0,    0,    0, -704,
			    0,    0,    0,    0, -704,    0, -704, -704,    0,    0,
			    0, -704, -704,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0, -704,    0, -704, -704,    0,    0, -704,
			    0,    0,    0,    0, -704, -704, -704,    0, -704, -704,
			    0, -704, -704, -704,    0,    0,    0,    0,    0,    0,
			 -704, -704, -704, -704, -704, -704, -704, -704, -704, -704,
			 -704, -704, -704, -704, -704, -704, -704, -704, -704, -704,
			 -704, -704,    0, -704, -704,    0,    0,   74,    0,    0,

			    0,    0,    0,    0, -704, -704, -704,  334,    0, -704,
			    0, -704,    0,    0,    0,    0, -704,    0, -704,    0,
			    0,    0,    0,  333,    0, -704,    0,    0,    0,    0,
			  332,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,  331,    0,    0,    0,    0,    0,  330,    0,  329,
			  328,    0,    0,  327,    0,    0,    0,    0,  326,   72,
			   71,    0,   70,  325,  324,   34,   33,   32,  323,    0,
			    0,    0,  322,    0,   68,   67,   66,   65,   64,   63,
			   62,   61,   60,   59,   58,   57,   56,   55,   54,   53,
			   52,   51,   50,   49,   48,   47,  321,  320,    0,    0,

			    0,   74,    0,    0,    0,    0,    0,    0,  319,   45,
			   44,  334,  318,  960,    0,  316, 1121,    0,    0,    0,
			  315,    0,    0,  314,  313,    0,    0,  333,    0,    0,
			  132,  959,    0,    0,  332,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,  331,    0,    0,    0,    0,
			    0,  330,    0,  329,  328,    0,    0,  327,    0,    0,
			    0,    0,  326,   72,   71,    0,   70,  325,  324,   34,
			   33,   32,  323,    0,    0,    0,  322,    0,   68,   67,
			   66,   65,   64,   63,   62,   61,   60,   59,   58,   57,
			   56,   55,   54,   53,   52,   51,   50,   49,   48,   47,

			  321,  320,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,  319,   45,   44,    0,  318,  960, 1285,  316,
			 1284,    0, 1283,    0,  315,    0,    0,  314,  313,    0,
			 1282, 1281,    0, 1280,  132,  959,    0, 1279,    0,    0,
			    0,    0,    0,    0,    0,    0,  333,    0,    0,    0,
			    0,    0,    0,  332,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			 1278,    0,  329, 1277,    0,    0,  327,    0,    0,    0,
			    0,  326,   72,   71,    0,   70,  325,    0,   34,   33,
			   32,    0,    0,    0,    0,    0,    0,   68,   67,   66, yyDummy>>,
			1, 1000, 4000)
		end

	yytable_template_6 (an_array: ARRAY [INTEGER])
			-- Fill chunk #6 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			   65,   64,   63,   62,   61,   60,   59,   58,   57,   56,
			   55,   54,   53,   52,   51,   50,   49,   48,   47,    0,
			 1276, 1275,    0,    0,   74,    0,    0,    0,    0,    0,
			 1547,  319,   45,   44,  334,    0, 1274,    0,  316,    0,
			    0,    0,    0,  315,    0, 1273,    0,    0,    0,    0,
			  333,    0, 1272,    0,    0,    0,    0,  332,    0, 1465,
			    0,    0,    0,    0,    0,    0,    0,    0,  331,    0,
			    0,    0,    0,    0,  330,    0,  329,  328,    0,    0,
			  327,    0,    0,    0,    0,  326,   72,   71,    0,   70,
			  325,  324,   34,   33,   32,  323,    0,    0,    0,  322,

			    0,   68,   67,   66,   65,   64,   63,   62,   61,   60,
			   59,   58,   57,   56,   55,   54,   53,   52,   51,   50,
			   49,   48,   47,  321,  320,    0,    0,    0,   74,    0,
			    0,    0,    0,    0, 1466,  319,   45,   44,  334,  318,
			  317,    0,  316,    0,    0,    0,    0,  315,    0,    0,
			  314,  313,    0,    0,  333,    0,    0,  132,    0,    0,
			    0,  332,    0, 1465,    0,    0,    0,    0,    0,    0,
			    0,    0,  331,    0,    0,    0,    0,    0,  330,    0,
			  329,  328,    0,    0,  327,    0,    0,    0,    0,  326,
			   72,   71,    0,   70,  325,  324,   34,   33,   32,  323,

			    0,    0,    0,  322,    0,   68,   67,   66,   65,   64,
			   63,   62,   61,   60,   59,   58,   57,   56,   55,   54,
			   53,   52,   51,   50,   49,   48,   47,  321,  320,    0,
			    0,    0,   74,    0,    0,    0,    0,    0,    0,  319,
			   45,   44,  334,  318,  317,    0,  316,    0,    0,    0,
			    0,  315,    0,    0,  314,  313,    0,    0,  333,    0,
			    0,  132,    0,    0,    0,  332,    0, 1307,    0,    0,
			    0,    0,    0,    0,    0,    0,  331,    0,    0,    0,
			    0,    0,  330,    0,  329,  328,    0,    0,  327,    0,
			    0,    0,    0,  326,   72,   71,    0,   70,  325,  324,

			   34,   33,   32,  323,    0,    0,    0,  322,    0,   68,
			   67,   66,   65,   64,   63,   62,   61,   60,   59,   58,
			   57,   56,   55,   54,   53,   52,   51,   50,   49,   48,
			   47,  321,  320,    0,    0,    0,   74,    0,    0,    0,
			    0,    0,    0,  319,   45,   44,  334,  318,  317,    0,
			  316,    0,    0,    0,    0,  315,    0,    0,  314,  313,
			    0,    0,  333,    0,    0,  132,    0,    0,    0,  332,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			  331,    0,    0,    0,    0,    0,  330,    0,  329,  328,
			    0,    0,  327,    0,    0,    0,    0,  326,   72,   71,

			    0,   70,  325,  324,   34,   33,   32,  323,    0,    0,
			    0,  322,    0,   68,   67,   66,   65,   64,   63,   62,
			   61,   60,   59,   58,   57,   56,   55,   54,   53,   52,
			   51,   50,   49,   48,   47,  321,  320,    0,    0,    0,
			   74,    0,    0,    0,    0,    0,    0,  319,   45,   44,
			  334,  318,  317,    0,  316,    0,    0,    0, 1116,  315,
			    0,    0,  314,  313,    0,    0,  333,    0,    0,  132,
			    0,    0,    0,  332,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,  331,    0,    0,    0,    0,    0,
			  330,    0,  329,  328,    0,    0,  327,    0,    0,    0,

			    0,  326,   72,   71,    0,   70,  325,  324,   34,   33,
			   32,  323,    0,    0,    0,  322,    0,   68,   67,   66,
			   65,   64,   63,   62,   61,   60,   59,   58,   57,   56,
			   55,   54,   53,   52,   51,   50,   49,   48,   47,  321,
			  320,    0,    0,    0,   74,    0,    0,    0,    0,    0,
			    0,  319,   45,   44,  334,  318, 1106,    0,  316,    0,
			    0,    0,    0,  315,  913,    0,  314,  313,    0,    0,
			  333,    0,    0,  132,    0,    0,    0,  332,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,  331,    0,
			    0,    0,    0,    0,  330,    0,  329,  328,    0,    0,

			  327,    0,    0,    0,    0,  326,   72,   71,    0,   70,
			  325,  324,   34,   33,   32,  323,    0,    0,    0,  322,
			    0,   68,   67,   66,   65,   64,   63,   62,   61,   60,
			   59,   58,   57,   56,   55,   54,   53,   52,   51,   50,
			   49,   48,   47,  321,  320,    0,    0,    0,   74,    0,
			    0,    0,  924,    0,    0,  319,   45,   44,  334,  318,
			  317,    0,  316, 1090,    0,    0,    0,  315,    0,    0,
			  314,  313,    0,    0,  333,    0,    0,  132,    0,    0,
			    0,  332,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,  331,    0,    0,    0,    0,    0,  330,    0,

			  329,  328,    0,    0,  327,    0,    0,    0,    0,  326,
			   72,   71,    0,   70,  325,  324,   34,   33,   32,  323,
			    0,    0,    0,  322,    0,   68,   67,   66,   65,   64,
			   63,   62,   61,   60,   59,   58,   57,   56,   55,   54,
			   53,   52,   51,   50,   49,   48,   47,  321,  320,    0,
			    0,    0,   74,    0,    0,    0,    0,    0,    0,  319,
			   45,   44,  334,  318,  317,    0,  316,    0,    0,    0,
			    0,  315,    0,    0,  314,  313,    0,    0,  333,    0,
			    0,  132,    0,    0,    0,  332,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,  331,    0,    0,    0,

			    0,    0,  330,    0,  329,  328,    0,    0,  327,  915,
			    0,    0,    0,  326,   72,   71,    0,   70,  325,  324,
			   34,   33,   32,  323,    0,    0,    0,  322,    0,   68,
			   67,   66,   65,   64,   63,   62,   61,   60,   59,   58,
			   57,   56,   55,   54,   53,   52,   51,   50,   49,   48,
			   47,  321,  320,    0,    0,    0,   74,    0,    0,    0,
			    0,    0,    0,  319,   45,   44,  334,  318,  317,    0,
			  316,    0,    0,    0,    0,  315,    0,    0,  314,  313,
			    0,    0,  333,    0,    0,  132,    0,    0,    0,  332,
			    0,  769,    0,    0,    0,    0,    0,    0,    0,    0,

			  331,    0,    0,    0,    0,    0,  330,    0,  329,  328,
			    0,    0,  327,    0,    0,    0,    0,  326,   72,   71,
			    0,   70,  325,  324,   34,   33,   32,  323,    0,    0,
			    0,  322,    0,   68,   67,   66,   65,   64,   63,   62,
			   61,   60,   59,   58,   57,   56,   55,   54,   53,   52,
			   51,   50,   49,   48,   47,  321,  320,    0,    0,    0,
			   74,    0,    0,    0,  767,    0,    0,  319,   45,   44,
			  334,  318,  317,    0,  316,    0,    0,    0,    0,  315,
			    0,    0,  314,  313,    0,    0,  333,    0,    0,  132,
			    0,    0,    0,  332,    0,    0,    0,    0,    0,    0, yyDummy>>,
			1, 1000, 5000)
		end

	yytable_template_7 (an_array: ARRAY [INTEGER])
			-- Fill chunk #7 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			    0,    0,    0,    0,  331,    0,    0,    0,    0,    0,
			  330,    0,  329,  328,    0,    0,  327,    0,    0,    0,
			    0,  326,   72,   71,    0,   70,  325,  324,   34,   33,
			   32,  323,    0,    0,    0,  322,    0,   68,   67,   66,
			   65,   64,   63,   62,   61,   60,   59,   58,   57,   56,
			   55,   54,   53,   52,   51,   50,   49,   48,   47,  321,
			  320,    0,    0,    0,   74,    0,    0,    0,    0,    0,
			    0,  319,   45,   44,  334,  318,  317,    0,  316,    0,
			    0,    0,    0,  315,    0,    0,  314,  313,    0,    0,
			  333,    0,    0,  132,    0,    0,    0,  332,    0,    0,

			    0,    0,    0,    0,    0,    0,    0,    0,  331,    0,
			    0,    0,    0,    0,  330,    0,  329,  328,    0,    0,
			  327,    0,    0,    0,    0,  326,   72,   71,    0,   70,
			  325,  324,   34,   33,   32,  323,    0,    0,    0,  322,
			    0,   68,   67,   66,   65,   64,   63,   62,   61,   60,
			   59,   58,   57,   56,   55,   54,   53,   52,   51,   50,
			   49,   48,   47,  321,  320,    0,    0,    0,   74,    0,
			    0,    0,    0,    0,    0,  319,   45,   44,  334,  318,
			  317,    0,  316,    0,    0,    0,  557,  315,    0,    0,
			  314,  313,    0,    0,  333,    0,    0,  132,    0,    0,

			    0,  332,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,  331,    0,    0,    0,    0,    0,  330,    0,
			  329,  328,    0,    0,  327,    0,    0,    0,    0,  326,
			   72,   71,    0,   70,  325,  324,   34,   33,   32,  323,
			    0,    0,    0,  322,    0,   68,   67,   66,   65,   64,
			   63,   62,   61,   60,   59,   58,   57,   56,   55,   54,
			   53,   52,   51,   50,   49,   48,   47,  321,  320,    0,
			    0,    0,   74,    0,    0,    0,    0,    0,    0,  319,
			   45,   44,  334,  318,  317,    0,  316,    0,    0,    0,
			    0,  315,    0,    0,  314,  313,    0,    0,  333,    0,

			    0,  132,    0,    0,    0,  332,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,  331,    0,    0,    0,
			    0,    0,  330,    0,  329,  328,    0,    0,  327,    0,
			    0,    0,    0,  326,   72,   71,    0,   70,  325,  324,
			   34,   33,   32,  323,    0,   74,    0,  322,    0,   68,
			   67,   66,   65,   64,   63,   62,   61,   60,   59,   58,
			   57,   56,   55,   54,   53,   52,   51,   50,   49,   48,
			   47,  321,  320,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,  319,   45,   44,    0,  318,  523,    0,
			  316,    0,    0,    0,    0,  315,    0,    0,  314,  313,

			    0,    0,    0,    0,    0,  132,   73,   72,   71,    0,
			   70,    0,    0,   34,   33,   32,   69,    0,    0,    0,
			    0,    0,   68,   67,   66,   65,   64,   63,   62,   61,
			   60,   59,   58,   57,   56,   55,   54,   53,   52,   51,
			   50,   49,   48,   47,   46,    0,    0,    0,    0, 1332,
			    0,    0,    0,    0,    0,    0,    0,   45,   44,    0,
			    0,   43,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,   42,   41, 1331,   72,   71,    0,   70,    0,    0,
			    0,    0,    0,   69,    0,    0,    0,    0,    0,   68,
			   67,   66,   65,   64,   63,   62,   61,   60,   59,   58,

			   57,   56,   55,   54,   53,   52,   51,   50,   49,   48,
			   47,   46,  552,    0,    0,    0,  914,  551,  550,  549,
			    0,  548,    0,    0,   45,   44,  552,    0,   43,    0,
			    0,  551,  550,  549,    0,  548,    0,    0,   42,   41,
			    0,    0,    0,    0,    0,    0,    0,  547,  546,  545,
			  544,  543,  542,  541,  540,  539,    0,    0,    0,    0,
			    0,  547,  546,  545,  544,  543,  542,  541,  540,  539,
			    0,  536,  535,  534,  533,  532,  531, 1023,    0,    0,
			  538,    0,    0,    0,    0,  536,  535,  534,  533,  532,
			  531,   70,    0,    0,    0,    0,    0,   69,    0,    0,

			    0,    0,    0,   68,   67,   66,   65,   64,   63,   62,
			   61,   60,   59,   58,   57,   56,   55,   54,   53,   52,
			   51,   50,   49,   48,   47,   46,  552,    0,    0,    0,
			    0,  551,  550,  549,    0,  548,    0,    0,   45,   44,
			  552,    0,    0,    0,    0,  551,  550,  549,    0,  548,
			  913,    0,   42,   41,    0,    0,    0,    0,    0,    0,
			 1325,  547,  546,  545,  544,  543,  542,  541,  540,  539,
			    0,    0,    0,    0,    0,  547,  546,  545,  544,  543,
			  542,  541,  540,  539,    0,  536,  535,  534,  533,  532,
			  531,  843,    0,    0,  538, 1115,    0,    0,    0,  536,

			  535,  534,  533,  532,  531,  552,    0,    0,    0,    0,
			  551,  550,  549,    0,  548,    0,   68,   67,   66,   65,
			   64,   63,   62,   61,   60,   59,   58,   57,   56,   55,
			   54,   53,   52,   51,   50,   49,   48,   47,    0,    0,
			  547,  546,  545,  544,  543,  542,  541,  540,  539,  552,
			    0,    0,   44,    0,  551,  550,  549, 1089,  548,  538,
			    0,    0,    0,    0,  536,  535,  534,  533,  532,  531,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,  547,  546,  545,  544,  543,  542,
			  541,  540,  539,  552,    0,    0,    0,    0,  551,  550,

			  549,    0,  548,  538,  537,    0,    0,    0,  536,  535,
			  534,  533,  532,  531,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,  547,  546,
			  545,  544,  543,  542,  541,  540,  539,  552,    0,    0,
			    0,    0,  551,  550,  549,  778,  548,    0,    0,    0,
			    0,    0,  536,  535,  534,  533,  532,  531,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,  547,  546,  545,  544,  543,  542,  541,  540,
			  539,  552,    0,    0,    0,    0,  551,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,  536,  535,  534,  533,

			  532,  531,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,  547,  546,  545,  544,
			  543,  542,  541,  540,  539,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			  536,  535,  534,  533,  532,  531,   70,    0,    0,    0,
			    0,    0,   69,    0,    0,    0,    0,    0,   68,   67,
			   66,   65,   64,   63,   62,   61,   60,   59,   58,   57,
			   56,   55,   54,   53,   52,   51,   50,   49,   48,   47,
			   46,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,   45,   44,    0,    0,   70,    0,    0, yyDummy>>,
			1, 1000, 6000)
		end

	yytable_template_8 (an_array: ARRAY [INTEGER])
			-- Fill chunk #8 of template for `yytable'.
		do
			yyarray_subcopy (an_array, <<
			    0,    0,    0,   69,    0,  913,    0,   42,   41,   68,
			   67,   66,   65,   64,   63,   62,   61,   60,   59,   58,
			   57,   56,   55,   54,   53,   52,   51,   50,   49,   48,
			   47,   46,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,   45,   44,    0,    0,   70,    0,
			    0,    0,    0,    0,    0,    0,    0,    0,   42,   41,
			   68,   67,   66,   65,   64,   63,   62,   61,   60,   59,
			   58,   57,   56,   55,   54,   53,   52,   51,   50,   49,
			   48,   47,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,    0,   45,   44,    0,    0,    0,

			    0,    0,    0,    0,    0,    0,    0, 1524,   68,   67,
			   66,   65,   64,   63,   62,   61,   60,   59,   58,   57,
			   56,   55,   54,   53,   52,   51,   50,   49,   48,   47,
			    0,    0,    0,    0,    0,    0,    0,    0,    0,    0,
			    0,    0,    0,    0,   44,    0,    0,  145, 1060, 1059,
			 1058, 1057, 1056, 1055, 1054, 1053, 1052, 1051, 1050, 1049,
			 1048, 1047, 1046, 1045, 1044, 1043, 1042, 1041, 1040, 1039,
			  717,  716,  715,  714,  713,  712,  711,  710,  709,  708,
			  707,  706,  705,  704,  703,  702,    0,    0,  701,  700,
			  699,  698,  697,  696,  695,  694,  693,  692,  691,  690,

			  689,  688,  687,  686,  685,  684,  683,  682,    0,    0,
			  681,  680,  679,  678, yyDummy>>,
			1, 214, 7000)
		end

	yycheck_template: SPECIAL [INTEGER]
			-- Template for `yycheck'
		local
			an_array: ARRAY [INTEGER]
		once
			create an_array.make_filled (0, 0, 7213)
			yycheck_template_1 (an_array)
			yycheck_template_2 (an_array)
			yycheck_template_3 (an_array)
			yycheck_template_4 (an_array)
			yycheck_template_5 (an_array)
			yycheck_template_6 (an_array)
			yycheck_template_7 (an_array)
			yycheck_template_8 (an_array)
			Result := yyfixed_array (an_array)
		end

	yycheck_template_1 (an_array: ARRAY [INTEGER])
			-- Fill chunk #1 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   21,   98,  116,   17,  198,   21,  528,   21,   21,  615,
			    1,    8,    9,  124,  331,  745,  255,  209,   21,  218,
			   21,  170, 1114,  521,  515,  329,  313,  314, 1284,  201,
			  170,  318,   21,   30,   31,  322,  574,  324,  221,   21,
			  879,   38,  616,   40, 1104,  574,  853, 1245, 1246,  623,
			  940,  598,  740,   43,  592,  396,  196,  149, 1391,  876,
			  823,  616,   83,  328,  303,  775, 1531,   83,  623,   83,
			   83,   14,  170, 1203, 1203,   27,   14, 1292, 1245, 1246,
			   83,   76,   83,   97,  198,  106,   21, 1203,   38,  103,
			  106,    0,  106,  106,   83,   98,   76,   98,  196, 1203,

			 1103,   83,  116,  106, 1203,  106, 1362, 1465, 1550,  123,
			   14,  209,   79, 1203,  135,  264,  265,  106,   38,  135,
			    4,  135,  135,  263,  106,  139,  140,  219,  142,  871,
			  156,  873,  135,  315,  135, 1038,  162,  151,  152,  153,
			  107,  131,  256,   47,  158,  140,  135,  329,   83,  175,
			  164,  148,  149,  135,  180,  145,  170,   28,  269,  185,
			  140, 1594,   75,  177,   83,  263,   66,   67,  182, 1611,
			 1528,  106,  186, 1388,   28,   59,  128,  198,  128,  130,
			  372,  373,   17,  197,   14,  357, 1651,  106,   14,  140,
			  304,  129,   11,    4,   29,  198,    0, 1453,  141, 1259,

			  135,  191,  401,   14,  117,   76,  232,   78,  128,  731,
			   40,  393, 1645,   48,   33,  945,  135,  243,  215,  233,
			 1027,   47,   76, 1283,   78,   36,  792,  241,   79,   40,
			  244,   14,  132,   44,  387, 1074,  333,  251,  442,    8,
			    9,  445,  256, 1006,  140,  398,  236,  957,  274,   18,
			  264,  265,  593, 1313, 1687, 1258,  107,  247,  284,  825,
			 1077,  275,  800,  377,   73, 1395, 1395,  608,  282, 1172,
			   79,  285,  801,  802,  372,  373,   14, 1610,  292, 1395,
			  854,  485,  486,  857,  298,  832, 1542,  834,  278,  836,
			  304, 1395,   11,   76,   77,   78, 1395,   22,  288,  854,

			 1190,  315,  857,  317,  294, 1395,   31,  130,  400, 1312,
			  315,  120,  616,  124,   33,  329,   28,  140, 1208,   28,
			 1062,   14,   15,  132,  329,  134,  135,  317,   17,  140,
			  333,   14,  333,   11,  506,    8,    9,   76,   77,   78,
			   29,   14,   51, 1182, 1247,   18,   39,   72,   74,   22,
			   76,   77,   78,   26,   11,   33,   11, 1164,   31,   48,
			   17,  124, 1422,  377,   76,   22,   78,   76,   77,   78,
			   27,   39,   29,   17,   31,   32,   33,  140,   33,  393,
			  394,   38,   55,  386,  498,   76,   77,   78,  127,   15,
			  387,   48,   14,  407,  125,   14, 1594,   54,  124,  108,

			   11,  398,  924,   17,   48,   49, 1094,   51,  434,  423,
			  141,  437,  677,  612, 1102,   29,  599,  431, 1421,  601,
			  446,   28,   33,  449,  125,  923,  452, 1594,  129,  419,
			 1237,  922, 1492,  125,   48, 1242,  127,  427, 1341,   14,
			  938, 1344,   49,   50,   51,   52,   53, 1645, 1178,  141,
			   74,  124,   76,   77,   78,   28, 1030,  471, 1348,  126,
			  664,  665,   17,   14,   11,  479,   76,   77,   78,   76,
			   77,   78,  462,  487,   29, 1030,  574,  467, 1645,  136,
			   12,   13,   14,  140,  498,  475,   33,   17, 1491, 1687,
			   76,   77,   78,   48,  592,   76,   77,   78,  108,   29,

			  124,  650,  651,   76, 1564,   78,  520,  772,  773,  523,
			   42,  651, 1415,  125,  528,  607,   17, 1609,   23,   14,
			 1687,  511,  108,   22, 1254,  719,  133,   14,   29, 1419,
			   35,   28,   31,  523,   11,  142,  676,  527,  124,  553,
			  554,   76,   77,   78,   79,  126,  728,  128,  129,  721,
			  854,  649,  724,  651,   51, 1615,   33,   14,   28, 1562,
			  574,   20, 1250,  745,   23,  389,  390,   14, 1628, 1175,
			  126,   76,   77,   78,   11,   14,   35,  675,  676,   76,
			  404,   78,  596,   14,  598,   11,  129,  601,   76,   77,
			   78,   79,  606,   18,  129, 1133,   33, 1487,  141,  134,

			  135,  615,  616, 1132, 1133,  719,   76,   33,   78,  623,
			   63, 1614, 1672,   28,   28, 1153,  642,   76,   77,   78,
			  646,   28,  127,   11, 1627,  942,   74,  653,   76,   77,
			   78,  657,   76,   77,   78,  649,  650,  651,   76,   77,
			   78,  129,   46,   47,   51,   33,  134,  135,   73,    3,
			  849,   76,   77,   78,   79,  920,   12, 1345,   14,   14,
			  674,   76,   76,   78,   78,   75,   54,   14, 1671,   76,
			 1560,   78,   11,  128,  129, 1173,  124,   66,   67,  793,
			 1570,  125, 1204,   76,   77,   78,   79,  125,  870,  871,
			  872,  873,  128,  129,   33,  120,  129,  130,  719,  124,

			  110,  111,  800,   14,   28, 1234,  116,  117,  118,  134,
			  135,   23,  826,   14,  728,   54,  719,  731,   17,  733,
			  734,  735,  736,   35,  134,  135, 1414,  741,  718,  743,
			   29,  745,   17,  747,   14, 1625,   17,  829,   17,   14,
			  730,  134,  135,  565,   29,  129,  568,  919,   29,  739,
			   29, 1249,   76,  902,   78,  577,  848,  141,  580,   14,
			   12,  583,   14,  945,   76,   77,   78,   48,  129,   48,
			  862,  975,   12,  977,   14,   14,  980,   28,   23,  793,
			   74,   14,   76,   77,   78, 1307,   28,  801,  802,  127,
			   35,  129,    8,    9,    8,    9, 1484,   28,   14,   14,

			 1087, 1489,   18, 1200, 1008, 1009,   22,  999,   14,  823,
			   26,   14,  826, 1210,  124,   31,  126,  831,  832,   28,
			  834,   47,  836, 1088,  132,   76, 1025,   78,   13,   74,
			  124,   76,   77,   78,   76,  126,   78,  128,   14,   55,
			  854,   30,   51,  857, 1342,   76,   74,   78,   76,   77,
			   78,  865,  165, 1245, 1246,   28,  870,  871,  872,  873,
			  851,   30,   31,  108, 1386,  178,   28,   76,  858,   78,
			  183,  885,   28,  887,  187,   14,  189,  190,   51, 1567,
			 1062,  126,  563,  564, 1281, 1067,  132,  901,  902,   51,
			   28,   28,  906,   22,  908,  909,  124,   14,   27,  913,

			   28,  999,   31,   76,   28,   78, 1011, 1012,  124,  222,
			  924,  925, 1309,   51,   76, 1413,   78,   14, 1416,   28,
			   76,  234,   78,   23,  927,   49,   50,   51,   52,   53,
			   14,  945,  245,   28,   14,   35,  939,   14,   76,   76,
			   78,   78, 1146, 1147,   14, 1037,  960,  937,   76, 1214,
			   78,   42,   76,   77,   78, 1154, 1353,  223,  224,  225,
			  782,   43,   43,  276,  786,   20, 1165,   76,   23,   78,
			  960,   14,   27,  286,   74,   14,   76,   77,   78,   28,
			   35,   76,   28,   78, 1381,  132,  127, 1169,  129,  811,
			 1488,  141, 1006,  815,  129,  130, 1178, 1011, 1012,  141, yyDummy>>,
			1, 1000, 0)
		end

	yycheck_template_2 (an_array: ARRAY [INTEGER])
			-- Fill chunk #2 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   49,   50,   51,   52,   53, 1402,  141,   14,  108,  133,
			   38,   74, 1277,   76,   77,   78, 1030,   46,  142,  129,
			  130,   76,   77,   78,  124, 1219,  126,   76,   77,   78,
			   76,  141,   78, 1131, 1299, 1133,   74,   28,   76,   77,
			   78,   74,   14,   76,   77,   78, 1036,   74, 1062,   76,
			   77,   78,   28, 1067, 1152, 1153,   74,   14,   76,   77,
			   78,  124, 1459,   14, 1078,   28, 1080,  115, 1082,   14,
			 1084,  126, 1254,  128,  129,   51,   46,   14, 1170,   36,
			   28, 1095, 1096,   40,  133,   76,  124,   78,   51,  129,
			  130,  124, 1106,  142,  125,   14,   28,  124, 1112, 1496,

			   76,  141,   78,   51,  125, 1219,  124,  127,  156,  129,
			   28,  125,   14,   76,  162,   78, 1106, 1131, 1132, 1133,
			   28,  132,   14,  436,   28,   14,  439,  175,   76,  126,
			   78,  128,  180,   51,  126,  448,  128,  185,  451, 1536,
			  453,  454,  455,   51,   76,   14,   78,  969, 1245, 1246,
			  972,  126,   28,  128, 1246, 1169, 1248,   32,   76,  981,
			   78, 1175,  984,   26, 1178,  987, 1563,   28,   76,   76,
			   78, 1161,   76,  132,   78, 1273, 1573,  133, 1192, 1193,
			 1194, 1195,  125,  124,  232,  126, 1189,  140,  132, 1203,
			 1204,   28,   14,   14, 1197,  243, 1435,   14, 1219, 1213,

			   76, 1215,   78,   38, 1207,   40,  141,  255,  141, 1474,
			 1475, 1608,  132,   66,   51,   76, 1219,   78,  132, 1233,
			 1234,   28,  132, 1620, 1245, 1246,  274,   28,   66, 1245,
			 1246,  132, 1245, 1246,   19,   28,  284,   14,   28,   76,
			 1254,   78, 1245, 1246, 1245, 1246,  124,   28,   14, 1239,
			 1364, 1343,  129,   28,    0,  303, 1245, 1246,   51, 1370,
			 1525,   51,  129, 1245, 1246,  130, 1663, 1270,  130,   76,
			 1284,   78, 1262,   28,  130,   76,   51,   78, 1543, 1676,
			  129,  130,  130,   76, 1274,   78,   76,  130,   78,  223,
			  224,  225,  141, 1307, 1308,   76,   51,   78,    0,   14,

			  130,   76, 1124,   78,   28,    7, 1128,   22, 1705,   28,
			   28,   26,   14, 1135,  201,   17,   31, 1139,   20, 1584,
			   22,   76,  130,   78,   26, 1590, 1437,   51,  376,   31,
			  643,  130,   51,   51,  647,   14,  384, 1363,   14,  125,
			   14,  654,   16,  127, 1347,  658,   48,   49, 1362,   51,
			 1364, 1211,   76,   55,   78, 1358,  132,   76,   76,   78,
			   78,   57,   36,   37,   14,   40,   40,  130,  130,   14,
			   44,   16, 1386,   26, 1639,  125,  130,   30, 1392, 1393,
			 1377, 1395,   75,  130, 1398,  130,  434,   28, 1653,  437,
			 1380,   36, 1382,   46,   47,   40,  130,  141,  446,   44,

			  141,  449,  130,  130,  452,  130, 1432,   28,   49,   50,
			   51,   52,   53,  130,  130, 1418, 1442,  110,  111, 1445,
			  130,    5, 1448,  116,  117,  118, 1691,  140,   49,   50,
			   51,   52,   53, 1454,   36,   76,   77,   78,   14, 1453,
			   14,    5, 1456,  330,   14,   14,  140,  127, 1335,  497,
			 1464, 1454, 1339, 1340, 1468,   76,   77,   78,  125,  129,
			   36,   14,  130, 1460,   40,  129,  129,   36,   44,  129,
			  357,   40,   76,   77,   78,   44,  130, 1503,  129,    8,
			    9, 1507,  129, 1486,  371,   14, 1512,  126,  132,   18,
			 1516,  125,  133,   22, 1354,  132, 1510,   26,  130,   14,

			 1360,  142,   31,   18,   76,   77,   78,   22,  132,  132,
			 1524,   26,  133,   76,   77,   78,   31,  565,  130,  567,
			  568,  142,  570,  130,   49,   50,   55,  130, 1542,  577,
			  130,  579,  580,  130,  582,  583,  584,  585,  586,  130,
			   55,  130,   14, 1403,  132, 1405,   18,   24,   25,   26,
			   22,   76,   77,   78,   26,   44, 1559,   14,   14,   31,
			  140,  129,  124,   28,  129,  125, 1569, 1192, 1193, 1194,
			 1195,  130,  128, 1594,  129, 1589,  130,  125, 1594,  125,
			 1594, 1594,  125,   55,   49,   50,   51,   52,   53,  125,
			 1604,  132,  132,  132,  642,  132,  130,  125,  646,  130,

			  130, 1715,  125,  130,  130,  653,  130, 1494,  130,  657,
			  130,   76,   77,   78,  733,  734,  735,  736,  130,  506,
			  130, 1624,  130,  130, 1645,  125,  132,  132,   16, 1645,
			   14, 1645, 1645,  520,   14,    3,   14, 1497,   20, 1499,
			 1654,   26,  129,  125,  531,  532,  533,  534,  535,  536,
			  130, 1641,  539,  540,  541,  542,  543,  544,  545,  546,
			  547,  548,  549,  550,  551,  552, 1687,   14,  133,  130,
			    8, 1687,  127, 1687, 1687,  127,    7,  142,    5,  132,
			   11,  127,  127,   14, 1571,  125,   17,  128,  132,   20,
			  125,  125,  125,  132, 1715, 1555,  132,   20,   29,  130,

			   23,   32,   33,  129,   27,  129,  129,   38,  130,  130,
			  129,  125,   35,  125, 1574,   18,  124,   48,   49,  606,
			   51,   14,  132,   54,  124,  132,  132,  132,  132,  126,
			 1617,   65,  125,  132,  782,  783,  132,  132,  786,  787,
			  129,  132,  132,  129,  792,  128,   14, 1634,   55, 1636,
			   62,  130,   62,   76,   77,   78,  130,  132,  125,  132,
			  808, 1621, 1622,  811,  812,  125,  130,  815,  816,  132,
			  132,  132,  130,   79, 1661, 1635,  132,  825,   79,  132,
			  567,   62,   14,  570,  130,  125,    7, 1674,  132,  132,
			    7, 1678,  579, 1680,    7,  582,   24,  584,  585,  586,

			  129,    7,  128,  126, 1664,  128,  129,  124,  128,  140,
			   17,  130, 1699,  141, 1701, 1702, 1703, 1677, 1532, 1679,
			 1239,  615,  945,  842, 1067,  357,  615, 1714,   79,    8,
			    9, 1718, 1358, 1720,  721,   14,  721,  724,  409,   18,
			 1700,  883, 1729,   22, 1731, 1732, 1706,   26,  409,  861,
			 1737, 1738,   31, 1740,  149,  142,  329,  409, 1745, 1719,
			  747,  748, 1254, 1750,  406, 1752,  149,  634, 1602,  149,
			 1730,  601, 1179, 1006,  216, 1246,   55,  808, 1469, 1739,
			  767,   28,  769, 1528, 1395, 1286, 1538,  774,  775, 1468,
			  777,  611, 1645, 1687, 1171,  962,  919,   -1,   -1,   -1,

			   -1,   -1,   49,   50,   51,   52,   53,   -1,   -1,  113,
			  114,   -1,   -1,   -1,  118,  119,  120,  121,  122,   -1,
			   -1,  969,   -1,  971,  972,   -1,  974,   -1,   -1,   76,
			   77,   78,   -1,  981,   -1,  983,  984,   -1,  986,  987,
			  988,  989,  990,   -1,   -1,   -1,  150,   -1,   -1,  113,
			  114,   -1,   -1,  157,  118,  119,  120,   -1,   -1,  163,
			   28,   -1,   -1,  113,  114,   -1,  170,   -1,  118,  119,
			  120,   -1,  176,   -1,   -1,   -1,   -1,  181,   -1,   -1,
			   -1,   49,   50,   51,   52,   53,  133,   -1,    8,    9,
			   -1,   -1,  196,  157,   14,  142,  783,   -1,   18,  163, yyDummy>>,
			1, 1000, 1000)
		end

	yycheck_template_3 (an_array: ARRAY [INTEGER])
			-- Fill chunk #3 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			  787,   -1,   22,   -1,   -1,  209,   26,  157,   76,   77,
			   78,   31,  176,  163,   -1,   -1,   -1,  181,   -1,  223,
			  224,  225,   -1,   -1,   -1,  812,  176,   -1,   -1,  816,
			   -1,  181,  919,   -1,   -1,   55,   -1,   -1,  925,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,  253,
			  254,   -1,   -1,   -1,  258,  259,  260,  261,  262,  263,
			   -1,   -1,  949,  950,   -1,  133,   -1,   -1,   -1,   -1,
			  957,   -1,   -1,   -1,  142,  962, 1124, 1125,   -1,   -1,
			 1128, 1129,   -1,   -1,   -1,   -1,   -1, 1135, 1136,  253,
			  254, 1139, 1140,   -1,  258,  259,  260,   -1,   -1,   -1,

			   -1,   -1,   -1,  253,  254,   -1,   -1,   -1,  258,  259,
			  260,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,    7,
			   -1, 1434,   -1,   11,   -1,   -1,   14,   -1,   -1,   17,
			   -1, 1444,   20,   -1, 1447,   -1, 1449, 1450, 1451,   -1,
			   -1,   29,   -1,   -1,   32,   33,   -1,   -1,   -1,   -1,
			   38,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   48,   49,   -1,   51,   -1,   -1,   54,   -1,  372,  373,
			  374,  375,   -1,   -1,  378,  379,  380,  381,  382,   -1,
			   -1,   -1,   -1,   -1,  971,   -1,   -1,  974,   -1,   -1,
			   -1, 1504,   -1,   -1,   -1, 1508,  983,   -1,   -1,  986,

			 1513,  988,  989,  990, 1517,   -1,   -1,   12, 1095,   14,
			  374,  375,   -1,    7,  378,  379,  380,   11,   -1,   -1,
			   14,   -1,   -1,   17,  374,  375,   20,   -1,  378,  379,
			  380,  435,   -1,   -1,  438,   29,   -1,   -1,   32,   33,
			   -1,   -1,   -1,  447,   38,   -1,  450,   -1,   -1,   -1,
			   -1,   -1,  140,   -1,   48,   49,   -1,   51,   -1,   -1,
			   54,   -1,   -1,   -1,   12,   13,   14,   15,   -1,   -1,
			   75,  435,   -1,   -1,  438,   80,   81,   82,   26,   84,
			   -1,   -1,   30,  447,   -1,  435,  450,   -1,  438,   -1,
			   -1,   39,   -1,   -1,   42,   -1,   -1,  447,   46,   47,

			  450,   -1,   -1,   -1,  508,  110,  111,  112,  113,  114,
			  115,  116,  117,  118,    7, 1363,   -1,   -1,   11,   -1,
			   -1,   14,   -1,   -1,   17,   -1,   -1,   20, 1215,  134,
			  135,  136,  137,  138,  139,   -1,   29,   -1, 1125,   32,
			   33,   -1, 1129,   -1,   -1,   38,  140,   -1,   -1, 1136,
			   -1,   -1,   -1, 1140,   -1,   48,   49,   -1,   51,   -1,
			   -1,   54,  566,   -1,   -1,  569,   -1,   -1,   -1,   -1,
			  574,   -1,   -1, 1105,  578,   -1,   -1,  581,   -1,   -1,
			   -1,   -1,   -1,   -1, 1432,   -1,   -1, 1435,  592,   -1,
			   -1, 1278, 1279, 1280, 1442,   -1,   -1, 1445,   -1,   -1,

			 1448,   -1,  566,   -1,   -1,  569,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,  578,   -1,  566,  581,   -1,  569,
			   -1, 1308,   -1,   -1,   -1,   -1,   -1,   -1,  578,   -1,
			   -1,  581,   -1,   -1,   -1,   -1,   -1,    5,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,  649,   -1,  651,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1, 1503,   -1,   -1,   -1, 1507,
			   -1,   -1,   -1,   -1, 1512,   -1, 1198,   -1, 1516,   -1,
			   -1,  675,  676,   -1,   -1,   -1,   -1, 1209,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   75,   -1,   -1,   -1,   -1,   80,

			   81,   82, 1389, 1390,   -1,   -1,   -1,   75,   -1, 1396,
			 1397, 1398,   80,   81,   82,   -1,   84,   -1,   -1,   -1,
			 1407,   -1,   -1,   -1,   -1,   -1,   -1,   -1, 1260,  110,
			  111,  112,  113,  114,  115,  116,  117,  118,   -1, 1271,
			   -1,   -1,  110,  111,  112,  113,  114,  115,  116,  117,
			  118,   -1,   -1,  134,  135,  136,  137,  138,  139,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,  134,  135,  136,  137,
			  138,  139,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1, 1468, 1314,   -1, 1316, 1472,  790,  791,   -1,   -1,
			   -1,  795,  796,  797,  798,  799,  800,    5,   -1,   -1,

			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,    7,   -1, 1346,   -1,   11,   -1,   -1,   14,
			 1352,   -1,   17,   -1,   -1,   20,  790,  791,   -1,   -1,
			   -1,  795,  796,  797,   29,   -1,   30,   32,   33,   -1,
			  790,  791,   -1,   38,   -1,  795,  796,  797,   -1,   -1,
			   -1,   -1,   -1,   48,   49,   -1,   51,   -1,   -1,   54,
			   -1,   -1,   -1,   -1, 1551,   -1,   -1,   75,   -1, 1401,
			   -1,   -1,   80,   81,   82,   -1,   84,   -1,   -1,   -1,
			   -1,   75,   -1,   -1,   -1, 1417,   80,   81,   82,   -1,
			   84, 1423,   -1, 1425,   -1,   -1,   -1,   -1,   -1,   -1,

			   -1,   -1,  110,  111,  112,  113,  114,  115,  116,  117,
			  118,   -1,   -1,   -1, 1601,   -1,  110,  111,  112,  113,
			  114,  115,  116,  117,  118,   -1,  134,  135,  136,  137,
			  138,  139,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			  134,  135,  136,  137,  138,  139,   -1,   -1, 1480,   -1,
			   -1,   -1,   -1, 1485,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1, 1493,   -1, 1495,   -1,   -1,  970,   -1,   -1,  973,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,  982,   -1,
			   -1,  985,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   22,   -1,   -1,   -1,   -1,  999,   -1,   -1,   -1,   31,

			   -1,   -1,   -1,   -1,   -1,   -1,  970,   -1,   -1,  973,
			   -1,   -1,   -1,   45,   -1,   -1,   -1,   -1,  982,   -1,
			  970,  985,   -1,  973,   -1,   -1, 1558,   -1,   -1,   -1,
			   -1,   -1,  982, 1565, 1566,  985, 1568,   69,   70,   71,
			 1572,   73,   -1,   -1,   -1, 1577,   -1,   79,   -1,   -1,
			   -1,   -1,   -1,   85,   86,   87,   88,   89,   90,   91,
			   92,   93,   94,   95,   96,   97,   98,   99,  100,  101,
			  102,  103,  104,  105,  106,  107,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1, 1616,   -1, 1618,   43,  120,  121,
			   -1, 1623,  124,   -1,   -1,   -1,   -1, 1629,   -1,   -1,

			 1632,   -1,  134,  135,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   75,
			   -1,   -1,   -1,   -1,   80,   81,   82, 1131,   84, 1133,
			 1662,   -1,   -1,   -1,   -1, 1667,   -1,   -1,   -1,   -1,
			   -1, 1673,   -1, 1675,   -1,   -1,   -1,   -1, 1152, 1153,
			   -1,   -1,   -1,   -1,  110,  111,  112,  113,  114,  115,
			  116,  117,  118,   -1,   -1, 1697,   -1,   -1,   -1,   -1,
			   -1,   -1, 1704,   -1,   -1,   -1,   -1, 1709,  134,  135,
			  136,  137,  138,  139,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1, 1727,   -1,   -1,   -1,   -1, yyDummy>>,
			1, 1000, 2000)
		end

	yycheck_template_4 (an_array: ARRAY [INTEGER])
			-- Fill chunk #4 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   -1,    4,    5,    6,   -1,    8,   -1,   10,   11,   12,
			   13,   14,   15,   -1,   17,   18,   19,   -1,   21,   22,
			   -1,   -1,   25,   26,   -1,   -1,   29,   30,   31,   -1,
			   33,   34,   -1,   -1,   -1,   -1,   39,   -1,   41,   42,
			   43,   -1,   -1,   46,   47,   48,   -1,   -1,   -1,   52,
			   -1,   54,   -1,   -1,   -1,   58,   59,   60,   61,   -1,
			   -1,   64,   65,   -1,   -1,   -1,   69,   70,   71, 1273,
			   73,   74,   75,   76,   77,   78,   79,   80,   81,   82,
			   83,   84,   85,   86,   87,   88,   89,   90,   91,   92,
			   93,   94,   95,   96,   97,   98,   99,  100,  101,  102,

			  103,  104,  105,  106,  107,  108,  109,  110,  111,  112,
			  113,  114,  115,  116,  117,  118,  119,  120,  121,   -1,
			  123,  124,   -1,  126,  127,   -1,  129,  130,  131,   -1,
			  133,  134,  135,  136,  137,  138,  139,  140,  141,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   47, 1361, 1362,   -1,
			   -1, 1365, 1366, 1367, 1368, 1369,   -1,   -1,   -1,   -1,
			 1374,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   75,   -1,   -1,   -1,   -1,   80,
			   81,   82,   -1,   84,   -1,   -1,   -1, 1361, 1362,   -1,

			   -1, 1365, 1366, 1367,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1, 1361, 1362,   -1,   75, 1365, 1366, 1367,   -1,  110,
			  111,  112,  113,  114,  115,  116,  117,  118,   -1, 1433,
			   -1,   -1, 1436,   -1,   -1,   -1,   -1,   -1,   -1, 1443,
			   -1,   -1, 1446,  134,  135,  136,  137,  138,  139,  110,
			  111,  112,  113,  114,  115,  116,  117,  118,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1, 1433,
			   -1,   -1, 1436,  134,  135,  136,  137,  138,  139, 1443,
			   -1,   -1, 1446, 1433,   -1,   -1, 1436,   -1,   -1,   -1,
			   -1,   -1,   -1, 1443,   -1,   -1, 1446,    4,    5,    6,

			   -1,    8,   -1,   10,   11,   12,   13,   14,   15,   -1,
			   17,   18,   19,   -1,   21,   22,   -1,   -1,   25,   26,
			   -1,   -1,   29,   30,   31,   -1,   33,   34,   -1,   -1,
			   -1,   -1,   39,   -1,   41,   42,   43,   -1,   -1,   46,
			   47,   48,   -1,   -1,   -1,   52,   -1,   54,   -1,   -1,
			   -1,   58,   59,   60,   61,   -1,   -1,   64,   65,   -1,
			   -1,   -1,   69,   70,   71,   -1,   73,   74,   75,   76,
			   77,   78,   79,   80,   81,   82,   83,   84,   85,   86,
			   87,   88,   89,   90,   91,   92,   93,   94,   95,   96,
			   97,   98,   99,  100,  101,  102,  103,  104,  105,  106,

			  107,  108,  109,  110,  111,  112,  113,  114,  115,  116,
			  117,  118,  119,  120,  121,   -1,  123,  124,   -1,  126,
			  127,   -1,  129,  130,  131,   -1,  133,  134,  135,  136,
			  137,  138,  139,  140,  141,    4,    5,    6,   -1,    8,
			   -1,   10,   11,   12,   13,   14,   15,   -1,   17,   18,
			   19,   -1,   21,   22,   -1,   -1,   25,   26,   -1,   -1,
			   29,   30,   31,   -1,   33,   34,   -1,   -1,   -1,   -1,
			   39,   -1,   41,   42,   43,   -1,   -1,   46,   47,   48,
			   -1,   -1,   -1,   52,   -1,   54,   -1,   -1,   -1,   58,
			   59,   60,   61,   -1,   -1,   64,   65,   -1,   -1,   -1,

			   69,   70,   71,   -1,   73,   74,   75,   76,   77,   78,
			   79,   80,   81,   82,   83,   84,   85,   86,   87,   88,
			   89,   90,   91,   92,   93,   94,   95,   96,   97,   98,
			   99,  100,  101,  102,  103,  104,  105,  106,  107,  108,
			  109,  110,  111,  112,  113,  114,  115,  116,  117,  118,
			  119,  120,  121,   -1,  123,  124,   -1,  126,  127,   -1,
			  129,  130,  131,   -1,  133,  134,  135,  136,  137,  138,
			  139,  140,  141,    4,    5,    6,   -1,    8,   -1,   10,
			   11,   12,   13,   14,   15,   -1,   17,   18,   19,   -1,
			   21,   22,   -1,   -1,   25,   26,   -1,   -1,   29,   30,

			   31,   -1,   33,   34,   -1,   -1,   -1,   -1,   39,   -1,
			   41,   42,   43,   -1,   -1,   46,   47,   48,   -1,   -1,
			   -1,   52,   -1,   54,   -1,   -1,   -1,   58,   59,   60,
			   61,   -1,   -1,   64,   65,   -1,   -1,   -1,   69,   70,
			   71,   -1,   73,   74,   75,   76,   77,   78,   79,   80,
			   81,   82,   83,   84,   85,   86,   87,   88,   89,   90,
			   91,   92,   93,   94,   95,   96,   97,   98,   99,  100,
			  101,  102,  103,  104,  105,  106,  107,  108,  109,  110,
			  111,  112,  113,  114,  115,  116,  117,  118,  119,  120,
			  121,   -1,  123,  124,   -1,  126,  127,   -1,  129,  130,

			  131,   -1,  133,  134,  135,  136,  137,  138,  139,  140,
			  141,    6,   -1,    8,   -1,   10,   -1,   12,   13,   14,
			   15,   -1,   -1,   18,   19,   -1,   21,   -1,   -1,   -1,
			   25,   26,   -1,   -1,   -1,   30,   -1,   -1,   -1,   34,
			   -1,   -1,   -1,   -1,   39,   -1,   41,   42,   -1,   -1,
			   -1,   46,   47,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   58,   -1,   60,   61,   -1,   -1,   64,
			   -1,   66,   -1,   -1,   69,   70,   71,   -1,   73,   74,
			   -1,   76,   77,   78,   -1,   -1,   -1,   -1,   -1,   -1,
			   85,   86,   87,   88,   89,   90,   91,   92,   93,   94,

			   95,   96,   97,   98,   99,  100,  101,  102,  103,  104,
			  105,  106,   -1,  108,  109,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,  119,  120,  121,   -1,   -1,  124,
			   -1,  126,   -1,   -1,   -1,    6,  131,    8,  133,   10,
			   -1,   12,   13,   14,   15,  140,  141,   18,   19,   -1,
			   21,   -1,   -1,   -1,   25,   26,   -1,   -1,   -1,   30,
			   -1,   -1,   -1,   34,   -1,   -1,   -1,   -1,   39,   -1,
			   41,   42,   -1,   -1,   -1,   46,   47,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   58,   -1,   60,
			   61,   -1,   -1,   64,   -1,   66,   -1,   -1,   69,   70,

			   71,   -1,   73,   74,   -1,   76,   77,   78,   -1,   -1,
			   -1,   -1,   -1,   -1,   85,   86,   87,   88,   89,   90,
			   91,   92,   93,   94,   95,   96,   97,   98,   99,  100,
			  101,  102,  103,  104,  105,  106,   -1,  108,  109,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,  119,  120,
			  121,   -1,   -1,  124,   -1,  126,   -1,   -1,   -1,    6,
			  131,    8,  133,   10,   -1,   12,   13,   14,   15,  140,
			  141,   18,   19,   -1,   21,   -1,   -1,   -1,   25,   26,
			   -1,   -1,   -1,   30,   -1,   -1,   -1,   34,   -1,   -1,
			   -1,   -1,   39,   -1,   41,   42,   -1,   -1,   -1,   46, yyDummy>>,
			1, 1000, 3000)
		end

	yycheck_template_5 (an_array: ARRAY [INTEGER])
			-- Fill chunk #5 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   47,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   58,   -1,   60,   61,   -1,   -1,   64,   -1,   -1,
			   -1,   -1,   69,   70,   71,   -1,   73,   74,   -1,   76,
			   77,   78,   -1,   -1,   -1,   -1,   -1,   -1,   85,   86,
			   87,   88,   89,   90,   91,   92,   93,   94,   95,   96,
			   97,   98,   99,  100,  101,  102,  103,  104,  105,  106,
			   -1,  108,  109,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,  119,  120,  121,   -1,   -1,  124,   -1,  126,
			   -1,   -1,   -1,   -1,  131,  132,  133,   -1,   -1,   -1,
			   -1,   -1,   -1,  140,  141,    6,   -1,    8,   -1,   10,

			   -1,   12,   13,   14,   15,   -1,   -1,   18,   19,   -1,
			   21,   -1,   -1,   -1,   25,   26,   -1,   -1,   -1,   30,
			   -1,   -1,   -1,   34,   -1,   -1,   -1,   -1,   39,   -1,
			   41,   42,   -1,   -1,   -1,   46,   47,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   58,   -1,   60,
			   61,   -1,   -1,   64,   -1,   -1,   -1,   -1,   69,   70,
			   71,   -1,   73,   74,   -1,   76,   77,   78,   -1,   -1,
			   -1,   -1,   -1,   -1,   85,   86,   87,   88,   89,   90,
			   91,   92,   93,   94,   95,   96,   97,   98,   99,  100,
			  101,  102,  103,  104,  105,  106,   -1,  108,  109,   -1,

			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,  119,  120,
			  121,   -1,   -1,  124,   -1,  126,   -1,   -1,   -1,    6,
			  131,    8,  133,   10,   -1,   12,   13,   14,   15,  140,
			  141,   18,   19,   -1,   21,   -1,   -1,   -1,   25,   26,
			   -1,   -1,   -1,   30,   -1,   -1,   -1,   34,   -1,   -1,
			   -1,   -1,   39,   -1,   41,   42,   -1,   -1,   -1,   46,
			   47,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   58,   -1,   60,   61,   -1,   -1,   64,   -1,   -1,
			   -1,   -1,   69,   70,   71,   -1,   73,   74,   -1,   76,
			   77,   78,   -1,   -1,   -1,   -1,   -1,   -1,   85,   86,

			   87,   88,   89,   90,   91,   92,   93,   94,   95,   96,
			   97,   98,   99,  100,  101,  102,  103,  104,  105,  106,
			   -1,  108,  109,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,  119,  120,  121,   -1,   -1,  124,   -1,  126,
			   -1,   -1,   -1,    6,  131,    8,  133,   10,   -1,   12,
			   13,   14,   15,  140,   -1,   18,   19,   -1,   21,   -1,
			   -1,   -1,   25,   26,   -1,   -1,   -1,   30,   -1,   -1,
			   -1,   34,   -1,   -1,   -1,   -1,   39,   -1,   41,   42,
			   -1,   -1,   -1,   46,   47,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   58,   -1,   60,   61,   -1,

			   -1,   64,   -1,   -1,   -1,   -1,   69,   70,   71,   -1,
			   73,   74,   -1,   76,   77,   78,   -1,   -1,   -1,   -1,
			   -1,   -1,   85,   86,   87,   88,   89,   90,   91,   92,
			   93,   94,   95,   96,   97,   98,   99,  100,  101,  102,
			  103,  104,  105,  106,   -1,  108,  109,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,  119,  120,  121,   -1,
			   -1,  124,   -1,  126,   -1,   -1,   -1,    6,  131,    8,
			  133,   10,   -1,   12,   13,   14,   15,  140,   -1,   18,
			   19,   -1,   21,   -1,   -1,   -1,   25,   26,   -1,   -1,
			   -1,   30,   -1,   -1,   -1,   34,   -1,   -1,   -1,   -1,

			   39,   -1,   41,   42,   -1,   -1,   -1,   46,   47,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   58,
			   -1,   60,   61,   -1,   -1,   64,   -1,   -1,   -1,   -1,
			   69,   70,   71,   -1,   73,   74,   -1,   76,   77,   78,
			   -1,   -1,   -1,   -1,   -1,   -1,   85,   86,   87,   88,
			   89,   90,   91,   92,   93,   94,   95,   96,   97,   98,
			   99,  100,  101,  102,  103,  104,  105,  106,   -1,  108,
			  109,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			  119,  120,  121,   -1,   -1,  124,   -1,  126,   -1,   -1,
			   -1,    6,  131,    8,  133,   10,   -1,   12,   13,   14,

			   15,  140,   -1,   18,   19,   -1,   21,   -1,   -1,   -1,
			   25,   26,   -1,   -1,   -1,   30,   -1,   -1,   -1,   34,
			   -1,   -1,   -1,   -1,   39,   -1,   41,   42,   -1,   -1,
			   -1,   46,   47,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   58,   -1,   60,   61,   -1,   -1,   64,
			   -1,   -1,   -1,   -1,   69,   70,   71,   -1,   73,   74,
			   -1,   76,   77,   78,   -1,   -1,   -1,   -1,   -1,   -1,
			   85,   86,   87,   88,   89,   90,   91,   92,   93,   94,
			   95,   96,   97,   98,   99,  100,  101,  102,  103,  104,
			  105,  106,   -1,  108,  109,   -1,   -1,    8,   -1,   -1,

			   -1,   -1,   -1,   -1,  119,  120,  121,   18,   -1,  124,
			   -1,  126,   -1,   -1,   -1,   -1,  131,   -1,  133,   -1,
			   -1,   -1,   -1,   34,   -1,  140,   -1,   -1,   -1,   -1,
			   41,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   52,   -1,   -1,   -1,   -1,   -1,   58,   -1,   60,
			   61,   -1,   -1,   64,   -1,   -1,   -1,   -1,   69,   70,
			   71,   -1,   73,   74,   75,   76,   77,   78,   79,   -1,
			   -1,   -1,   83,   -1,   85,   86,   87,   88,   89,   90,
			   91,   92,   93,   94,   95,   96,   97,   98,   99,  100,
			  101,  102,  103,  104,  105,  106,  107,  108,   -1,   -1,

			   -1,    8,   -1,   -1,   -1,   -1,   -1,   -1,  119,  120,
			  121,   18,  123,  124,   -1,  126,  127,   -1,   -1,   -1,
			  131,   -1,   -1,  134,  135,   -1,   -1,   34,   -1,   -1,
			  141,  142,   -1,   -1,   41,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   52,   -1,   -1,   -1,   -1,
			   -1,   58,   -1,   60,   61,   -1,   -1,   64,   -1,   -1,
			   -1,   -1,   69,   70,   71,   -1,   73,   74,   75,   76,
			   77,   78,   79,   -1,   -1,   -1,   83,   -1,   85,   86,
			   87,   88,   89,   90,   91,   92,   93,   94,   95,   96,
			   97,   98,   99,  100,  101,  102,  103,  104,  105,  106,

			  107,  108,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,  119,  120,  121,   -1,  123,  124,    6,  126,
			    8,   -1,   10,   -1,  131,   -1,   -1,  134,  135,   -1,
			   18,   19,   -1,   21,  141,  142,   -1,   25,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   34,   -1,   -1,   -1,
			   -1,   -1,   -1,   41,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   58,   -1,   60,   61,   -1,   -1,   64,   -1,   -1,   -1,
			   -1,   69,   70,   71,   -1,   73,   74,   -1,   76,   77,
			   78,   -1,   -1,   -1,   -1,   -1,   -1,   85,   86,   87, yyDummy>>,
			1, 1000, 4000)
		end

	yycheck_template_6 (an_array: ARRAY [INTEGER])
			-- Fill chunk #6 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   88,   89,   90,   91,   92,   93,   94,   95,   96,   97,
			   98,   99,  100,  101,  102,  103,  104,  105,  106,   -1,
			  108,  109,   -1,   -1,    8,   -1,   -1,   -1,   -1,   -1,
			   14,  119,  120,  121,   18,   -1,  124,   -1,  126,   -1,
			   -1,   -1,   -1,  131,   -1,  133,   -1,   -1,   -1,   -1,
			   34,   -1,  140,   -1,   -1,   -1,   -1,   41,   -1,   43,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   52,   -1,
			   -1,   -1,   -1,   -1,   58,   -1,   60,   61,   -1,   -1,
			   64,   -1,   -1,   -1,   -1,   69,   70,   71,   -1,   73,
			   74,   75,   76,   77,   78,   79,   -1,   -1,   -1,   83,

			   -1,   85,   86,   87,   88,   89,   90,   91,   92,   93,
			   94,   95,   96,   97,   98,   99,  100,  101,  102,  103,
			  104,  105,  106,  107,  108,   -1,   -1,   -1,    8,   -1,
			   -1,   -1,   -1,   -1,   14,  119,  120,  121,   18,  123,
			  124,   -1,  126,   -1,   -1,   -1,   -1,  131,   -1,   -1,
			  134,  135,   -1,   -1,   34,   -1,   -1,  141,   -1,   -1,
			   -1,   41,   -1,   43,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   52,   -1,   -1,   -1,   -1,   -1,   58,   -1,
			   60,   61,   -1,   -1,   64,   -1,   -1,   -1,   -1,   69,
			   70,   71,   -1,   73,   74,   75,   76,   77,   78,   79,

			   -1,   -1,   -1,   83,   -1,   85,   86,   87,   88,   89,
			   90,   91,   92,   93,   94,   95,   96,   97,   98,   99,
			  100,  101,  102,  103,  104,  105,  106,  107,  108,   -1,
			   -1,   -1,    8,   -1,   -1,   -1,   -1,   -1,   -1,  119,
			  120,  121,   18,  123,  124,   -1,  126,   -1,   -1,   -1,
			   -1,  131,   -1,   -1,  134,  135,   -1,   -1,   34,   -1,
			   -1,  141,   -1,   -1,   -1,   41,   -1,   43,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   52,   -1,   -1,   -1,
			   -1,   -1,   58,   -1,   60,   61,   -1,   -1,   64,   -1,
			   -1,   -1,   -1,   69,   70,   71,   -1,   73,   74,   75,

			   76,   77,   78,   79,   -1,   -1,   -1,   83,   -1,   85,
			   86,   87,   88,   89,   90,   91,   92,   93,   94,   95,
			   96,   97,   98,   99,  100,  101,  102,  103,  104,  105,
			  106,  107,  108,   -1,   -1,   -1,    8,   -1,   -1,   -1,
			   -1,   -1,   -1,  119,  120,  121,   18,  123,  124,   -1,
			  126,   -1,   -1,   -1,   -1,  131,   -1,   -1,  134,  135,
			   -1,   -1,   34,   -1,   -1,  141,   -1,   -1,   -1,   41,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   52,   -1,   -1,   -1,   -1,   -1,   58,   -1,   60,   61,
			   -1,   -1,   64,   -1,   -1,   -1,   -1,   69,   70,   71,

			   -1,   73,   74,   75,   76,   77,   78,   79,   -1,   -1,
			   -1,   83,   -1,   85,   86,   87,   88,   89,   90,   91,
			   92,   93,   94,   95,   96,   97,   98,   99,  100,  101,
			  102,  103,  104,  105,  106,  107,  108,   -1,   -1,   -1,
			    8,   -1,   -1,   -1,   -1,   -1,   -1,  119,  120,  121,
			   18,  123,  124,   -1,  126,   -1,   -1,   -1,  130,  131,
			   -1,   -1,  134,  135,   -1,   -1,   34,   -1,   -1,  141,
			   -1,   -1,   -1,   41,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   52,   -1,   -1,   -1,   -1,   -1,
			   58,   -1,   60,   61,   -1,   -1,   64,   -1,   -1,   -1,

			   -1,   69,   70,   71,   -1,   73,   74,   75,   76,   77,
			   78,   79,   -1,   -1,   -1,   83,   -1,   85,   86,   87,
			   88,   89,   90,   91,   92,   93,   94,   95,   96,   97,
			   98,   99,  100,  101,  102,  103,  104,  105,  106,  107,
			  108,   -1,   -1,   -1,    8,   -1,   -1,   -1,   -1,   -1,
			   -1,  119,  120,  121,   18,  123,  124,   -1,  126,   -1,
			   -1,   -1,   -1,  131,  132,   -1,  134,  135,   -1,   -1,
			   34,   -1,   -1,  141,   -1,   -1,   -1,   41,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   52,   -1,
			   -1,   -1,   -1,   -1,   58,   -1,   60,   61,   -1,   -1,

			   64,   -1,   -1,   -1,   -1,   69,   70,   71,   -1,   73,
			   74,   75,   76,   77,   78,   79,   -1,   -1,   -1,   83,
			   -1,   85,   86,   87,   88,   89,   90,   91,   92,   93,
			   94,   95,   96,   97,   98,   99,  100,  101,  102,  103,
			  104,  105,  106,  107,  108,   -1,   -1,   -1,    8,   -1,
			   -1,   -1,   12,   -1,   -1,  119,  120,  121,   18,  123,
			  124,   -1,  126,  127,   -1,   -1,   -1,  131,   -1,   -1,
			  134,  135,   -1,   -1,   34,   -1,   -1,  141,   -1,   -1,
			   -1,   41,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   52,   -1,   -1,   -1,   -1,   -1,   58,   -1,

			   60,   61,   -1,   -1,   64,   -1,   -1,   -1,   -1,   69,
			   70,   71,   -1,   73,   74,   75,   76,   77,   78,   79,
			   -1,   -1,   -1,   83,   -1,   85,   86,   87,   88,   89,
			   90,   91,   92,   93,   94,   95,   96,   97,   98,   99,
			  100,  101,  102,  103,  104,  105,  106,  107,  108,   -1,
			   -1,   -1,    8,   -1,   -1,   -1,   -1,   -1,   -1,  119,
			  120,  121,   18,  123,  124,   -1,  126,   -1,   -1,   -1,
			   -1,  131,   -1,   -1,  134,  135,   -1,   -1,   34,   -1,
			   -1,  141,   -1,   -1,   -1,   41,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   52,   -1,   -1,   -1,

			   -1,   -1,   58,   -1,   60,   61,   -1,   -1,   64,   65,
			   -1,   -1,   -1,   69,   70,   71,   -1,   73,   74,   75,
			   76,   77,   78,   79,   -1,   -1,   -1,   83,   -1,   85,
			   86,   87,   88,   89,   90,   91,   92,   93,   94,   95,
			   96,   97,   98,   99,  100,  101,  102,  103,  104,  105,
			  106,  107,  108,   -1,   -1,   -1,    8,   -1,   -1,   -1,
			   -1,   -1,   -1,  119,  120,  121,   18,  123,  124,   -1,
			  126,   -1,   -1,   -1,   -1,  131,   -1,   -1,  134,  135,
			   -1,   -1,   34,   -1,   -1,  141,   -1,   -1,   -1,   41,
			   -1,   43,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,

			   52,   -1,   -1,   -1,   -1,   -1,   58,   -1,   60,   61,
			   -1,   -1,   64,   -1,   -1,   -1,   -1,   69,   70,   71,
			   -1,   73,   74,   75,   76,   77,   78,   79,   -1,   -1,
			   -1,   83,   -1,   85,   86,   87,   88,   89,   90,   91,
			   92,   93,   94,   95,   96,   97,   98,   99,  100,  101,
			  102,  103,  104,  105,  106,  107,  108,   -1,   -1,   -1,
			    8,   -1,   -1,   -1,   12,   -1,   -1,  119,  120,  121,
			   18,  123,  124,   -1,  126,   -1,   -1,   -1,   -1,  131,
			   -1,   -1,  134,  135,   -1,   -1,   34,   -1,   -1,  141,
			   -1,   -1,   -1,   41,   -1,   -1,   -1,   -1,   -1,   -1, yyDummy>>,
			1, 1000, 5000)
		end

	yycheck_template_7 (an_array: ARRAY [INTEGER])
			-- Fill chunk #7 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   -1,   -1,   -1,   -1,   52,   -1,   -1,   -1,   -1,   -1,
			   58,   -1,   60,   61,   -1,   -1,   64,   -1,   -1,   -1,
			   -1,   69,   70,   71,   -1,   73,   74,   75,   76,   77,
			   78,   79,   -1,   -1,   -1,   83,   -1,   85,   86,   87,
			   88,   89,   90,   91,   92,   93,   94,   95,   96,   97,
			   98,   99,  100,  101,  102,  103,  104,  105,  106,  107,
			  108,   -1,   -1,   -1,    8,   -1,   -1,   -1,   -1,   -1,
			   -1,  119,  120,  121,   18,  123,  124,   -1,  126,   -1,
			   -1,   -1,   -1,  131,   -1,   -1,  134,  135,   -1,   -1,
			   34,   -1,   -1,  141,   -1,   -1,   -1,   41,   -1,   -1,

			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   52,   -1,
			   -1,   -1,   -1,   -1,   58,   -1,   60,   61,   -1,   -1,
			   64,   -1,   -1,   -1,   -1,   69,   70,   71,   -1,   73,
			   74,   75,   76,   77,   78,   79,   -1,   -1,   -1,   83,
			   -1,   85,   86,   87,   88,   89,   90,   91,   92,   93,
			   94,   95,   96,   97,   98,   99,  100,  101,  102,  103,
			  104,  105,  106,  107,  108,   -1,   -1,   -1,    8,   -1,
			   -1,   -1,   -1,   -1,   -1,  119,  120,  121,   18,  123,
			  124,   -1,  126,   -1,   -1,   -1,  130,  131,   -1,   -1,
			  134,  135,   -1,   -1,   34,   -1,   -1,  141,   -1,   -1,

			   -1,   41,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   52,   -1,   -1,   -1,   -1,   -1,   58,   -1,
			   60,   61,   -1,   -1,   64,   -1,   -1,   -1,   -1,   69,
			   70,   71,   -1,   73,   74,   75,   76,   77,   78,   79,
			   -1,   -1,   -1,   83,   -1,   85,   86,   87,   88,   89,
			   90,   91,   92,   93,   94,   95,   96,   97,   98,   99,
			  100,  101,  102,  103,  104,  105,  106,  107,  108,   -1,
			   -1,   -1,    8,   -1,   -1,   -1,   -1,   -1,   -1,  119,
			  120,  121,   18,  123,  124,   -1,  126,   -1,   -1,   -1,
			   -1,  131,   -1,   -1,  134,  135,   -1,   -1,   34,   -1,

			   -1,  141,   -1,   -1,   -1,   41,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   52,   -1,   -1,   -1,
			   -1,   -1,   58,   -1,   60,   61,   -1,   -1,   64,   -1,
			   -1,   -1,   -1,   69,   70,   71,   -1,   73,   74,   75,
			   76,   77,   78,   79,   -1,    8,   -1,   83,   -1,   85,
			   86,   87,   88,   89,   90,   91,   92,   93,   94,   95,
			   96,   97,   98,   99,  100,  101,  102,  103,  104,  105,
			  106,  107,  108,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,  119,  120,  121,   -1,  123,  124,   -1,
			  126,   -1,   -1,   -1,   -1,  131,   -1,   -1,  134,  135,

			   -1,   -1,   -1,   -1,   -1,  141,   69,   70,   71,   -1,
			   73,   -1,   -1,   76,   77,   78,   79,   -1,   -1,   -1,
			   -1,   -1,   85,   86,   87,   88,   89,   90,   91,   92,
			   93,   94,   95,   96,   97,   98,   99,  100,  101,  102,
			  103,  104,  105,  106,  107,   -1,   -1,   -1,   -1,   45,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,  120,  121,   -1,
			   -1,  124,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,  134,  135,   69,   70,   71,   -1,   73,   -1,   -1,
			   -1,   -1,   -1,   79,   -1,   -1,   -1,   -1,   -1,   85,
			   86,   87,   88,   89,   90,   91,   92,   93,   94,   95,

			   96,   97,   98,   99,  100,  101,  102,  103,  104,  105,
			  106,  107,   75,   -1,   -1,   -1,   65,   80,   81,   82,
			   -1,   84,   -1,   -1,  120,  121,   75,   -1,  124,   -1,
			   -1,   80,   81,   82,   -1,   84,   -1,   -1,  134,  135,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,  110,  111,  112,
			  113,  114,  115,  116,  117,  118,   -1,   -1,   -1,   -1,
			   -1,  110,  111,  112,  113,  114,  115,  116,  117,  118,
			   -1,  134,  135,  136,  137,  138,  139,  140,   -1,   -1,
			  129,   -1,   -1,   -1,   -1,  134,  135,  136,  137,  138,
			  139,   73,   -1,   -1,   -1,   -1,   -1,   79,   -1,   -1,

			   -1,   -1,   -1,   85,   86,   87,   88,   89,   90,   91,
			   92,   93,   94,   95,   96,   97,   98,   99,  100,  101,
			  102,  103,  104,  105,  106,  107,   75,   -1,   -1,   -1,
			   -1,   80,   81,   82,   -1,   84,   -1,   -1,  120,  121,
			   75,   -1,   -1,   -1,   -1,   80,   81,   82,   -1,   84,
			  132,   -1,  134,  135,   -1,   -1,   -1,   -1,   -1,   -1,
			  142,  110,  111,  112,  113,  114,  115,  116,  117,  118,
			   -1,   -1,   -1,   -1,   -1,  110,  111,  112,  113,  114,
			  115,  116,  117,  118,   -1,  134,  135,  136,  137,  138,
			  139,  140,   -1,   -1,  129,  130,   -1,   -1,   -1,  134,

			  135,  136,  137,  138,  139,   75,   -1,   -1,   -1,   -1,
			   80,   81,   82,   -1,   84,   -1,   85,   86,   87,   88,
			   89,   90,   91,   92,   93,   94,   95,   96,   97,   98,
			   99,  100,  101,  102,  103,  104,  105,  106,   -1,   -1,
			  110,  111,  112,  113,  114,  115,  116,  117,  118,   75,
			   -1,   -1,  121,   -1,   80,   81,   82,  127,   84,  129,
			   -1,   -1,   -1,   -1,  134,  135,  136,  137,  138,  139,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,  110,  111,  112,  113,  114,  115,
			  116,  117,  118,   75,   -1,   -1,   -1,   -1,   80,   81,

			   82,   -1,   84,  129,  130,   -1,   -1,   -1,  134,  135,
			  136,  137,  138,  139,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,  110,  111,
			  112,  113,  114,  115,  116,  117,  118,   75,   -1,   -1,
			   -1,   -1,   80,   81,   82,  127,   84,   -1,   -1,   -1,
			   -1,   -1,  134,  135,  136,  137,  138,  139,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,  110,  111,  112,  113,  114,  115,  116,  117,
			  118,   75,   -1,   -1,   -1,   -1,   80,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,  134,  135,  136,  137,

			  138,  139,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,  110,  111,  112,  113,
			  114,  115,  116,  117,  118,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			  134,  135,  136,  137,  138,  139,   73,   -1,   -1,   -1,
			   -1,   -1,   79,   -1,   -1,   -1,   -1,   -1,   85,   86,
			   87,   88,   89,   90,   91,   92,   93,   94,   95,   96,
			   97,   98,   99,  100,  101,  102,  103,  104,  105,  106,
			  107,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,  120,  121,   -1,   -1,   73,   -1,   -1, yyDummy>>,
			1, 1000, 6000)
		end

	yycheck_template_8 (an_array: ARRAY [INTEGER])
			-- Fill chunk #8 of template for `yycheck'.
		do
			yyarray_subcopy (an_array, <<
			   -1,   -1,   -1,   79,   -1,  132,   -1,  134,  135,   85,
			   86,   87,   88,   89,   90,   91,   92,   93,   94,   95,
			   96,   97,   98,   99,  100,  101,  102,  103,  104,  105,
			  106,  107,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,  120,  121,   -1,   -1,   73,   -1,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,  134,  135,
			   85,   86,   87,   88,   89,   90,   91,   92,   93,   94,
			   95,   96,   97,   98,   99,  100,  101,  102,  103,  104,
			  105,  106,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,   -1,  120,  121,   -1,   -1,   -1,

			   -1,   -1,   -1,   -1,   -1,   -1,   -1,  132,   85,   86,
			   87,   88,   89,   90,   91,   92,   93,   94,   95,   96,
			   97,   98,   99,  100,  101,  102,  103,  104,  105,  106,
			   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,   -1,
			   -1,   -1,   -1,   -1,  121,   -1,   -1,  124,   85,   86,
			   87,   88,   89,   90,   91,   92,   93,   94,   95,   96,
			   97,   98,   99,  100,  101,  102,  103,  104,  105,  106,
			   85,   86,   87,   88,   89,   90,   91,   92,   93,   94,
			   95,   96,   97,   98,   99,  100,   -1,   -1,  103,  104,
			  105,  106,   85,   86,   87,   88,   89,   90,   91,   92,

			   93,   94,   95,   96,   97,   98,   99,  100,   -1,   -1,
			  103,  104,  105,  106, yyDummy>>,
			1, 214, 7000)
		end

feature {NONE} -- Semantic value stacks

	yyvs1: SPECIAL [detachable ANY]
			-- Stack for semantic values of type detachable ANY

	yyvsc1: INTEGER
			-- Capacity of semantic value stack `yyvs1'

	yyvsp1: INTEGER
			-- Top of semantic value stack `yyvs1'

	yyspecial_routines1: KL_SPECIAL_ROUTINES [detachable ANY]
			-- Routines that ought to be in SPECIAL [detachable ANY]

	yyvs2: SPECIAL [ET_KEYWORD]
			-- Stack for semantic values of type ET_KEYWORD

	yyvsc2: INTEGER
			-- Capacity of semantic value stack `yyvs2'

	yyvsp2: INTEGER
			-- Top of semantic value stack `yyvs2'

	yyspecial_routines2: KL_SPECIAL_ROUTINES [ET_KEYWORD]
			-- Routines that ought to be in SPECIAL [ET_KEYWORD]

	yyvs3: SPECIAL [ET_AGENT_KEYWORD]
			-- Stack for semantic values of type ET_AGENT_KEYWORD

	yyvsc3: INTEGER
			-- Capacity of semantic value stack `yyvs3'

	yyvsp3: INTEGER
			-- Top of semantic value stack `yyvs3'

	yyspecial_routines3: KL_SPECIAL_ROUTINES [ET_AGENT_KEYWORD]
			-- Routines that ought to be in SPECIAL [ET_AGENT_KEYWORD]

	yyvs4: SPECIAL [ET_PRECURSOR_KEYWORD]
			-- Stack for semantic values of type ET_PRECURSOR_KEYWORD

	yyvsc4: INTEGER
			-- Capacity of semantic value stack `yyvs4'

	yyvsp4: INTEGER
			-- Top of semantic value stack `yyvs4'

	yyspecial_routines4: KL_SPECIAL_ROUTINES [ET_PRECURSOR_KEYWORD]
			-- Routines that ought to be in SPECIAL [ET_PRECURSOR_KEYWORD]

	yyvs5: SPECIAL [ET_SYMBOL]
			-- Stack for semantic values of type ET_SYMBOL

	yyvsc5: INTEGER
			-- Capacity of semantic value stack `yyvs5'

	yyvsp5: INTEGER
			-- Top of semantic value stack `yyvs5'

	yyspecial_routines5: KL_SPECIAL_ROUTINES [ET_SYMBOL]
			-- Routines that ought to be in SPECIAL [ET_SYMBOL]

	yyvs6: SPECIAL [ET_POSITION]
			-- Stack for semantic values of type ET_POSITION

	yyvsc6: INTEGER
			-- Capacity of semantic value stack `yyvs6'

	yyvsp6: INTEGER
			-- Top of semantic value stack `yyvs6'

	yyspecial_routines6: KL_SPECIAL_ROUTINES [ET_POSITION]
			-- Routines that ought to be in SPECIAL [ET_POSITION]

	yyvs7: SPECIAL [ET_BIT_CONSTANT]
			-- Stack for semantic values of type ET_BIT_CONSTANT

	yyvsc7: INTEGER
			-- Capacity of semantic value stack `yyvs7'

	yyvsp7: INTEGER
			-- Top of semantic value stack `yyvs7'

	yyspecial_routines7: KL_SPECIAL_ROUTINES [ET_BIT_CONSTANT]
			-- Routines that ought to be in SPECIAL [ET_BIT_CONSTANT]

	yyvs8: SPECIAL [ET_BOOLEAN_CONSTANT]
			-- Stack for semantic values of type ET_BOOLEAN_CONSTANT

	yyvsc8: INTEGER
			-- Capacity of semantic value stack `yyvs8'

	yyvsp8: INTEGER
			-- Top of semantic value stack `yyvs8'

	yyspecial_routines8: KL_SPECIAL_ROUTINES [ET_BOOLEAN_CONSTANT]
			-- Routines that ought to be in SPECIAL [ET_BOOLEAN_CONSTANT]

	yyvs9: SPECIAL [ET_BREAK]
			-- Stack for semantic values of type ET_BREAK

	yyvsc9: INTEGER
			-- Capacity of semantic value stack `yyvs9'

	yyvsp9: INTEGER
			-- Top of semantic value stack `yyvs9'

	yyspecial_routines9: KL_SPECIAL_ROUTINES [ET_BREAK]
			-- Routines that ought to be in SPECIAL [ET_BREAK]

	yyvs10: SPECIAL [ET_CHARACTER_CONSTANT]
			-- Stack for semantic values of type ET_CHARACTER_CONSTANT

	yyvsc10: INTEGER
			-- Capacity of semantic value stack `yyvs10'

	yyvsp10: INTEGER
			-- Top of semantic value stack `yyvs10'

	yyspecial_routines10: KL_SPECIAL_ROUTINES [ET_CHARACTER_CONSTANT]
			-- Routines that ought to be in SPECIAL [ET_CHARACTER_CONSTANT]

	yyvs11: SPECIAL [ET_CURRENT]
			-- Stack for semantic values of type ET_CURRENT

	yyvsc11: INTEGER
			-- Capacity of semantic value stack `yyvs11'

	yyvsp11: INTEGER
			-- Top of semantic value stack `yyvs11'

	yyspecial_routines11: KL_SPECIAL_ROUTINES [ET_CURRENT]
			-- Routines that ought to be in SPECIAL [ET_CURRENT]

	yyvs12: SPECIAL [ET_FREE_OPERATOR]
			-- Stack for semantic values of type ET_FREE_OPERATOR

	yyvsc12: INTEGER
			-- Capacity of semantic value stack `yyvs12'

	yyvsp12: INTEGER
			-- Top of semantic value stack `yyvs12'

	yyspecial_routines12: KL_SPECIAL_ROUTINES [ET_FREE_OPERATOR]
			-- Routines that ought to be in SPECIAL [ET_FREE_OPERATOR]

	yyvs13: SPECIAL [ET_IDENTIFIER]
			-- Stack for semantic values of type ET_IDENTIFIER

	yyvsc13: INTEGER
			-- Capacity of semantic value stack `yyvs13'

	yyvsp13: INTEGER
			-- Top of semantic value stack `yyvs13'

	yyspecial_routines13: KL_SPECIAL_ROUTINES [ET_IDENTIFIER]
			-- Routines that ought to be in SPECIAL [ET_IDENTIFIER]

	yyvs14: SPECIAL [ET_INTEGER_CONSTANT]
			-- Stack for semantic values of type ET_INTEGER_CONSTANT

	yyvsc14: INTEGER
			-- Capacity of semantic value stack `yyvs14'

	yyvsp14: INTEGER
			-- Top of semantic value stack `yyvs14'

	yyspecial_routines14: KL_SPECIAL_ROUTINES [ET_INTEGER_CONSTANT]
			-- Routines that ought to be in SPECIAL [ET_INTEGER_CONSTANT]

	yyvs15: SPECIAL [ET_KEYWORD_OPERATOR]
			-- Stack for semantic values of type ET_KEYWORD_OPERATOR

	yyvsc15: INTEGER
			-- Capacity of semantic value stack `yyvs15'

	yyvsp15: INTEGER
			-- Top of semantic value stack `yyvs15'

	yyspecial_routines15: KL_SPECIAL_ROUTINES [ET_KEYWORD_OPERATOR]
			-- Routines that ought to be in SPECIAL [ET_KEYWORD_OPERATOR]

	yyvs16: SPECIAL [ET_MANIFEST_STRING]
			-- Stack for semantic values of type ET_MANIFEST_STRING

	yyvsc16: INTEGER
			-- Capacity of semantic value stack `yyvs16'

	yyvsp16: INTEGER
			-- Top of semantic value stack `yyvs16'

	yyspecial_routines16: KL_SPECIAL_ROUTINES [ET_MANIFEST_STRING]
			-- Routines that ought to be in SPECIAL [ET_MANIFEST_STRING]

	yyvs17: SPECIAL [ET_REAL_CONSTANT]
			-- Stack for semantic values of type ET_REAL_CONSTANT

	yyvsc17: INTEGER
			-- Capacity of semantic value stack `yyvs17'

	yyvsp17: INTEGER
			-- Top of semantic value stack `yyvs17'

	yyspecial_routines17: KL_SPECIAL_ROUTINES [ET_REAL_CONSTANT]
			-- Routines that ought to be in SPECIAL [ET_REAL_CONSTANT]

	yyvs18: SPECIAL [ET_RESULT]
			-- Stack for semantic values of type ET_RESULT

	yyvsc18: INTEGER
			-- Capacity of semantic value stack `yyvs18'

	yyvsp18: INTEGER
			-- Top of semantic value stack `yyvs18'

	yyspecial_routines18: KL_SPECIAL_ROUTINES [ET_RESULT]
			-- Routines that ought to be in SPECIAL [ET_RESULT]

	yyvs19: SPECIAL [ET_RETRY_INSTRUCTION]
			-- Stack for semantic values of type ET_RETRY_INSTRUCTION

	yyvsc19: INTEGER
			-- Capacity of semantic value stack `yyvs19'

	yyvsp19: INTEGER
			-- Top of semantic value stack `yyvs19'

	yyspecial_routines19: KL_SPECIAL_ROUTINES [ET_RETRY_INSTRUCTION]
			-- Routines that ought to be in SPECIAL [ET_RETRY_INSTRUCTION]

	yyvs20: SPECIAL [ET_SYMBOL_OPERATOR]
			-- Stack for semantic values of type ET_SYMBOL_OPERATOR

	yyvsc20: INTEGER
			-- Capacity of semantic value stack `yyvs20'

	yyvsp20: INTEGER
			-- Top of semantic value stack `yyvs20'

	yyspecial_routines20: KL_SPECIAL_ROUTINES [ET_SYMBOL_OPERATOR]
			-- Routines that ought to be in SPECIAL [ET_SYMBOL_OPERATOR]

	yyvs21: SPECIAL [ET_VOID]
			-- Stack for semantic values of type ET_VOID

	yyvsc21: INTEGER
			-- Capacity of semantic value stack `yyvs21'

	yyvsp21: INTEGER
			-- Top of semantic value stack `yyvs21'

	yyspecial_routines21: KL_SPECIAL_ROUTINES [ET_VOID]
			-- Routines that ought to be in SPECIAL [ET_VOID]

	yyvs22: SPECIAL [ET_SEMICOLON_SYMBOL]
			-- Stack for semantic values of type ET_SEMICOLON_SYMBOL

	yyvsc22: INTEGER
			-- Capacity of semantic value stack `yyvs22'

	yyvsp22: INTEGER
			-- Top of semantic value stack `yyvs22'

	yyspecial_routines22: KL_SPECIAL_ROUTINES [ET_SEMICOLON_SYMBOL]
			-- Routines that ought to be in SPECIAL [ET_SEMICOLON_SYMBOL]

	yyvs23: SPECIAL [ET_BRACKET_SYMBOL]
			-- Stack for semantic values of type ET_BRACKET_SYMBOL

	yyvsc23: INTEGER
			-- Capacity of semantic value stack `yyvs23'

	yyvsp23: INTEGER
			-- Top of semantic value stack `yyvs23'

	yyspecial_routines23: KL_SPECIAL_ROUTINES [ET_BRACKET_SYMBOL]
			-- Routines that ought to be in SPECIAL [ET_BRACKET_SYMBOL]

	yyvs24: SPECIAL [ET_QUESTION_MARK_SYMBOL]
			-- Stack for semantic values of type ET_QUESTION_MARK_SYMBOL

	yyvsc24: INTEGER
			-- Capacity of semantic value stack `yyvs24'

	yyvsp24: INTEGER
			-- Top of semantic value stack `yyvs24'

	yyspecial_routines24: KL_SPECIAL_ROUTINES [ET_QUESTION_MARK_SYMBOL]
			-- Routines that ought to be in SPECIAL [ET_QUESTION_MARK_SYMBOL]

	yyvs25: SPECIAL [ET_ACROSS_EXPRESSION]
			-- Stack for semantic values of type ET_ACROSS_EXPRESSION

	yyvsc25: INTEGER
			-- Capacity of semantic value stack `yyvs25'

	yyvsp25: INTEGER
			-- Top of semantic value stack `yyvs25'

	yyspecial_routines25: KL_SPECIAL_ROUTINES [ET_ACROSS_EXPRESSION]
			-- Routines that ought to be in SPECIAL [ET_ACROSS_EXPRESSION]

	yyvs26: SPECIAL [ET_ACROSS_INSTRUCTION]
			-- Stack for semantic values of type ET_ACROSS_INSTRUCTION

	yyvsc26: INTEGER
			-- Capacity of semantic value stack `yyvs26'

	yyvsp26: INTEGER
			-- Top of semantic value stack `yyvs26'

	yyspecial_routines26: KL_SPECIAL_ROUTINES [ET_ACROSS_INSTRUCTION]
			-- Routines that ought to be in SPECIAL [ET_ACROSS_INSTRUCTION]

	yyvs27: SPECIAL [ET_ACTUAL_ARGUMENT_LIST]
			-- Stack for semantic values of type ET_ACTUAL_ARGUMENT_LIST

	yyvsc27: INTEGER
			-- Capacity of semantic value stack `yyvs27'

	yyvsp27: INTEGER
			-- Top of semantic value stack `yyvs27'

	yyspecial_routines27: KL_SPECIAL_ROUTINES [ET_ACTUAL_ARGUMENT_LIST]
			-- Routines that ought to be in SPECIAL [ET_ACTUAL_ARGUMENT_LIST]

	yyvs28: SPECIAL [ET_ACTUAL_PARAMETER_ITEM]
			-- Stack for semantic values of type ET_ACTUAL_PARAMETER_ITEM

	yyvsc28: INTEGER
			-- Capacity of semantic value stack `yyvs28'

	yyvsp28: INTEGER
			-- Top of semantic value stack `yyvs28'

	yyspecial_routines28: KL_SPECIAL_ROUTINES [ET_ACTUAL_PARAMETER_ITEM]
			-- Routines that ought to be in SPECIAL [ET_ACTUAL_PARAMETER_ITEM]

	yyvs29: SPECIAL [ET_ACTUAL_PARAMETER_LIST]
			-- Stack for semantic values of type ET_ACTUAL_PARAMETER_LIST

	yyvsc29: INTEGER
			-- Capacity of semantic value stack `yyvs29'

	yyvsp29: INTEGER
			-- Top of semantic value stack `yyvs29'

	yyspecial_routines29: KL_SPECIAL_ROUTINES [ET_ACTUAL_PARAMETER_LIST]
			-- Routines that ought to be in SPECIAL [ET_ACTUAL_PARAMETER_LIST]

	yyvs30: SPECIAL [ET_AGENT_ARGUMENT_OPERAND]
			-- Stack for semantic values of type ET_AGENT_ARGUMENT_OPERAND

	yyvsc30: INTEGER
			-- Capacity of semantic value stack `yyvs30'

	yyvsp30: INTEGER
			-- Top of semantic value stack `yyvs30'

	yyspecial_routines30: KL_SPECIAL_ROUTINES [ET_AGENT_ARGUMENT_OPERAND]
			-- Routines that ought to be in SPECIAL [ET_AGENT_ARGUMENT_OPERAND]

	yyvs31: SPECIAL [ET_AGENT_ARGUMENT_OPERAND_ITEM]
			-- Stack for semantic values of type ET_AGENT_ARGUMENT_OPERAND_ITEM

	yyvsc31: INTEGER
			-- Capacity of semantic value stack `yyvs31'

	yyvsp31: INTEGER
			-- Top of semantic value stack `yyvs31'

	yyspecial_routines31: KL_SPECIAL_ROUTINES [ET_AGENT_ARGUMENT_OPERAND_ITEM]
			-- Routines that ought to be in SPECIAL [ET_AGENT_ARGUMENT_OPERAND_ITEM]

	yyvs32: SPECIAL [ET_AGENT_ARGUMENT_OPERAND_LIST]
			-- Stack for semantic values of type ET_AGENT_ARGUMENT_OPERAND_LIST

	yyvsc32: INTEGER
			-- Capacity of semantic value stack `yyvs32'

	yyvsp32: INTEGER
			-- Top of semantic value stack `yyvs32'

	yyspecial_routines32: KL_SPECIAL_ROUTINES [ET_AGENT_ARGUMENT_OPERAND_LIST]
			-- Routines that ought to be in SPECIAL [ET_AGENT_ARGUMENT_OPERAND_LIST]

	yyvs33: SPECIAL [ET_AGENT_TARGET]
			-- Stack for semantic values of type ET_AGENT_TARGET

	yyvsc33: INTEGER
			-- Capacity of semantic value stack `yyvs33'

	yyvsp33: INTEGER
			-- Top of semantic value stack `yyvs33'

	yyspecial_routines33: KL_SPECIAL_ROUTINES [ET_AGENT_TARGET]
			-- Routines that ought to be in SPECIAL [ET_AGENT_TARGET]

	yyvs34: SPECIAL [ET_ALIAS_NAME]
			-- Stack for semantic values of type ET_ALIAS_NAME

	yyvsc34: INTEGER
			-- Capacity of semantic value stack `yyvs34'

	yyvsp34: INTEGER
			-- Top of semantic value stack `yyvs34'

	yyspecial_routines34: KL_SPECIAL_ROUTINES [ET_ALIAS_NAME]
			-- Routines that ought to be in SPECIAL [ET_ALIAS_NAME]

	yyvs35: SPECIAL [ET_ASSIGNER]
			-- Stack for semantic values of type ET_ASSIGNER

	yyvsc35: INTEGER
			-- Capacity of semantic value stack `yyvs35'

	yyvsp35: INTEGER
			-- Top of semantic value stack `yyvs35'

	yyspecial_routines35: KL_SPECIAL_ROUTINES [ET_ASSIGNER]
			-- Routines that ought to be in SPECIAL [ET_ASSIGNER]

	yyvs36: SPECIAL [ET_BRACKET_ARGUMENT_LIST]
			-- Stack for semantic values of type ET_BRACKET_ARGUMENT_LIST

	yyvsc36: INTEGER
			-- Capacity of semantic value stack `yyvs36'

	yyvsp36: INTEGER
			-- Top of semantic value stack `yyvs36'

	yyspecial_routines36: KL_SPECIAL_ROUTINES [ET_BRACKET_ARGUMENT_LIST]
			-- Routines that ought to be in SPECIAL [ET_BRACKET_ARGUMENT_LIST]

	yyvs37: SPECIAL [ET_BRACKET_EXPRESSION]
			-- Stack for semantic values of type ET_BRACKET_EXPRESSION

	yyvsc37: INTEGER
			-- Capacity of semantic value stack `yyvs37'

	yyvsp37: INTEGER
			-- Top of semantic value stack `yyvs37'

	yyspecial_routines37: KL_SPECIAL_ROUTINES [ET_BRACKET_EXPRESSION]
			-- Routines that ought to be in SPECIAL [ET_BRACKET_EXPRESSION]

	yyvs38: SPECIAL [ET_CALL_AGENT]
			-- Stack for semantic values of type ET_CALL_AGENT

	yyvsc38: INTEGER
			-- Capacity of semantic value stack `yyvs38'

	yyvsp38: INTEGER
			-- Top of semantic value stack `yyvs38'

	yyspecial_routines38: KL_SPECIAL_ROUTINES [ET_CALL_AGENT]
			-- Routines that ought to be in SPECIAL [ET_CALL_AGENT]

	yyvs39: SPECIAL [ET_CALL_EXPRESSION]
			-- Stack for semantic values of type ET_CALL_EXPRESSION

	yyvsc39: INTEGER
			-- Capacity of semantic value stack `yyvs39'

	yyvsp39: INTEGER
			-- Top of semantic value stack `yyvs39'

	yyspecial_routines39: KL_SPECIAL_ROUTINES [ET_CALL_EXPRESSION]
			-- Routines that ought to be in SPECIAL [ET_CALL_EXPRESSION]

	yyvs40: SPECIAL [ET_CHECK_INSTRUCTION]
			-- Stack for semantic values of type ET_CHECK_INSTRUCTION

	yyvsc40: INTEGER
			-- Capacity of semantic value stack `yyvs40'

	yyvsp40: INTEGER
			-- Top of semantic value stack `yyvs40'

	yyspecial_routines40: KL_SPECIAL_ROUTINES [ET_CHECK_INSTRUCTION]
			-- Routines that ought to be in SPECIAL [ET_CHECK_INSTRUCTION]

	yyvs41: SPECIAL [ET_CHOICE]
			-- Stack for semantic values of type ET_CHOICE

	yyvsc41: INTEGER
			-- Capacity of semantic value stack `yyvs41'

	yyvsp41: INTEGER
			-- Top of semantic value stack `yyvs41'

	yyspecial_routines41: KL_SPECIAL_ROUTINES [ET_CHOICE]
			-- Routines that ought to be in SPECIAL [ET_CHOICE]

	yyvs42: SPECIAL [ET_CHOICE_CONSTANT]
			-- Stack for semantic values of type ET_CHOICE_CONSTANT

	yyvsc42: INTEGER
			-- Capacity of semantic value stack `yyvs42'

	yyvsp42: INTEGER
			-- Top of semantic value stack `yyvs42'

	yyspecial_routines42: KL_SPECIAL_ROUTINES [ET_CHOICE_CONSTANT]
			-- Routines that ought to be in SPECIAL [ET_CHOICE_CONSTANT]

	yyvs43: SPECIAL [ET_CHOICE_ITEM]
			-- Stack for semantic values of type ET_CHOICE_ITEM

	yyvsc43: INTEGER
			-- Capacity of semantic value stack `yyvs43'

	yyvsp43: INTEGER
			-- Top of semantic value stack `yyvs43'

	yyspecial_routines43: KL_SPECIAL_ROUTINES [ET_CHOICE_ITEM]
			-- Routines that ought to be in SPECIAL [ET_CHOICE_ITEM]

	yyvs44: SPECIAL [ET_CHOICE_LIST]
			-- Stack for semantic values of type ET_CHOICE_LIST

	yyvsc44: INTEGER
			-- Capacity of semantic value stack `yyvs44'

	yyvsp44: INTEGER
			-- Top of semantic value stack `yyvs44'

	yyspecial_routines44: KL_SPECIAL_ROUTINES [ET_CHOICE_LIST]
			-- Routines that ought to be in SPECIAL [ET_CHOICE_LIST]

	yyvs45: SPECIAL [ET_CLASS]
			-- Stack for semantic values of type ET_CLASS

	yyvsc45: INTEGER
			-- Capacity of semantic value stack `yyvs45'

	yyvsp45: INTEGER
			-- Top of semantic value stack `yyvs45'

	yyspecial_routines45: KL_SPECIAL_ROUTINES [ET_CLASS]
			-- Routines that ought to be in SPECIAL [ET_CLASS]

	yyvs46: SPECIAL [ET_CLIENT_ITEM]
			-- Stack for semantic values of type ET_CLIENT_ITEM

	yyvsc46: INTEGER
			-- Capacity of semantic value stack `yyvs46'

	yyvsp46: INTEGER
			-- Top of semantic value stack `yyvs46'

	yyspecial_routines46: KL_SPECIAL_ROUTINES [ET_CLIENT_ITEM]
			-- Routines that ought to be in SPECIAL [ET_CLIENT_ITEM]

	yyvs47: SPECIAL [ET_CLIENTS]
			-- Stack for semantic values of type ET_CLIENTS

	yyvsc47: INTEGER
			-- Capacity of semantic value stack `yyvs47'

	yyvsp47: INTEGER
			-- Top of semantic value stack `yyvs47'

	yyspecial_routines47: KL_SPECIAL_ROUTINES [ET_CLIENTS]
			-- Routines that ought to be in SPECIAL [ET_CLIENTS]

	yyvs48: SPECIAL [ET_COMPOUND]
			-- Stack for semantic values of type ET_COMPOUND

	yyvsc48: INTEGER
			-- Capacity of semantic value stack `yyvs48'

	yyvsp48: INTEGER
			-- Top of semantic value stack `yyvs48'

	yyspecial_routines48: KL_SPECIAL_ROUTINES [ET_COMPOUND]
			-- Routines that ought to be in SPECIAL [ET_COMPOUND]

	yyvs49: SPECIAL [ET_CONDITIONAL]
			-- Stack for semantic values of type ET_CONDITIONAL

	yyvsc49: INTEGER
			-- Capacity of semantic value stack `yyvs49'

	yyvsp49: INTEGER
			-- Top of semantic value stack `yyvs49'

	yyspecial_routines49: KL_SPECIAL_ROUTINES [ET_CONDITIONAL]
			-- Routines that ought to be in SPECIAL [ET_CONDITIONAL]

	yyvs50: SPECIAL [ET_CONSTANT]
			-- Stack for semantic values of type ET_CONSTANT

	yyvsc50: INTEGER
			-- Capacity of semantic value stack `yyvs50'

	yyvsp50: INTEGER
			-- Top of semantic value stack `yyvs50'

	yyspecial_routines50: KL_SPECIAL_ROUTINES [ET_CONSTANT]
			-- Routines that ought to be in SPECIAL [ET_CONSTANT]

	yyvs51: SPECIAL [ET_CONSTRAINT_ACTUAL_PARAMETER_ITEM]
			-- Stack for semantic values of type ET_CONSTRAINT_ACTUAL_PARAMETER_ITEM

	yyvsc51: INTEGER
			-- Capacity of semantic value stack `yyvs51'

	yyvsp51: INTEGER
			-- Top of semantic value stack `yyvs51'

	yyspecial_routines51: KL_SPECIAL_ROUTINES [ET_CONSTRAINT_ACTUAL_PARAMETER_ITEM]
			-- Routines that ought to be in SPECIAL [ET_CONSTRAINT_ACTUAL_PARAMETER_ITEM]

	yyvs52: SPECIAL [ET_CONSTRAINT_ACTUAL_PARAMETER_LIST]
			-- Stack for semantic values of type ET_CONSTRAINT_ACTUAL_PARAMETER_LIST

	yyvsc52: INTEGER
			-- Capacity of semantic value stack `yyvs52'

	yyvsp52: INTEGER
			-- Top of semantic value stack `yyvs52'

	yyspecial_routines52: KL_SPECIAL_ROUTINES [ET_CONSTRAINT_ACTUAL_PARAMETER_LIST]
			-- Routines that ought to be in SPECIAL [ET_CONSTRAINT_ACTUAL_PARAMETER_LIST]

	yyvs53: SPECIAL [ET_CONSTRAINT_CREATOR]
			-- Stack for semantic values of type ET_CONSTRAINT_CREATOR

	yyvsc53: INTEGER
			-- Capacity of semantic value stack `yyvs53'

	yyvsp53: INTEGER
			-- Top of semantic value stack `yyvs53'

	yyspecial_routines53: KL_SPECIAL_ROUTINES [ET_CONSTRAINT_CREATOR]
			-- Routines that ought to be in SPECIAL [ET_CONSTRAINT_CREATOR]

	yyvs54: SPECIAL [ET_CONSTRAINT_TYPE]
			-- Stack for semantic values of type ET_CONSTRAINT_TYPE

	yyvsc54: INTEGER
			-- Capacity of semantic value stack `yyvs54'

	yyvsp54: INTEGER
			-- Top of semantic value stack `yyvs54'

	yyspecial_routines54: KL_SPECIAL_ROUTINES [ET_CONSTRAINT_TYPE]
			-- Routines that ought to be in SPECIAL [ET_CONSTRAINT_TYPE]

	yyvs55: SPECIAL [ET_CONVERT_FEATURE]
			-- Stack for semantic values of type ET_CONVERT_FEATURE

	yyvsc55: INTEGER
			-- Capacity of semantic value stack `yyvs55'

	yyvsp55: INTEGER
			-- Top of semantic value stack `yyvs55'

	yyspecial_routines55: KL_SPECIAL_ROUTINES [ET_CONVERT_FEATURE]
			-- Routines that ought to be in SPECIAL [ET_CONVERT_FEATURE]

	yyvs56: SPECIAL [ET_CONVERT_FEATURE_ITEM]
			-- Stack for semantic values of type ET_CONVERT_FEATURE_ITEM

	yyvsc56: INTEGER
			-- Capacity of semantic value stack `yyvs56'

	yyvsp56: INTEGER
			-- Top of semantic value stack `yyvs56'

	yyspecial_routines56: KL_SPECIAL_ROUTINES [ET_CONVERT_FEATURE_ITEM]
			-- Routines that ought to be in SPECIAL [ET_CONVERT_FEATURE_ITEM]

	yyvs57: SPECIAL [ET_CONVERT_FEATURE_LIST]
			-- Stack for semantic values of type ET_CONVERT_FEATURE_LIST

	yyvsc57: INTEGER
			-- Capacity of semantic value stack `yyvs57'

	yyvsp57: INTEGER
			-- Top of semantic value stack `yyvs57'

	yyspecial_routines57: KL_SPECIAL_ROUTINES [ET_CONVERT_FEATURE_LIST]
			-- Routines that ought to be in SPECIAL [ET_CONVERT_FEATURE_LIST]

	yyvs58: SPECIAL [ET_CREATE_EXPRESSION]
			-- Stack for semantic values of type ET_CREATE_EXPRESSION

	yyvsc58: INTEGER
			-- Capacity of semantic value stack `yyvs58'

	yyvsp58: INTEGER
			-- Top of semantic value stack `yyvs58'

	yyspecial_routines58: KL_SPECIAL_ROUTINES [ET_CREATE_EXPRESSION]
			-- Routines that ought to be in SPECIAL [ET_CREATE_EXPRESSION]

	yyvs59: SPECIAL [ET_CREATOR]
			-- Stack for semantic values of type ET_CREATOR

	yyvsc59: INTEGER
			-- Capacity of semantic value stack `yyvs59'

	yyvsp59: INTEGER
			-- Top of semantic value stack `yyvs59'

	yyspecial_routines59: KL_SPECIAL_ROUTINES [ET_CREATOR]
			-- Routines that ought to be in SPECIAL [ET_CREATOR]

	yyvs60: SPECIAL [ET_CREATOR_LIST]
			-- Stack for semantic values of type ET_CREATOR_LIST

	yyvsc60: INTEGER
			-- Capacity of semantic value stack `yyvs60'

	yyvsp60: INTEGER
			-- Top of semantic value stack `yyvs60'

	yyspecial_routines60: KL_SPECIAL_ROUTINES [ET_CREATOR_LIST]
			-- Routines that ought to be in SPECIAL [ET_CREATOR_LIST]

	yyvs61: SPECIAL [ET_DEBUG_INSTRUCTION]
			-- Stack for semantic values of type ET_DEBUG_INSTRUCTION

	yyvsc61: INTEGER
			-- Capacity of semantic value stack `yyvs61'

	yyvsp61: INTEGER
			-- Top of semantic value stack `yyvs61'

	yyspecial_routines61: KL_SPECIAL_ROUTINES [ET_DEBUG_INSTRUCTION]
			-- Routines that ought to be in SPECIAL [ET_DEBUG_INSTRUCTION]

	yyvs62: SPECIAL [ET_ELSEIF_PART]
			-- Stack for semantic values of type ET_ELSEIF_PART

	yyvsc62: INTEGER
			-- Capacity of semantic value stack `yyvs62'

	yyvsp62: INTEGER
			-- Top of semantic value stack `yyvs62'

	yyspecial_routines62: KL_SPECIAL_ROUTINES [ET_ELSEIF_PART]
			-- Routines that ought to be in SPECIAL [ET_ELSEIF_PART]

	yyvs63: SPECIAL [ET_ELSEIF_PART_LIST]
			-- Stack for semantic values of type ET_ELSEIF_PART_LIST

	yyvsc63: INTEGER
			-- Capacity of semantic value stack `yyvs63'

	yyvsp63: INTEGER
			-- Top of semantic value stack `yyvs63'

	yyspecial_routines63: KL_SPECIAL_ROUTINES [ET_ELSEIF_PART_LIST]
			-- Routines that ought to be in SPECIAL [ET_ELSEIF_PART_LIST]

	yyvs64: SPECIAL [ET_EXPORT]
			-- Stack for semantic values of type ET_EXPORT

	yyvsc64: INTEGER
			-- Capacity of semantic value stack `yyvs64'

	yyvsp64: INTEGER
			-- Top of semantic value stack `yyvs64'

	yyspecial_routines64: KL_SPECIAL_ROUTINES [ET_EXPORT]
			-- Routines that ought to be in SPECIAL [ET_EXPORT]

	yyvs65: SPECIAL [ET_EXPORT_LIST]
			-- Stack for semantic values of type ET_EXPORT_LIST

	yyvsc65: INTEGER
			-- Capacity of semantic value stack `yyvs65'

	yyvsp65: INTEGER
			-- Top of semantic value stack `yyvs65'

	yyspecial_routines65: KL_SPECIAL_ROUTINES [ET_EXPORT_LIST]
			-- Routines that ought to be in SPECIAL [ET_EXPORT_LIST]

	yyvs66: SPECIAL [ET_EXPRESSION]
			-- Stack for semantic values of type ET_EXPRESSION

	yyvsc66: INTEGER
			-- Capacity of semantic value stack `yyvs66'

	yyvsp66: INTEGER
			-- Top of semantic value stack `yyvs66'

	yyspecial_routines66: KL_SPECIAL_ROUTINES [ET_EXPRESSION]
			-- Routines that ought to be in SPECIAL [ET_EXPRESSION]

	yyvs67: SPECIAL [ET_EXPRESSION_ITEM]
			-- Stack for semantic values of type ET_EXPRESSION_ITEM

	yyvsc67: INTEGER
			-- Capacity of semantic value stack `yyvs67'

	yyvsp67: INTEGER
			-- Top of semantic value stack `yyvs67'

	yyspecial_routines67: KL_SPECIAL_ROUTINES [ET_EXPRESSION_ITEM]
			-- Routines that ought to be in SPECIAL [ET_EXPRESSION_ITEM]

	yyvs68: SPECIAL [ET_EXTENDED_FEATURE_NAME]
			-- Stack for semantic values of type ET_EXTENDED_FEATURE_NAME

	yyvsc68: INTEGER
			-- Capacity of semantic value stack `yyvs68'

	yyvsp68: INTEGER
			-- Top of semantic value stack `yyvs68'

	yyspecial_routines68: KL_SPECIAL_ROUTINES [ET_EXTENDED_FEATURE_NAME]
			-- Routines that ought to be in SPECIAL [ET_EXTENDED_FEATURE_NAME]

	yyvs69: SPECIAL [ET_EXTERNAL_ALIAS]
			-- Stack for semantic values of type ET_EXTERNAL_ALIAS

	yyvsc69: INTEGER
			-- Capacity of semantic value stack `yyvs69'

	yyvsp69: INTEGER
			-- Top of semantic value stack `yyvs69'

	yyspecial_routines69: KL_SPECIAL_ROUTINES [ET_EXTERNAL_ALIAS]
			-- Routines that ought to be in SPECIAL [ET_EXTERNAL_ALIAS]

	yyvs70: SPECIAL [ET_FEATURE_CLAUSE]
			-- Stack for semantic values of type ET_FEATURE_CLAUSE

	yyvsc70: INTEGER
			-- Capacity of semantic value stack `yyvs70'

	yyvsp70: INTEGER
			-- Top of semantic value stack `yyvs70'

	yyspecial_routines70: KL_SPECIAL_ROUTINES [ET_FEATURE_CLAUSE]
			-- Routines that ought to be in SPECIAL [ET_FEATURE_CLAUSE]

	yyvs71: SPECIAL [ET_FEATURE_CLAUSE_LIST]
			-- Stack for semantic values of type ET_FEATURE_CLAUSE_LIST

	yyvsc71: INTEGER
			-- Capacity of semantic value stack `yyvs71'

	yyvsp71: INTEGER
			-- Top of semantic value stack `yyvs71'

	yyspecial_routines71: KL_SPECIAL_ROUTINES [ET_FEATURE_CLAUSE_LIST]
			-- Routines that ought to be in SPECIAL [ET_FEATURE_CLAUSE_LIST]

	yyvs72: SPECIAL [ET_FEATURE_EXPORT]
			-- Stack for semantic values of type ET_FEATURE_EXPORT

	yyvsc72: INTEGER
			-- Capacity of semantic value stack `yyvs72'

	yyvsp72: INTEGER
			-- Top of semantic value stack `yyvs72'

	yyspecial_routines72: KL_SPECIAL_ROUTINES [ET_FEATURE_EXPORT]
			-- Routines that ought to be in SPECIAL [ET_FEATURE_EXPORT]

	yyvs73: SPECIAL [ET_FEATURE_NAME]
			-- Stack for semantic values of type ET_FEATURE_NAME

	yyvsc73: INTEGER
			-- Capacity of semantic value stack `yyvs73'

	yyvsp73: INTEGER
			-- Top of semantic value stack `yyvs73'

	yyspecial_routines73: KL_SPECIAL_ROUTINES [ET_FEATURE_NAME]
			-- Routines that ought to be in SPECIAL [ET_FEATURE_NAME]

	yyvs74: SPECIAL [ET_FEATURE_NAME_ITEM]
			-- Stack for semantic values of type ET_FEATURE_NAME_ITEM

	yyvsc74: INTEGER
			-- Capacity of semantic value stack `yyvs74'

	yyvsp74: INTEGER
			-- Top of semantic value stack `yyvs74'

	yyspecial_routines74: KL_SPECIAL_ROUTINES [ET_FEATURE_NAME_ITEM]
			-- Routines that ought to be in SPECIAL [ET_FEATURE_NAME_ITEM]

	yyvs75: SPECIAL [ET_FORMAL_ARGUMENT]
			-- Stack for semantic values of type ET_FORMAL_ARGUMENT

	yyvsc75: INTEGER
			-- Capacity of semantic value stack `yyvs75'

	yyvsp75: INTEGER
			-- Top of semantic value stack `yyvs75'

	yyspecial_routines75: KL_SPECIAL_ROUTINES [ET_FORMAL_ARGUMENT]
			-- Routines that ought to be in SPECIAL [ET_FORMAL_ARGUMENT]

	yyvs76: SPECIAL [ET_FORMAL_ARGUMENT_ITEM]
			-- Stack for semantic values of type ET_FORMAL_ARGUMENT_ITEM

	yyvsc76: INTEGER
			-- Capacity of semantic value stack `yyvs76'

	yyvsp76: INTEGER
			-- Top of semantic value stack `yyvs76'

	yyspecial_routines76: KL_SPECIAL_ROUTINES [ET_FORMAL_ARGUMENT_ITEM]
			-- Routines that ought to be in SPECIAL [ET_FORMAL_ARGUMENT_ITEM]

	yyvs77: SPECIAL [ET_FORMAL_ARGUMENT_LIST]
			-- Stack for semantic values of type ET_FORMAL_ARGUMENT_LIST

	yyvsc77: INTEGER
			-- Capacity of semantic value stack `yyvs77'

	yyvsp77: INTEGER
			-- Top of semantic value stack `yyvs77'

	yyspecial_routines77: KL_SPECIAL_ROUTINES [ET_FORMAL_ARGUMENT_LIST]
			-- Routines that ought to be in SPECIAL [ET_FORMAL_ARGUMENT_LIST]

	yyvs78: SPECIAL [ET_FORMAL_PARAMETER]
			-- Stack for semantic values of type ET_FORMAL_PARAMETER

	yyvsc78: INTEGER
			-- Capacity of semantic value stack `yyvs78'

	yyvsp78: INTEGER
			-- Top of semantic value stack `yyvs78'

	yyspecial_routines78: KL_SPECIAL_ROUTINES [ET_FORMAL_PARAMETER]
			-- Routines that ought to be in SPECIAL [ET_FORMAL_PARAMETER]

	yyvs79: SPECIAL [ET_FORMAL_PARAMETER_ITEM]
			-- Stack for semantic values of type ET_FORMAL_PARAMETER_ITEM

	yyvsc79: INTEGER
			-- Capacity of semantic value stack `yyvs79'

	yyvsp79: INTEGER
			-- Top of semantic value stack `yyvs79'

	yyspecial_routines79: KL_SPECIAL_ROUTINES [ET_FORMAL_PARAMETER_ITEM]
			-- Routines that ought to be in SPECIAL [ET_FORMAL_PARAMETER_ITEM]

	yyvs80: SPECIAL [ET_FORMAL_PARAMETER_LIST]
			-- Stack for semantic values of type ET_FORMAL_PARAMETER_LIST

	yyvsc80: INTEGER
			-- Capacity of semantic value stack `yyvs80'

	yyvsp80: INTEGER
			-- Top of semantic value stack `yyvs80'

	yyspecial_routines80: KL_SPECIAL_ROUTINES [ET_FORMAL_PARAMETER_LIST]
			-- Routines that ought to be in SPECIAL [ET_FORMAL_PARAMETER_LIST]

	yyvs81: SPECIAL [ET_IF_INSTRUCTION]
			-- Stack for semantic values of type ET_IF_INSTRUCTION

	yyvsc81: INTEGER
			-- Capacity of semantic value stack `yyvs81'

	yyvsp81: INTEGER
			-- Top of semantic value stack `yyvs81'

	yyspecial_routines81: KL_SPECIAL_ROUTINES [ET_IF_INSTRUCTION]
			-- Routines that ought to be in SPECIAL [ET_IF_INSTRUCTION]

	yyvs82: SPECIAL [ET_INDEXING_LIST]
			-- Stack for semantic values of type ET_INDEXING_LIST

	yyvsc82: INTEGER
			-- Capacity of semantic value stack `yyvs82'

	yyvsp82: INTEGER
			-- Top of semantic value stack `yyvs82'

	yyspecial_routines82: KL_SPECIAL_ROUTINES [ET_INDEXING_LIST]
			-- Routines that ought to be in SPECIAL [ET_INDEXING_LIST]

	yyvs83: SPECIAL [ET_INDEXING_ITEM]
			-- Stack for semantic values of type ET_INDEXING_ITEM

	yyvsc83: INTEGER
			-- Capacity of semantic value stack `yyvs83'

	yyvsp83: INTEGER
			-- Top of semantic value stack `yyvs83'

	yyspecial_routines83: KL_SPECIAL_ROUTINES [ET_INDEXING_ITEM]
			-- Routines that ought to be in SPECIAL [ET_INDEXING_ITEM]

	yyvs84: SPECIAL [ET_INDEXING_TERM]
			-- Stack for semantic values of type ET_INDEXING_TERM

	yyvsc84: INTEGER
			-- Capacity of semantic value stack `yyvs84'

	yyvsp84: INTEGER
			-- Top of semantic value stack `yyvs84'

	yyspecial_routines84: KL_SPECIAL_ROUTINES [ET_INDEXING_TERM]
			-- Routines that ought to be in SPECIAL [ET_INDEXING_TERM]

	yyvs85: SPECIAL [ET_INDEXING_TERM_ITEM]
			-- Stack for semantic values of type ET_INDEXING_TERM_ITEM

	yyvsc85: INTEGER
			-- Capacity of semantic value stack `yyvs85'

	yyvsp85: INTEGER
			-- Top of semantic value stack `yyvs85'

	yyspecial_routines85: KL_SPECIAL_ROUTINES [ET_INDEXING_TERM_ITEM]
			-- Routines that ought to be in SPECIAL [ET_INDEXING_TERM_ITEM]

	yyvs86: SPECIAL [ET_INDEXING_TERM_LIST]
			-- Stack for semantic values of type ET_INDEXING_TERM_LIST

	yyvsc86: INTEGER
			-- Capacity of semantic value stack `yyvs86'

	yyvsp86: INTEGER
			-- Top of semantic value stack `yyvs86'

	yyspecial_routines86: KL_SPECIAL_ROUTINES [ET_INDEXING_TERM_LIST]
			-- Routines that ought to be in SPECIAL [ET_INDEXING_TERM_LIST]

	yyvs87: SPECIAL [ET_INLINE_AGENT]
			-- Stack for semantic values of type ET_INLINE_AGENT

	yyvsc87: INTEGER
			-- Capacity of semantic value stack `yyvs87'

	yyvsp87: INTEGER
			-- Top of semantic value stack `yyvs87'

	yyspecial_routines87: KL_SPECIAL_ROUTINES [ET_INLINE_AGENT]
			-- Routines that ought to be in SPECIAL [ET_INLINE_AGENT]

	yyvs88: SPECIAL [ET_INSPECT_INSTRUCTION]
			-- Stack for semantic values of type ET_INSPECT_INSTRUCTION

	yyvsc88: INTEGER
			-- Capacity of semantic value stack `yyvs88'

	yyvsp88: INTEGER
			-- Top of semantic value stack `yyvs88'

	yyspecial_routines88: KL_SPECIAL_ROUTINES [ET_INSPECT_INSTRUCTION]
			-- Routines that ought to be in SPECIAL [ET_INSPECT_INSTRUCTION]

	yyvs89: SPECIAL [ET_INSTRUCTION]
			-- Stack for semantic values of type ET_INSTRUCTION

	yyvsc89: INTEGER
			-- Capacity of semantic value stack `yyvs89'

	yyvsp89: INTEGER
			-- Top of semantic value stack `yyvs89'

	yyspecial_routines89: KL_SPECIAL_ROUTINES [ET_INSTRUCTION]
			-- Routines that ought to be in SPECIAL [ET_INSTRUCTION]

	yyvs90: SPECIAL [ET_INVARIANTS]
			-- Stack for semantic values of type ET_INVARIANTS

	yyvsc90: INTEGER
			-- Capacity of semantic value stack `yyvs90'

	yyvsp90: INTEGER
			-- Top of semantic value stack `yyvs90'

	yyspecial_routines90: KL_SPECIAL_ROUTINES [ET_INVARIANTS]
			-- Routines that ought to be in SPECIAL [ET_INVARIANTS]

	yyvs91: SPECIAL [ET_KEYWORD_FEATURE_NAME_LIST]
			-- Stack for semantic values of type ET_KEYWORD_FEATURE_NAME_LIST

	yyvsc91: INTEGER
			-- Capacity of semantic value stack `yyvs91'

	yyvsp91: INTEGER
			-- Top of semantic value stack `yyvs91'

	yyspecial_routines91: KL_SPECIAL_ROUTINES [ET_KEYWORD_FEATURE_NAME_LIST]
			-- Routines that ought to be in SPECIAL [ET_KEYWORD_FEATURE_NAME_LIST]

	yyvs92: SPECIAL [ET_LIKE_TYPE]
			-- Stack for semantic values of type ET_LIKE_TYPE

	yyvsc92: INTEGER
			-- Capacity of semantic value stack `yyvs92'

	yyvsp92: INTEGER
			-- Top of semantic value stack `yyvs92'

	yyspecial_routines92: KL_SPECIAL_ROUTINES [ET_LIKE_TYPE]
			-- Routines that ought to be in SPECIAL [ET_LIKE_TYPE]

	yyvs93: SPECIAL [ET_LOCAL_VARIABLE]
			-- Stack for semantic values of type ET_LOCAL_VARIABLE

	yyvsc93: INTEGER
			-- Capacity of semantic value stack `yyvs93'

	yyvsp93: INTEGER
			-- Top of semantic value stack `yyvs93'

	yyspecial_routines93: KL_SPECIAL_ROUTINES [ET_LOCAL_VARIABLE]
			-- Routines that ought to be in SPECIAL [ET_LOCAL_VARIABLE]

	yyvs94: SPECIAL [ET_LOCAL_VARIABLE_ITEM]
			-- Stack for semantic values of type ET_LOCAL_VARIABLE_ITEM

	yyvsc94: INTEGER
			-- Capacity of semantic value stack `yyvs94'

	yyvsp94: INTEGER
			-- Top of semantic value stack `yyvs94'

	yyspecial_routines94: KL_SPECIAL_ROUTINES [ET_LOCAL_VARIABLE_ITEM]
			-- Routines that ought to be in SPECIAL [ET_LOCAL_VARIABLE_ITEM]

	yyvs95: SPECIAL [ET_LOCAL_VARIABLE_LIST]
			-- Stack for semantic values of type ET_LOCAL_VARIABLE_LIST

	yyvsc95: INTEGER
			-- Capacity of semantic value stack `yyvs95'

	yyvsp95: INTEGER
			-- Top of semantic value stack `yyvs95'

	yyspecial_routines95: KL_SPECIAL_ROUTINES [ET_LOCAL_VARIABLE_LIST]
			-- Routines that ought to be in SPECIAL [ET_LOCAL_VARIABLE_LIST]

	yyvs96: SPECIAL [ET_LOOP_INVARIANTS]
			-- Stack for semantic values of type ET_LOOP_INVARIANTS

	yyvsc96: INTEGER
			-- Capacity of semantic value stack `yyvs96'

	yyvsp96: INTEGER
			-- Top of semantic value stack `yyvs96'

	yyspecial_routines96: KL_SPECIAL_ROUTINES [ET_LOOP_INVARIANTS]
			-- Routines that ought to be in SPECIAL [ET_LOOP_INVARIANTS]

	yyvs97: SPECIAL [ET_MANIFEST_ARRAY]
			-- Stack for semantic values of type ET_MANIFEST_ARRAY

	yyvsc97: INTEGER
			-- Capacity of semantic value stack `yyvs97'

	yyvsp97: INTEGER
			-- Top of semantic value stack `yyvs97'

	yyspecial_routines97: KL_SPECIAL_ROUTINES [ET_MANIFEST_ARRAY]
			-- Routines that ought to be in SPECIAL [ET_MANIFEST_ARRAY]

	yyvs98: SPECIAL [ET_MANIFEST_STRING_ITEM]
			-- Stack for semantic values of type ET_MANIFEST_STRING_ITEM

	yyvsc98: INTEGER
			-- Capacity of semantic value stack `yyvs98'

	yyvsp98: INTEGER
			-- Top of semantic value stack `yyvs98'

	yyspecial_routines98: KL_SPECIAL_ROUTINES [ET_MANIFEST_STRING_ITEM]
			-- Routines that ought to be in SPECIAL [ET_MANIFEST_STRING_ITEM]

	yyvs99: SPECIAL [ET_MANIFEST_STRING_LIST]
			-- Stack for semantic values of type ET_MANIFEST_STRING_LIST

	yyvsc99: INTEGER
			-- Capacity of semantic value stack `yyvs99'

	yyvsp99: INTEGER
			-- Top of semantic value stack `yyvs99'

	yyspecial_routines99: KL_SPECIAL_ROUTINES [ET_MANIFEST_STRING_LIST]
			-- Routines that ought to be in SPECIAL [ET_MANIFEST_STRING_LIST]

	yyvs100: SPECIAL [ET_MANIFEST_TUPLE]
			-- Stack for semantic values of type ET_MANIFEST_TUPLE

	yyvsc100: INTEGER
			-- Capacity of semantic value stack `yyvs100'

	yyvsp100: INTEGER
			-- Top of semantic value stack `yyvs100'

	yyspecial_routines100: KL_SPECIAL_ROUTINES [ET_MANIFEST_TUPLE]
			-- Routines that ought to be in SPECIAL [ET_MANIFEST_TUPLE]

	yyvs101: SPECIAL [ET_OBSOLETE]
			-- Stack for semantic values of type ET_OBSOLETE

	yyvsc101: INTEGER
			-- Capacity of semantic value stack `yyvs101'

	yyvsp101: INTEGER
			-- Top of semantic value stack `yyvs101'

	yyspecial_routines101: KL_SPECIAL_ROUTINES [ET_OBSOLETE]
			-- Routines that ought to be in SPECIAL [ET_OBSOLETE]

	yyvs102: SPECIAL [ET_PARENTHESIZED_EXPRESSION]
			-- Stack for semantic values of type ET_PARENTHESIZED_EXPRESSION

	yyvsc102: INTEGER
			-- Capacity of semantic value stack `yyvs102'

	yyvsp102: INTEGER
			-- Top of semantic value stack `yyvs102'

	yyspecial_routines102: KL_SPECIAL_ROUTINES [ET_PARENTHESIZED_EXPRESSION]
			-- Routines that ought to be in SPECIAL [ET_PARENTHESIZED_EXPRESSION]

	yyvs103: SPECIAL [ET_PARENT]
			-- Stack for semantic values of type ET_PARENT

	yyvsc103: INTEGER
			-- Capacity of semantic value stack `yyvs103'

	yyvsp103: INTEGER
			-- Top of semantic value stack `yyvs103'

	yyspecial_routines103: KL_SPECIAL_ROUTINES [ET_PARENT]
			-- Routines that ought to be in SPECIAL [ET_PARENT]

	yyvs104: SPECIAL [ET_PARENT_ITEM]
			-- Stack for semantic values of type ET_PARENT_ITEM

	yyvsc104: INTEGER
			-- Capacity of semantic value stack `yyvs104'

	yyvsp104: INTEGER
			-- Top of semantic value stack `yyvs104'

	yyspecial_routines104: KL_SPECIAL_ROUTINES [ET_PARENT_ITEM]
			-- Routines that ought to be in SPECIAL [ET_PARENT_ITEM]

	yyvs105: SPECIAL [ET_PARENT_LIST]
			-- Stack for semantic values of type ET_PARENT_LIST

	yyvsc105: INTEGER
			-- Capacity of semantic value stack `yyvs105'

	yyvsp105: INTEGER
			-- Top of semantic value stack `yyvs105'

	yyspecial_routines105: KL_SPECIAL_ROUTINES [ET_PARENT_LIST]
			-- Routines that ought to be in SPECIAL [ET_PARENT_LIST]

	yyvs106: SPECIAL [ET_POSTCONDITIONS]
			-- Stack for semantic values of type ET_POSTCONDITIONS

	yyvsc106: INTEGER
			-- Capacity of semantic value stack `yyvs106'

	yyvsp106: INTEGER
			-- Top of semantic value stack `yyvs106'

	yyspecial_routines106: KL_SPECIAL_ROUTINES [ET_POSTCONDITIONS]
			-- Routines that ought to be in SPECIAL [ET_POSTCONDITIONS]

	yyvs107: SPECIAL [ET_PRECONDITIONS]
			-- Stack for semantic values of type ET_PRECONDITIONS

	yyvsc107: INTEGER
			-- Capacity of semantic value stack `yyvs107'

	yyvsp107: INTEGER
			-- Top of semantic value stack `yyvs107'

	yyspecial_routines107: KL_SPECIAL_ROUTINES [ET_PRECONDITIONS]
			-- Routines that ought to be in SPECIAL [ET_PRECONDITIONS]

	yyvs108: SPECIAL [ET_PROCEDURE]
			-- Stack for semantic values of type ET_PROCEDURE

	yyvsc108: INTEGER
			-- Capacity of semantic value stack `yyvs108'

	yyvsp108: INTEGER
			-- Top of semantic value stack `yyvs108'

	yyspecial_routines108: KL_SPECIAL_ROUTINES [ET_PROCEDURE]
			-- Routines that ought to be in SPECIAL [ET_PROCEDURE]

	yyvs109: SPECIAL [ET_QUALIFIED_LIKE_IDENTIFIER]
			-- Stack for semantic values of type ET_QUALIFIED_LIKE_IDENTIFIER

	yyvsc109: INTEGER
			-- Capacity of semantic value stack `yyvs109'

	yyvsp109: INTEGER
			-- Top of semantic value stack `yyvs109'

	yyspecial_routines109: KL_SPECIAL_ROUTINES [ET_QUALIFIED_LIKE_IDENTIFIER]
			-- Routines that ought to be in SPECIAL [ET_QUALIFIED_LIKE_IDENTIFIER]

	yyvs110: SPECIAL [ET_QUERY]
			-- Stack for semantic values of type ET_QUERY

	yyvsc110: INTEGER
			-- Capacity of semantic value stack `yyvs110'

	yyvsp110: INTEGER
			-- Top of semantic value stack `yyvs110'

	yyspecial_routines110: KL_SPECIAL_ROUTINES [ET_QUERY]
			-- Routines that ought to be in SPECIAL [ET_QUERY]

	yyvs111: SPECIAL [ET_RENAME_ITEM]
			-- Stack for semantic values of type ET_RENAME_ITEM

	yyvsc111: INTEGER
			-- Capacity of semantic value stack `yyvs111'

	yyvsp111: INTEGER
			-- Top of semantic value stack `yyvs111'

	yyspecial_routines111: KL_SPECIAL_ROUTINES [ET_RENAME_ITEM]
			-- Routines that ought to be in SPECIAL [ET_RENAME_ITEM]

	yyvs112: SPECIAL [ET_RENAME_LIST]
			-- Stack for semantic values of type ET_RENAME_LIST

	yyvsc112: INTEGER
			-- Capacity of semantic value stack `yyvs112'

	yyvsp112: INTEGER
			-- Top of semantic value stack `yyvs112'

	yyspecial_routines112: KL_SPECIAL_ROUTINES [ET_RENAME_LIST]
			-- Routines that ought to be in SPECIAL [ET_RENAME_LIST]

	yyvs113: SPECIAL [ET_STATIC_CALL_EXPRESSION]
			-- Stack for semantic values of type ET_STATIC_CALL_EXPRESSION

	yyvsc113: INTEGER
			-- Capacity of semantic value stack `yyvs113'

	yyvsp113: INTEGER
			-- Top of semantic value stack `yyvs113'

	yyspecial_routines113: KL_SPECIAL_ROUTINES [ET_STATIC_CALL_EXPRESSION]
			-- Routines that ought to be in SPECIAL [ET_STATIC_CALL_EXPRESSION]

	yyvs114: SPECIAL [ET_STRIP_EXPRESSION]
			-- Stack for semantic values of type ET_STRIP_EXPRESSION

	yyvsc114: INTEGER
			-- Capacity of semantic value stack `yyvs114'

	yyvsp114: INTEGER
			-- Top of semantic value stack `yyvs114'

	yyspecial_routines114: KL_SPECIAL_ROUTINES [ET_STRIP_EXPRESSION]
			-- Routines that ought to be in SPECIAL [ET_STRIP_EXPRESSION]

	yyvs115: SPECIAL [ET_TYPE]
			-- Stack for semantic values of type ET_TYPE

	yyvsc115: INTEGER
			-- Capacity of semantic value stack `yyvs115'

	yyvsp115: INTEGER
			-- Top of semantic value stack `yyvs115'

	yyspecial_routines115: KL_SPECIAL_ROUTINES [ET_TYPE]
			-- Routines that ought to be in SPECIAL [ET_TYPE]

	yyvs116: SPECIAL [ET_TYPE_ITEM]
			-- Stack for semantic values of type ET_TYPE_ITEM

	yyvsc116: INTEGER
			-- Capacity of semantic value stack `yyvs116'

	yyvsp116: INTEGER
			-- Top of semantic value stack `yyvs116'

	yyspecial_routines116: KL_SPECIAL_ROUTINES [ET_TYPE_ITEM]
			-- Routines that ought to be in SPECIAL [ET_TYPE_ITEM]

	yyvs117: SPECIAL [ET_TYPE_LIST]
			-- Stack for semantic values of type ET_TYPE_LIST

	yyvsc117: INTEGER
			-- Capacity of semantic value stack `yyvs117'

	yyvsp117: INTEGER
			-- Top of semantic value stack `yyvs117'

	yyspecial_routines117: KL_SPECIAL_ROUTINES [ET_TYPE_LIST]
			-- Routines that ought to be in SPECIAL [ET_TYPE_LIST]

	yyvs118: SPECIAL [ET_VARIANT]
			-- Stack for semantic values of type ET_VARIANT

	yyvsc118: INTEGER
			-- Capacity of semantic value stack `yyvs118'

	yyvsp118: INTEGER
			-- Top of semantic value stack `yyvs118'

	yyspecial_routines118: KL_SPECIAL_ROUTINES [ET_VARIANT]
			-- Routines that ought to be in SPECIAL [ET_VARIANT]

	yyvs119: SPECIAL [ET_WHEN_PART]
			-- Stack for semantic values of type ET_WHEN_PART

	yyvsc119: INTEGER
			-- Capacity of semantic value stack `yyvs119'

	yyvsp119: INTEGER
			-- Top of semantic value stack `yyvs119'

	yyspecial_routines119: KL_SPECIAL_ROUTINES [ET_WHEN_PART]
			-- Routines that ought to be in SPECIAL [ET_WHEN_PART]

	yyvs120: SPECIAL [ET_WHEN_PART_LIST]
			-- Stack for semantic values of type ET_WHEN_PART_LIST

	yyvsc120: INTEGER
			-- Capacity of semantic value stack `yyvs120'

	yyvsp120: INTEGER
			-- Top of semantic value stack `yyvs120'

	yyspecial_routines120: KL_SPECIAL_ROUTINES [ET_WHEN_PART_LIST]
			-- Routines that ought to be in SPECIAL [ET_WHEN_PART_LIST]

	yyvs121: SPECIAL [ET_WRITABLE]
			-- Stack for semantic values of type ET_WRITABLE

	yyvsc121: INTEGER
			-- Capacity of semantic value stack `yyvs121'

	yyvsp121: INTEGER
			-- Top of semantic value stack `yyvs121'

	yyspecial_routines121: KL_SPECIAL_ROUTINES [ET_WRITABLE]
			-- Routines that ought to be in SPECIAL [ET_WRITABLE]

feature {NONE} -- Constants

	yyFinal: INTEGER = 1757
			-- Termination state id

	yyFlag: INTEGER = -32768
			-- Most negative INTEGER

	yyNtbase: INTEGER = 143
			-- Number of tokens

	yyLast: INTEGER = 7213
			-- Upper bound of `yytable' and `yycheck'

	yyMax_token: INTEGER = 375
			-- Maximum token id
			-- (upper bound of `yytranslate'.)

	yyNsyms: INTEGER = 423
			-- Number of symbols
			-- (terminal and nonterminal)

feature -- User-defined features



feature -- Parsing

	yyparse
			-- (NOTE: THIS IS THE COPY/PASTE VERSION OF THE CODE IN
			-- THE YY_PARSER_SKELETON CLASS, FOR OPTIMISATION WITH
			-- ISE EIFFEL (ALLOW INLINING NOT POSSIBLE IN
			-- YY_PARSER_SKELETON).)

			-- Parse input stream.
			-- Set `syntax_error' to True if
			-- parsing has not been successful.
		local
			yystacksize: INTEGER
			yystate: INTEGER
			yyn: INTEGER
			yychar1: INTEGER
			index, yyss_top: INTEGER
			yy_goto: INTEGER
		do
				-- This routine is implemented with a loop whose body
				-- is a big inspect instruction. This is a mere
				-- translation of C gotos into Eiffel. Needless to
				-- say that I'm not very proud of this piece of code.
				-- However I performed some benchmarks and the results
				-- were that this implementation runs amazingly faster
				-- than an alternative implementation with no loop nor
				-- inspect instructions and where every branch of the
				-- old inspect instruction was written in a separate
				-- routine. I think that the performance penalty is due
				-- to the routine call overhead and the depth of the call
				-- stack. Anyway, I prefer to provide you with a big and
				-- ugly but fast parsing routine rather than a nice and
				-- slow version. I hope you won't blame me for that! :-)
			from
				if yy_parsing_status = yySuspended then
					yystacksize := yy_suspended_yystacksize
					yystate := yy_suspended_yystate
					yyn := yy_suspended_yyn
					yychar1 := yy_suspended_yychar1
					index := yy_suspended_index
					yyss_top := yy_suspended_yyss_top
					yy_goto := yy_suspended_yy_goto
					yy_parsing_status := yyContinue
					if yy_goto = yyReduce then
							-- Now "shift" the result of the reduction.
							-- Determine what state that goes to,
							-- based on the state we popped back to
							-- and the rule number reduced by.
						yyn := yyr1.item (yyn)
						yyss_top := yyss.item (yyssp)
						index := yyn - yyNtbase
						yystate := yypgoto.item (index) + yyss_top
						if
							(yystate >= 0 and yystate <= yyLast) and then
							yycheck.item (yystate) = yyss_top
						then
							yystate := yytable.item (yystate)
						else
							yystate := yydefgoto.item (index)
						end
						yy_goto := yyNewstate
					end
				else
					error_count := 0
					yy_lookahead_needed := True
					yyerrstatus := 0
					yy_init_value_stacks
					yyssp := -1
					yystacksize := yyss.count
					yy_parsing_status := yyContinue
					yy_goto := yyNewstate
				end
			until
				yy_parsing_status /= yyContinue
			loop
				inspect yy_goto
				when yyNewstate then
					yyssp := yyssp + 1
					if yyssp >= yystacksize then
						yystacksize := yystacksize + yyInitial_stack_size
						yyss := SPECIAL_INTEGER_.resize (yyss, yystacksize)
						debug ("GEYACC")
							std.error.put_string ("Stack (yyss) size increased to ")
							std.error.put_integer (yystacksize)
							std.error.put_character ('%N')
						end
					end
					debug ("GEYACC")
						std.error.put_string ("Entering state ")
						std.error.put_integer (yystate)
						std.error.put_character ('%N')
					end
					SPECIAL_INTEGER_.force (yyss, yystate, yyssp)
						-- Do appropriate processing given the current state.
						-- Read a lookahead token if one is needed.
					yyn := yypact.item (yystate)
						-- First try to decide what to do without reference
						-- lookahead token.
					if yyn = yyFlag then
						yy_goto := yyDefault
					else
							-- Not known => get a lookahead token if don't
							-- already have one.
						if yy_lookahead_needed then
							debug ("GEYACC")
								std.error.put_string ("Reading a token%N")
							end
							read_token
							yy_lookahead_needed := False
						end
							-- Convert token to internal form (in `yychar1')
							-- for indexing tables.
						if last_token > yyEof then
							debug ("GEYACC")
								std.error.put_string ("Next token is ")
								std.error.put_integer (last_token)
								std.error.put_character ('%N')
							end
								-- Translate lexical token `last_token' into
								-- geyacc internal token code.
							if last_token <= yyMax_token then
								yychar1 := yytranslate.item (last_token)
							else
								yychar1 := yyNsyms
							end
							yyn := yyn + yychar1
						elseif last_token = yyEof then
								-- This means end of input.
							debug ("GEYACC")
								std.error.put_string ("Now at end of input.%N")
							end
							yychar1 := 0
						else
								-- An error occurred in the scanner.
							debug ("GEYACC")
								std.error.put_string ("Error in scanner.%N")
							end
							error_count := error_count + 1
							yy_do_error_action (yystate)
							abort
								-- Skip next conditional instruction:
							yyn := -1
						end
						if
							(yyn < 0 or yyn > yyLast) or else
							yycheck.item (yyn) /= yychar1
						then
							yy_goto := yyDefault
						else
							yyn := yytable.item (yyn)
								-- `yyn' is what to do for this token type in
								-- this state:
								-- Negative => reduce, -`yyn' is rule number.
								-- Positive => shift, `yyn' is new state.
								-- New state is final state => don't bother to
								-- shift, just return success.
								-- 0, or most negative number => error.
							if yyn < 0 then
								if yyn = yyFlag then
									yy_goto := yyErrlab
								else
									yyn := -yyn
									yy_goto := yyReduce
								end
							elseif yyn = 0 then
								yy_goto := yyErrlab
							elseif yyn = yyFinal then
								accept
							else
									-- Shift the lookahead token.
								debug ("GEYACC")
									std.error.put_string ("Shifting token ")
									std.error.put_integer (last_token)
									std.error.put_character ('%N')
								end
									-- Discard the token being shifted
									-- unless it is eof.
								if last_token > yyEof then
									yy_lookahead_needed := True
								end
								yy_push_last_value (yychar1)
									-- Count tokens shifted since error;
									-- after three, turn off error status.
								if yyerrstatus /= 0 then
									yyerrstatus := yyerrstatus - 1
								end
								yystate := yyn
								check
									newstate: yy_goto = yyNewstate
								end
							end
						end
					end
				when yyDefault then
						-- Do the default action for the current state.
					yyn := yydefact.item (yystate)
					if yyn = 0 then
						yy_goto := yyErrlab
					else
						yy_goto := yyReduce
					end
				when yyReduce then
						-- Do a reduction. `yyn' is the number of a rule
						-- to reduce with.
					debug ("GEYACC")
						std.error.put_string ("Reducing via rule #")
						std.error.put_integer (yyn)
						std.error.put_character ('%N')
					end
					yy_do_action (yyn)
					inspect yy_parsing_status
					when yyContinue then
							-- Now "shift" the result of the reduction.
							-- Determine what state that goes to,
							-- based on the state we popped back to
							-- and the rule number reduced by.
						yyn := yyr1.item (yyn)
						yyss_top := yyss.item (yyssp)
						index := yyn - yyNtbase
						yystate := yypgoto.item (index) + yyss_top
						if
							(yystate >= 0 and yystate <= yyLast) and then
							yycheck.item (yystate) = yyss_top
						then
							yystate := yytable.item (yystate)
						else
							yystate := yydefgoto.item (index)
						end
						yy_goto := yyNewstate
					when yySuspended then
						yy_suspended_yystacksize := yystacksize
						yy_suspended_yystate := yystate
						yy_suspended_yyn := yyn
						yy_suspended_yychar1 := yychar1
						yy_suspended_index := index
						yy_suspended_yyss_top := yyss_top
						yy_suspended_yy_goto := yy_goto
					when yyError_raised then
							-- Handle error raised explicitly by an action.
						yy_parsing_status := yyContinue
						yy_goto := yyErrlab
					else
							-- Accepted or aborted.
					end
				when yyErrlab then
						-- Detect error.
					if yyerrstatus = 3 then
							-- If just tried and failed to reuse lookahead
							-- token after an error, discard it. Return
							-- failure if at end of input.
						if last_token <= yyEof then
							abort
						else
							debug ("GEYACC")
								std.error.put_string ("Discarding token ")
								std.error.put_integer (last_token)
								std.error.put_character ('%N')
							end
							yy_lookahead_needed := True
							yy_goto := yyErrhandle
						end
					else
						if yyerrstatus = 0 then
								-- If not already recovering from an error,
								-- report this error.
							error_count := error_count + 1
							yy_do_error_action (yystate)
						end
						yyerrstatus := 3
						yy_goto := yyErrhandle
					end
				when yyErrhandle then
						-- Handle error.
					yyn := yypact.item (yystate)
					if yyn = yyFlag then
						yy_goto := yyErrpop
					else
						yyn := yyn + yyTerror
						if
							(yyn < 0 or yyn > yyLast) or else
							yycheck.item (yyn) /= yyTerror
						then
							yy_goto := yyErrpop
						else
							yyn := yytable.item (yyn)
							if yyn < 0 then
								if yyn = yyFlag then
									yy_goto := yyErrpop
								else
									yyn := -yyn
									yy_goto := yyReduce
								end
							elseif yyn = 0 then
								yy_goto := yyErrpop
							elseif yyn = yyFinal then
								accept
							else
								yy_push_error_value
								yystate := yyn
								yy_goto := yyNewstate
							end
						end
					end
				when yyErrpop then
						-- Pop the current state because it cannot handle
						-- the error token.
					if yyssp = 0 then
						abort
					else
						yy_pop_last_value (yystate)
						yyssp := yyssp - 1
						yystate := yyss.item (yyssp)
						yy_goto := yyErrhandle
					end
				end
			end
			if yy_parsing_status /= yySuspended then
				yy_clear_all
			end
		rescue
			debug ("GEYACC")
				std.error.put_line ("Entering rescue clause of parser")
			end
			abort
			yy_clear_all
		end

end
