/*

  ####   ######  #       ######   ####    #####          #    #
 #       #       #       #       #    #     #            #    #
  ####   #####   #       #####   #          #            ######
      #  #       #       #       #          #     ###    #    #
 #    #  #       #       #       #    #     #     ###    #    #
  ####   ######  ######  ######   ####      #     ###    #    #

	Declarations for select functions.
*/

#ifndef _select_h_
#define _select_h_

#include "timehdr.h"

/* List of error number which may be reported by the select routines. This list
 * must be kept in sync with the error arrays.
 */
#define S_FDESC		1				/* Invalid file descriptor */
#define S_CALBAK	2				/* Invalid call back address */
#define S_CALSET	3				/* A callback is already set */
#define S_NOCALBAK	4				/* No callback was set */
#define S_SELECT	5				/* Select system call failed */
#define S_NOFILE	6				/* No more file to select on */

extern int s_errno;					/* Error number */

/* Function declarations */
extern int add_input(int fd, void (*call) (/* ??? */));		/* Add file descriptor input function */
extern void (*new_callback(int fd, void (*call) (/* ??? */)))(void);	/* Change call back for a given fd */
extern void (*rem_input(int fd))(void);		/* Remove input selection */
extern char *s_strerror(void);		/* Return description of last error */
extern char *s_strname(void);		/* Return symbolic name of last error */
extern int has_input(int fd);		/* Check whether file is still selected */
extern void clear_fd(int f);		/* Clear selection in select result mask */
extern int do_select(struct timeval *timeout);	/* Run the select system call */

#endif
