#include "config.h"
#include "macros.h"
#include "malloc.h"
#include "garcol.h"
#include "struct.h"
#include "hashin.h"
#include "except.h"
#include "wbench.h"
#include "interp.h"
#include "plug.h"
#include "project.h"			/* for tabinit() */

#include "cecil.h"
#include "hector.h"
#include "tools.h"
#include "eiffel.h"			  

/* this is just a sample case_procerss procedure which is used for current 
 * testing. Concurrent Eiffel Compiler should generate codes for the 
 * late part(in "default" clause of "switch").
*/

#define is_sep_obj(ref) eif_type_id("SEP_OBJ")==Dtype(ref)

/*#define DEBUG 3/**/
#define dprintf(n)	if (DEBUG & n) printf

rt_private int locate_from_cecil(object, name)
char *object;
char *name;
{
	/* Locate the attribute 'name' in the specified object and return the index
	 * in the cn_offsets array, or -1 if there is no such attribute.
	 */
 
	struct cnode *sk;			   /* Skeleton entry in system */
	char **n;					   /* Pointer in cn_names array */
	int nb_attr;					/* Number of attributes */
	int i;
 
	if (object == (char *) 0)	   /* Null pointer */
		return -1;				  /* Differ the bus error */
 
	sk = &System(Dtype(object));	/* Fetch skeleton entry */
	nb_attr = sk->cn_nbattr;		/* Number of attributes */
 
	/* The lookup to find the attribute is done in a linear way. This makes the
	 * access to an attribute slower, by comparaison with a routine call. It is
	 * however possible to bypass Cecil if the object location does not move,
	 * by calling eifaddr() directly and storing the address somewhere. Then
	 * use the C de-referencing mechanism (non-portable accross Eiffel compilers
	 * of course, as ETL does not mention eifaddr)--RAM.
	 */
 
	for (i = 0, n = sk->cn_names; i < nb_attr; i++, n++)
		if (0 == strcmp(name, *n))
			break;				  /* Attribute was found */
 
	if (i == nb_attr)			   /* Attribute not found */
		return -1;				  /* Will certainly raise a bus error */
 
	return i;		   /* Index in the attribute array */
}

void separate_call() {

	EIF_INTEGER ack=_concur_command_ack;
	char *(*fptr)();
	fnptr sep_call;
	int32 pat_id;
	int is_extern = 0;

	int static_type; 	/* Can be removed */
	int dyn_type;
	int32 *feature_ptr;
	int32 rout_id;
	uint16 body_index;
	uint32 body_id;
	int type; 		/* the type of the attribute if its is */
	long offset;	/* the offset of the attribute in the object(if it is) */

	int32 *cn_routids;
	struct ctable *ptr_table;			/* H table holding function pointers */

	switch (_concur_command) {
		case constant_register:
#ifdef DISP_LIST
			printf("%d Before Register(on %s from <%s, %d, %d>):\n", _concur_pid, _concur_class_name_of_root_obj, CURGS(0), CURGI(1), CURGI(2));
			print_ref_table_and_exported_object();
#endif
			register_a_ref(_concur_paras[2].uval.int_val, !_concur_current_client_reserved);
#ifdef DISP_LIST
			printf("%d After Register(%s)\n", _concur_pid,_concur_class_name_of_root_obj);
			print_ref_table_and_exported_object();
#endif
			break;
		case constant_unregister:
#ifdef DISP_LIST
			printf("%d Begore UnRegister(on %s from <%s, %d, %d>):\n", _concur_pid, _concur_class_name_of_root_obj, c_get_name_from_addr(_concur_current_client->hostaddr), _concur_current_client->pid, CURGI(0));
			print_ref_table_and_exported_object();
#endif
			unregister(constant_release_one, _concur_paras[0].uval.int_val);
#ifdef DISP_LIST
			printf("%d After UnRegister(on %s)\n", _concur_pid, _concur_class_name_of_root_obj);
			print_ref_table_and_exported_object();
#endif
			break;
		case constant_release:
#ifdef DISP_LIST
			printf("%d Before Release(on %s from <%s, %d>):\n", _concur_pid, _concur_class_name_of_root_obj, c_get_name_from_addr(_concur_current_client->hostaddr), _concur_current_client->pid);
			print_ref_table_and_exported_object();
#endif
			unregister(constant_release_all, constant_not_defined);
#ifdef DISP_LIST
			printf("%d After Release(on %s)\n", _concur_pid, _concur_class_name_of_root_obj);
			print_ref_table_and_exported_object();
#endif
			break;
		case constant_reserve:
#ifdef DISP_LIST
			printf("%d Before Reserve(on %s from <%s, %d>):\n", _concur_pid, _concur_class_name_of_root_obj, c_get_name_from_addr(_concur_current_client->hostaddr), _concur_current_client->pid);
			print_ref_table_and_exported_object();
#endif
			_concur_current_client_reserved = 1;
			_concur_command = constant_reserve_ack;
			_concur_para_num = 0;
			send_command(_concur_current_client->sock);
			(_concur_current_client->reservation)++;
#ifdef DISP_LIST
			printf("%d After Reserve(on %s from <%s, %d>):\n", _concur_pid, _concur_class_name_of_root_obj, c_get_name_from_addr(_concur_current_client->hostaddr), _concur_current_client->pid);
			print_ref_table_and_exported_object();
#endif
			break;
		case constant_end_of_request:
#ifdef DISP_LIST
			printf("%d Before Free(on %s from <%s, %d>):\n", _concur_pid, _concur_class_name_of_root_obj, c_get_name_from_addr(_concur_current_client->hostaddr), _concur_current_client->pid);
			print_ref_table_and_exported_object();
#endif
			(_concur_current_client->reservation)--;
			if (!_concur_current_client->reservation) {
			/* Process multi-reservations: in the case, the last reservation is
			 * freed.
			*/
				adjust_exported_objects(_concur_current_client->hostaddr, _concur_current_client->pid);
				add_to_client_queue(_concur_current_client);
				_concur_current_client_reserved = 0;
				_concur_current_client = NULL;
			}
#ifdef DISP_LIST
			printf("%d After Free(on %s)\n", _concur_pid, _concur_class_name_of_root_obj);
			print_ref_table_and_exported_object();
#endif
			break;
		default:
#ifdef DISP_MSG
		printf("* %d(%s) Now to perform separate call `%s'(%s)\n", _concur_pid, _concur_class_name_of_root_obj, _concur_command_feature, command_text(_concur_command));
#endif
			if (_concur_command < 0) {
				add_nl;
				sprintf(crash_info, CURERR13, command_text(_concur_command));
				c_raise_concur_exception(exception_implementation_error);
			}
			sprintf(_concur_crash_info, CURERR14, _concur_command_feature, _concur_command_class);
			dyn_type = Dtype(CUROBJ);
			static_type = eif_type_id(_concur_command_class); 	/* Can be removed */
#ifdef DEBUG
printf("%d(%s) Got feature <%s> on class <%s>, with static_type %d, dyn_type %d\n", _concur_pid, _concur_class_name_of_root_obj, _concur_command_feature, _concur_command_class, static_type, dyn_type);
#endif
			ptr_table = &(Cecil(dyn_type));		/* Get associated H table */
#ifdef DEBUG
printf("%d(%s) ptr_table=%x of feature <%s> on class <%s>\n", _concur_pid, _concur_class_name_of_root_obj, ptr_table, _concur_command_feature, _concur_command_class);
#endif
			is_extern = 0; /* It should be determined by the info transferred from caller, 
							* or in some other way. 
							*/
			if (_concur_command_ack == constant_attribute) {/* It's an attribute */
				/* return the attribute's value */
				is_extern = locate_from_cecil(CUROBJ, _concur_command_feature);	/* Locate attribute in skelton */
				if (is_extern == -1) {				/* Attribute is not found */
				/* the check is not necessary, because Eiffel Compiler should guarantee it */
					add_nl;
					sprintf(crash_info, CURERR15, _concur_command_feature, _concur_command_class);	
					c_raise_concur_exception(exception_invalid_parameter);
				}
#ifndef WORKBENCH
				offset = *((long *)System(dyn_type).cn_offsets[is_extern]);	
#else
				rout_id = System(dyn_type).cn_attr[is_extern];
				CAttrOffs(offset,rout_id,dyn_type);
#endif
#ifdef DEBUG
dprintf(1)("%d(%s) Got Attrib offset %ld\n", _concur_pid, _concur_class_name_of_root_obj, offset);
#endif
				type = System(dyn_type).cn_types[is_extern] & SK_HEAD;
#ifdef DEBUG
dprintf(1)("%d(%s) Got Attrib type 0x%x with rout_id %d\n", _concur_pid, _concur_class_name_of_root_obj, type, rout_id);
#endif
				switch (type) {
					case SK_POINTER:
						CURSQRP(*((EIF_POINTER *)(CUROBJ+offset))); break;
					case SK_BOOL:
						CURSQRB(*((EIF_BOOLEAN *)(CUROBJ+offset))); break;
					case SK_CHAR:
						CURSQRC(*((EIF_CHARACTER *)(CUROBJ+offset))); break;
					case SK_INT:
						CURSQRI(*((EIF_INTEGER *)(CUROBJ+offset))); break;
					case SK_FLOAT:
						CURSQRR(*((EIF_REAL *)(CUROBJ+offset))); break;
					case SK_DOUBLE:
						CURSQRD(*((EIF_DOUBLE *)(CUROBJ+offset))); break;
					case SK_REF:
						if (is_sep_obj(*((EIF_REFERENCE *)(CUROBJ+offset)))) {
							CURSQRSO(*((EIF_REFERENCE *)(CUROBJ+offset))); break;
						} else {
							CURSQRSO(CURLTS(*((EIF_REFERENCE *)(CUROBJ+offset)))); break;
						}
					case SK_BIT:
					case SK_EXP:
					default:
						add_nl;
						sprintf(crash_info, CURERR16, type);
						c_raise_concur_exception(exception_implementation_error);
				}
			} /* End of "ATTRIBUTE" */
			else {
				if (_concur_invariant_checked) 
					nstcall = 1;	/* The feature is not the creation feature, 
									 * so we check Invariant as we do in nested 
									 * feature call 
									 */
				else
					nstcall = 0;	/* The feature is the creation feature, 
									 * so we check Invariant when the feature is done. 
									 */
#ifndef WORKBENCH
				fptr = ct_value(ptr_table, _concur_command_feature);
				/* How to get the corresponding the entry in "separate_pattern" for the routine ?
				 * "body_id" can't be used any more.
				 */
#ifdef CANTUSED
				cn_routids = System(dyn_type).cn_routids;
				if (cn_routids)
					 rout_id = cn_routids[*feature_ptr];
				else /* precompiled routine */
					 rout_id = *feature_ptr;
				CBodyIdx(body_index,rout_id, dyn_type);/* Get the body index */
				body_id = dispatch[body_index];

				if (body_id < zeroc) {
					fptr =  frozen[body_id];                /* Frozen feature */
					sep_call = separate_pattern[FPatId(body_id)]; 
				}
				else 
#ifndef DLE
				{
					IC = melt[body_id];		/* Position byte code to interpret */
					fptr = pattern[MPatId(body_id)].toi;
					sep_call = separate_pattern[MPatId(body_id)]; 
				}
#else
				if (body_id < dle_level) {
					IC = melt[body_id]; 	/* Position byte code to interpret */
					fptr = pattern[MPatId(body_id)].toi;
					sep_call = separate_pattern[MPatId(body_id)]; 
				} else if (body_id < dle_zeroc) {
					fptr = dle_frozen[body_id]; /* Frozen feature in the DC-set */
					sep_call = separate_pattern[DLEFPatId(body_id)]; 
				} else {
					IC = dle_melt[body_id];	/* Position byte code to interpret */
					fptr = pattern[DLEMPatId(body_id)].toi;
					sep_call = separate_pattern[DLEMPatId(body_id)]; 
				}
#endif
#endif	/* CANTUSED */

#else  		/* WORKBENCH  for "FEATURE" */
				feature_ptr = (int32 *) ct_value(ptr_table, _concur_command_feature);
#ifdef DEBUG
dprintf(2)("%d(%s) Got feature ptr 0x%x\n", _concur_pid, _concur_class_name_of_root_obj, feature_ptr);
#endif
				cn_routids = System(dyn_type).cn_routids;
				if (cn_routids)
					 rout_id = cn_routids[*feature_ptr];
				else /* precompiled routine */
					 rout_id = *feature_ptr;
#ifdef DEBUG
dprintf(2)("%d(%s) Got rout_id %ld\n", _concur_pid, _concur_class_name_of_root_obj, rout_id);
#endif
				CBodyIdx(body_index,rout_id, dyn_type);/* Get the body index */
#ifdef DEBUG
dprintf(2)("%d(%s) Got feature's body_idx %d\n", _concur_pid, _concur_class_name_of_root_obj, body_index);
#endif
				body_id = dispatch[body_index];
#ifdef DEBUG
dprintf(2)("%d(%s) Got feature's body_id %d\n", _concur_pid, _concur_class_name_of_root_obj, body_id);
#endif
				if (body_id < zeroc) {
					fptr =  frozen[body_id]; 				/* Frozen feature */
#ifdef DEBUG
dprintf(2)("%d(%s) Got feature's FPatId = %d\n", _concur_pid, _concur_class_name_of_root_obj, FPatId(body_id));
#endif
					sep_call = separate_pattern[FPatId(body_id)]; 
				}
				else 
#ifndef DLE
				{
					IC = melt[body_id];	 				/* Position byte code to interpret */
#ifdef DEBUG
dprintf(2)("%d(%s) Got feature's PatId = %d\n", _concur_pid, _concur_class_name_of_root_obj, MPatId(body_id));
#endif
					fptr = pattern[MPatId(body_id)].toi;
					sep_call = separate_pattern[MPatId(body_id)]; 
				}
#else
				if (body_id < dle_level) {
					IC = melt[body_id]; 					/* Position byte code to interpret */
#ifdef DEBUG
dprintf(2)("%d(%s) Got feature's MPatId = %d(in dle)\n", _concur_pid, _concur_class_name_of_root_obj, MPatId(body_id));
#endif
					fptr = pattern[MPatId(body_id)].toi;
					sep_call = separate_pattern[MPatId(body_id)]; 
				} else if (body_id < dle_zeroc) {
#ifdef DEBUG
dprintf(2)("%d(%s) Got feature's DLEFPatId = %d(in dle)\n", _concur_pid, _concur_class_name_of_root_obj, DLEFPatId(body_id));
#endif
					fptr = dle_frozen[body_id];  			/* Frozen feature in the DC-set */
					sep_call = separate_pattern[DLEFPatId(body_id)]; 
				} else {
					IC = dle_melt[body_id]; 				/* Position byte code to interpret */
#ifdef DEBUG
dprintf(2)("%d(%s) Got feature's DLEMPatId = %d(in dle)\n", _concur_pid, _concur_class_name_of_root_obj, DLEMPatId(body_id));
#endif
					fptr = pattern[DLEMPatId(body_id)].toi;
					sep_call = separate_pattern[DLEMPatId(body_id)]; 
				}
#endif
#endif /* for WORKBENCH */

#ifdef DEBUG
dprintf(2)("%d(%s) Got feature's sep_call 0x%x, fptr 0x%x\n", _concur_pid, _concur_class_name_of_root_obj, sep_call, fptr);
#endif
				if (!fptr || !sep_call) {
					c_raise_concur_exception(exception_implementation_error);
				}
				(sep_call) (fptr, is_extern);
				if (!_concur_invariant_checked)	 {
					/* The feature is the creation feature and feature is done,  so we check 
					 * Invariant(if any) here, and tell system that the invariant has been  
					 * checked for the creation of the object. 
					 */
					_concur_invariant_checked = 1;
					RTCI(CUROBJ);
				}
			}	/* end of "FEATURE" */
#ifdef DISP_MSG
		printf("* %d(%s) Performed separate call.\n", _concur_pid, _concur_class_name_of_root_obj);
#endif
		_concur_crash_info[0] = '\0';
	}

	return;
}
