#ifndef __PE_WRITER_H_
#define __PE_WRITER_H_

#include "eif_eiffel.h"
#include <windows.h>

#ifdef __cplusplus
extern "C" {
#endif

extern void com_initialize ();
extern EIF_POINTER new_fusion_support ();
extern EIF_POINTER c_get_gac_assemblies (EIF_POINTER);
extern EIF_BOOLEAN c_signed (EIF_POINTER , EIF_POINTER);
extern EIF_POINTER c_get_assembly_info_from_assembly (EIF_POINTER, EIF_POINTER);
extern EIF_POINTER c_ith (EIF_POINTER, EIF_INTEGER);
extern EIF_INTEGER c_count (EIF_POINTER);
extern EIF_INTEGER c_name (EIF_POINTER, EIF_POINTER);
extern EIF_INTEGER c_version (EIF_POINTER, EIF_POINTER);
extern EIF_INTEGER c_culture (EIF_POINTER, EIF_POINTER);
extern EIF_INTEGER c_public_key_token (EIF_POINTER, EIF_POINTER);
extern EIF_POINTER new_md_dispenser ();
extern EIF_POINTER c_define_scope_for_md_emit (EIF_POINTER);
extern EIF_POINTER c_query_assembly_emit (EIF_POINTER);
extern EIF_POINTER new_sym_writer ();


typedef struct _CLI_IMPORT_TABLE {
	DWORD ImportLookupTable;// RVA to ImportLookupTable
	DWORD TimeDateStamp;	// 0
	DWORD ForwarderChain;	// 0
	DWORD NameRVA;			// RVA to null terminated ASCII string "mscoree.dll"
	DWORD IatRVA;			// RVA to IAT
	BYTE Padding1 [20];		// Filled with 0
	DWORD ImportByNameRVA;	// RVA to null terminated ASCII string "_CorDllMain" or "_CorExeMain"
	BYTE Padding3 [6];
	char EntryPointName [12];
	char LibraryName [12];
} CLI_IMPORT_TABLE;

typedef struct _CLI_IMPORT_ADDRESS_TABLE {
	DWORD ImportByNameRVA;	// RVA to ImportByName table.
	BYTE Padding [4];
} CLI_IMPORT_ADDRESS_TABLE;

typedef struct _CLI_IMAGE_RELOCATION {
	DWORD BlockRVA;		// RVA of section in which fixup needs to be applied.
	DWORD BlockSize;	// 0x0C
	WORD Fixup;			// Fixup location from `BlockRVA'.
	BYTE Padding [2];
} CLI_IMAGE_RELOCATION;

typedef struct _CLI_ENTRY {
	BYTE Padding [2];
	BYTE JumpInstH;		// 0xFF
	BYTE JumpInstL;		// 0x25
	DWORD IAT_RVA;		// RVA to IAT
} CLI_ENTRY;

#ifdef __cplusplus
}
#endif

#endif
