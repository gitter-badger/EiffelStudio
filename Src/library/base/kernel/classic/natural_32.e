indexing
	description: "Unsigned integer values coded on 32 bits."
	status: "See notice at end of class"
	date: "$Date$"
	revision: "$Revision$"

expanded class NATURAL_32 inherit

	NATURAL_32_REF

create
	default_create,
	make_from_reference

convert
	make_from_reference ({NATURAL_32_REF}),
	to_reference: {NATURAL_32_REF, NUMERIC, COMPARABLE, PART_COMPARABLE, HASHABLE, ANY},
	to_real_32: {REAL},
	to_real_64: {DOUBLE},
	to_integer_64: {INTEGER_64},
	to_natural_64: {NATURAL_64}

indexing

	library: "[
			EiffelBase: Library of reusable components for Eiffel.
			]"

	status: "[
			Copyright 1986-2001 Interactive Software Engineering (ISE).
			For ISE customers the original versions are an ISE product
			covered by the ISE Eiffel license and support agreements.
			]"

	license: "[
			EiffelBase may now be used by anyone as FREE SOFTWARE to
			develop any product, public-domain or commercial, without
			payment to ISE, under the terms of the ISE Free Eiffel Library
			License (IFELL) at http://eiffel.com/products/base/license.html.
			]"

	source: "[
			Interactive Software Engineering Inc.
			ISE Building
			360 Storke Road, Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Electronic mail <info@eiffel.com>
			Customer support http://support.eiffel.com
			]"

	info: "[
			For latest info see award-winning pages: http://eiffel.com
			]"

end
