/*

	Externals for classes PATH_NAME, DIRECTORY_NAME and FILE_NAME,
	platform independent manipulation of path names

*/

#include "config.h"
#include "portable.h"

#ifdef EIF_WINDOWS
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#endif

#include <stdlib.h>			/* For getenv */

#include <sys/types.h>
#include <sys/stat.h>

#ifdef I_STRING
#include <string.h>
#else
#include <strings.h>
#endif

#include "macros.h"
#include "plug.h"
#include "eiffel.h"			/* For Windows and OS2 */

#if defined EIF_WINDOWS || defined EIF_OS2
EIF_BOOLEAN c_is_file_valid (EIF_POINTER);
EIF_BOOLEAN c_is_directory_name_valid (EIF_POINTER);
EIF_BOOLEAN c_is_volume_name_valid (EIF_POINTER);
#endif

/* Validity */

EIF_BOOLEAN c_is_directory_valid(p)
EIF_POINTER p;
{
		/* Test to see if `p' is a well constructed directory path */
#if defined EIF_WINDOWS || defined EIF_OS2
	char *s, *c;
	int i, len, last_bslash;

	len = strlen (p);
	s = (char *) malloc (len + 1);
	strcpy (s, p);
	c = s + len - 1;
	last_bslash = 0;
	for (i = len;i >= 0; i--, c--)
		if (*c == '\\')
			if (strlen(c+1) && !c_is_directory_name_valid (c+1))
				return EIF_FALSE;
			else
				if (last_bslash -1 != i)
					{
					*c = '\0';
					last_bslash = i;
					}
				else
					return EIF_FALSE; /* two \ is a row */
		else 
			if (*c == ':')
				/* Form a:xyz\def  or a:\xyz\def */
				if ((strlen (c+1)) && (!c_is_directory_name_valid (c+1)))
					/* Form a:xyz  where xyz is invalid */
					return EIF_FALSE;
				else
					/* Form a:\xyz or a: - currently as a:*/
					{
					* (c+1) = '\0';
					return c_is_volume_name_valid (s);
					}
			else
				;
					
	/* 	Did we start with an \ ? If so s is empty other wise it is a relative path */
	if (strlen(s))
		if (c_is_directory_name_valid (s))
			return EIF_TRUE;
		else
			return EIF_FALSE;	
	else			
		return EIF_TRUE;

	/* We don't get here but */
	return EIF_FALSE;
#elif defined (__VMS)
	/* first check to see if p includes a ] */
	/* in fact, the last character should be ] */
	if ( p[strlen(p)-1] != ']')		/* end with ] */
		return EIF_FALSE;
	if ( strchr( (char *)p,'[') == NULL)	/* has a opening bracket */
		return EIF_FALSE;
	if ( strchr( (char *)p,'/') != NULL)	/* no slash allowed */
		return EIF_FALSE;
	return EIF_TRUE;
#else
	return EIF_TRUE;
#endif
}

EIF_BOOLEAN c_is_volume_name_valid (p)
EIF_POINTER p;
{
#ifdef __WINDOWS_386__
	int drive;
		/* Test to see if `p' is a valid volume name */
	if (p)
		if ((strlen (p) == 2) && (*(p+1) == ':'))
			{
			drive = toupper(* (char *) p) - 'A';
			if ((drive >= 0) && (drive <= 26))
				return (EIF_BOOLEAN) (GetDriveType (drive) != 0);
			}			
	return EIF_FALSE;
#elif defined (EIF_WIN32)
	char rootpath[4];
		/* Test to see if `p' is a valid volume name */
	if (p)
		if ((strlen (p) == 2) && (*(p+1) == ':'))
			{
			strcpy (rootpath, p);
			rootpath[2] = '\\';
			rootpath [3] = '\0';
			return (EIF_BOOLEAN) (GetDriveType (rootpath) != 1);
			}
	return EIF_FALSE;
#elif defined EIF_OS2
	return EIF_TRUE;
#else
	return EIF_FALSE;
#endif
}

EIF_BOOLEAN c_is_file_name_valid (p)
EIF_POINTER p;
{
#if defined EIF_WINDOWS || defined EIF_OS2
#ifdef EIF_WIN_3_1
#define MAX_FILE_LEN 12
#else
#define MAX_FILE_LEN 256
#endif

		/* Test to see if `p' is a valid file name (no directory part) */
	int dot, len, i;
	char * s, valid [] = "_^$~!#%&-{}@'`()";

	if ((p == NULL) || ((len = strlen (p)) == 0) || (len > MAX_FILE_LEN) )
		return EIF_FALSE;

#ifdef EIF_WIN_3_1
	dot = 0;
	for (i = 0, s = p; i < len; i++, s++)
		if (*s == '.')
			{
			if ((i > 0) && (len - i) <= 4)
				if (dot == 0)
					dot = i;
				else
					return EIF_FALSE;
			else
				return EIF_FALSE;
			}
		else
			if (!isprint (*s))
				return EIF_FALSE;
			else
				if ( (!isalnum (*s)) && (strchr (valid, *s) == 0) )
					return EIF_FALSE;

	if ((dot == 0) && (len > 8))
		return EIF_FALSE;
#else
	for (s = p; *s; s++)
		if ((*s == '\\') ||
			(*s == '*') ||
			(*s == '?') ||
			(*s == ':')) 
				return EIF_FALSE;
#endif
				
	return EIF_TRUE;
#else
	return EIF_TRUE;
#endif
}

EIF_BOOLEAN c_is_extension_valid (p)
EIF_POINTER p;
{
		/* Test to see if `p' is a valid extension */
#if defined EIF_WINDOWS || defined EIF_OS2
#ifdef EIF_WIN_3_1
	if ((p == NULL) || (strlen(p) > 3) || (strchr (p, '.') != 0) )
		return EIF_FALSE;
#else
	if ((p == NULL) || (strlen (p) > 254))
		return EIF_FALSE;
#endif

	return c_is_file_name_valid (p);
#else
	return EIF_TRUE;
#endif
}

EIF_BOOLEAN c_is_file_valid (p)
EIF_POINTER p;
{
		/* Test to see if `p' is a well constructed file name (with directory part) */
#if defined EIF_WINDOWS || defined EIF_OS2
	char *s, *c;
	int i, len;

	len = strlen (p);
	s = (char *) malloc (len + 1);
	strcpy (s, p);
	c = s + len -1;
	for (i = len; i >= 0; i --, c--)
		if (*c == '\\')
			{
			*c = '\0';
			break;
			}
	if (!c_is_file_name_valid (c+1))
		return EIF_FALSE;
	return c_is_directory_valid (s);
#else
	return EIF_TRUE;
#endif
}

EIF_BOOLEAN c_is_directory_name_valid (p)
EIF_POINTER p;
{
		/* Test to see if `p' is a valid directory name (no parent directory part) */
#if defined EIF_WINDOWS || defined EIF_OS2
	return c_is_file_name_valid (p);
#elif defined (__VMS)
	/* For VMS, allow  "subdir" or  "[.subdir]" or "dev:[sub.subdir]" */
	if ( strchr( (char *)p,'[') != NULL) /* if it has a [ ... */
		if ( p[strlen(p)-1] != ']')	/* ... end with ] */
			return EIF_FALSE;
	if ( strchr( (char *)p,'/') != NULL)	/* no slash allowed */
		return EIF_FALSE;
	return EIF_TRUE;
#else
	return EIF_TRUE;
#endif
}

/* Concatenation */

void c_append_directory(string, p, v)
EIF_REFERENCE string;
EIF_POINTER p;
EIF_POINTER v;
{
		/* If the path is not empty, include a separator */
		/* Otherwise, it will just be a relative path name */
#ifdef __VMS
	char	vcopy[PATH_MAX];

        /* ASSUMING P & V ARE VALID DIRECTORY & SUBDIR AND IN VMS FORMAT */
	if (p == NULL)	{	/* if p is empty, just return what's in v */
		strcpy(p,v);
		}
        /* allowable forms for v are [.subdir] or subdir */
        /* make [p] look like [p. */
        p[strlen((char *)p)-1]='.'; /* change ] to .*/
        /* make v or [.v] look like v] */
        /* don't mess with v, use a copy */
        strcpy(vcopy,v);
        if (v[0]!='[')  {               /* just looks like v */
                strcat( (char *)vcopy,"]");
                }
        else    {       /* change [.v] to v] */
                strcpy((char *)vcopy,(char *)v[2]);
                }
        /* now concat [p. and v] to get [p.v] */
        strcat( (char *)p, (char *)vcopy);
        (eif_strset)(string, strlen ((char *)p));
#else	/* not vms */
	if (*((char *)p) != '\0')
#if defined EIF_WINDOWS || defined EIF_OS2
		strcat ((char *)p, "\\");
#else
		strcat ((char *)p, "/");
#endif

	strcat ((char *)p, (char *)v);
	(eif_strset)(string, strlen ((char *)p));
#endif
}

void  c_set_directory(string, p, v)
EIF_REFERENCE string;
EIF_POINTER p;
EIF_POINTER v;
{
		/* Set the absolute part of the path name */
#ifdef __VMS
	strcat ((char *)p,"[");
	strcat ((char *)p, (char *)v);
	strcat ((char *)p,"]");
	(eif_strset)(string, strlen ((char *)p));
#else
#if defined EIF_WINDOWS || defined EIF_OS2
	strcat ((char *)p, "\\");
#else
	strcat ((char *)p, "/");
#endif
	strcat ((char *)p, (char *)v);
	(eif_strset)(string, strlen ((char *)p));
#endif
}

void  c_append_file_name(string, p, v)
EIF_REFERENCE string;
EIF_POINTER p;
EIF_POINTER v;
{
		/* Append the file name part in the path name */
	if (*((char *)p) == '\0'){
		strcat ((char *)p, (char *)v);
	} else {
#if defined EIF_WINDOWS || defined EIF_OS2
		strcat ((char *)p, "\\");
#elif !defined (__VMS)		/* no separator for vms */
		strcat ((char *)p, "/");
#endif
		strcat ((char *)p, (char *)v);
	}

	(eif_strset)(string, strlen ((char *)p));
}

EIF_BOOLEAN eif_case_sensitive_path_names()
{
		/* Are path names case sensitive? */
#if defined EIF_WINDOWS || defined EIF_OS2
	return EIF_FALSE;
#elif defined (__VMS)
	return EIF_FALSE;
#else
	return EIF_TRUE;
#endif
}

EIF_REFERENCE eif_current_dir_representation()
{
		/* String representation of Current directory */
#ifdef __VMS
	return RTMS("[]");
#else
	return RTMS(".");
#endif
}

EIF_BOOLEAN eif_home_dir_supported()
{
		/* Is the notion of $HOME supported */
#ifdef EIF_WIN_31
	return EIF_FALSE;
#else
	return EIF_TRUE;
#endif
}

EIF_BOOLEAN eif_root_dir_supported()
{
		/* Is the notion of root directory supported */
	return EIF_TRUE;
}

EIF_REFERENCE eif_home_directory_name()
{
		/* String representation of $HOME */
#ifdef EIF_WIN_31
	return NULL;
#elif defined (__VMS)
	return RTMS(getenv("SYS$LOGIN"));
#else
	return RTMS(getenv("HOME"));
#endif
}

EIF_REFERENCE eif_root_directory_name()
{
		/* String representation of the root directory */
#if defined EIF_WINDOWS || defined EIF_OS2
	return RTMS("\\");
#elif defined (__VMS)
	return RTMS("[000000]");
#else
	return RTMS("/");
#endif
}


