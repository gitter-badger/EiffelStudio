#ifndef _rt_gen_types_h_
#define _rt_gen_types_h_

#include "eif_eiffel.h"

#ifdef __cplusplus
extern "C" {
#endif

/*------------------------------------------------------------------*/
/* Constant values for special type                                 */
/* You must also update SHARED_GEN_CONF_LEVEL after adding          */
/* new codes!!                                                      */
/*------------------------------------------------------------------*/

#define TERMINATOR			-1
#define CHARACTER_TYPE		-2
#define BOOLEAN_TYPE		-3
#define INTEGER_TYPE		-4
#define REAL_TYPE			-5
#define DOUBLE_TYPE			-6
#define BIT_TYPE			-7
#define POINTER_TYPE		-8
#define NONE_TYPE			-9
#define INTERNAL_TYPE		-10
#define LIKE_ARG_TYPE		-11
#define LIKE_CURRENT_TYPE	-12
#define LIKE_PFEATURE_TYPE	-13
#define LIKE_FEATURE_TYPE	-14
#define TUPLE_TYPE			-15
#define INTEGER_8_TYPE		-16
#define INTEGER_16_TYPE		-17
#define INTEGER_64_TYPE		-18
#define WIDE_CHAR_TYPE		-19
/* Add new types here
   ...
   until here.
*/
#define FORMAL_TYPE			-32
#define EXPANDED_LEVEL		-256

/*------------------------------------------------------------------*/
/* One character codes for the basic types and one ('r') for all the*/
/* others. Make sure to assign different letters to new basic types.*/
/* You must update 'rout_obj.c' after adding new codes!!!           */
/* You must also update ROUTINE class after adding new codes!!      */
/*------------------------------------------------------------------*/

#define EIF_BOOLEAN_CODE	'b'
#define EIF_CHARACTER_CODE	'c'
#define EIF_DOUBLE_CODE		'd'
#define EIF_REAL_CODE		'f'
#define EIF_INTEGER_CODE	'i'
#define EIF_INTEGER_32_CODE	'i'
#define EIF_POINTER_CODE	'p'
#define EIF_REFERENCE_CODE	'r'
#define EIF_INTEGER_8_CODE	'j'
#define EIF_INTEGER_16_CODE	'k'
#define EIF_INTEGER_64_CODE	'l'
#define EIF_WIDE_CHAR_CODE	'u'

/*------------------------------------------------------------------*/

extern char *eif_typename (int16);
extern int  eif_typename_len (int16);
extern int eif_gen_count_with_dftype (int16 dftype);
extern char eif_gen_typecode_with_dftype (int16 dftype, int pos);

#ifdef __cplusplus
}
#endif

#endif

