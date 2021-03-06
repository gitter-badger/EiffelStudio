/**
 * This file has no copyright assigned and is placed in the Public Domain.
 * This file is part of the w64 mingw-runtime package.
 * No warranty is given; refer to the file DISCLAIMER.PD within this package.
 */
#ifndef _SMX_H_
#define _SMX_H_

#define MENU_TEXT_LEN 50

#define SME_VERSION 0

#define SM_GETSELCOUNT (WM_USER + 1000)
#define SM_GETSERVERSELA (WM_USER + 1001)
#define SM_GETSERVERSELW (WM_USER + 1002)
#define SM_GETCURFOCUSA (WM_USER + 1003)
#define SM_GETCURFOCUSW (WM_USER + 1004)
#define SM_GETOPTIONS (WM_USER + 1005)

#ifdef UNICODE
#define SM_GETSERVERSEL SM_GETSERVERSELW
#define SM_GETCURFOCUS SM_GETCURFOCUSW
#else
#define SM_GETSERVERSEL SM_GETSERVERSELA
#define SM_GETCURFOCUS SM_GETCURFOCUSA
#endif

typedef struct _SMS_LOADMENUA {
  DWORD dwVersion;
  CHAR szMenuName[MENU_TEXT_LEN + 1];
  HMENU hMenu;
  CHAR szHelpFileName[MAX_PATH];
  DWORD dwServerType;
  DWORD dwMenuDelta;
} SMS_LOADMENUA,*PSMS_LOADMENUA;

typedef struct _SMS_LOADMENUW {
  DWORD dwVersion;
  WCHAR szMenuName[MENU_TEXT_LEN + 1];
  HMENU hMenu;
  WCHAR szHelpFileName[MAX_PATH];
  DWORD dwServerType;
  DWORD dwMenuDelta;
} SMS_LOADMENUW,*PSMS_LOADMENUW;

#ifdef UNICODE
#define SMS_LOADMENU SMS_LOADMENUW
#define PSMS_LOADMENU PSMS_LOADMENUW
#else
#define SMS_LOADMENU SMS_LOADMENUA
#define PSMS_LOADMENU PSMS_LOADMENUA
#endif

typedef struct _SMS_GETSERVERSELA {
  CHAR szServerName[MAX_PATH];
  DWORD dwServerType;
} SMS_GETSERVERSELA,*PSMS_GETSERVERSELA;

typedef struct _SMS_GETSERVERSELW {
  WCHAR szServerName[MAX_PATH];
  DWORD dwServerType;

} SMS_GETSERVERSELW,*PSMS_GETSERVERSELW;

#ifdef UNICODE
#define SMS_GETSERVERSEL SMS_GETSERVERSELW
#define PSMS_GETSERVERSEL PSMS_GETSERVERSELW
#else
#define SMS_GETSERVERSEL SMS_GETSERVERSELA
#define PSMS_GETSERVERSEL PSMS_GETSERVERSELA
#endif

typedef struct _SMS_GETSELCOUNT {
  DWORD dwItems;
} SMS_GETSELCOUNT,*PSMS_GETSELCOUNT;

#define SM_FOCUS_TYPE_NT_DOMAIN 1
#define SM_FOCUS_TYPE_LM_DOMAIN 2
#define SM_FOCUS_TYPE_UNKNOWN_DOMAIN 3
#define SM_FOCUS_TYPE_NT_SERVER 4
#define SM_FOCUS_TYPE_LM_SERVER 5
#define SM_FOCUS_TYPE_WFW_SERVER 6
#define SM_FOCUS_TYPE_UNKNOWN_SERVER 7

typedef struct _SMS_GETCURFOCUSA {
  CHAR szFocus[MAX_PATH];
  DWORD dwFocusType;
} SMS_GETCURFOCUSA,*PSMS_GETCURFOCUSA;

typedef struct _SMS_GETCURFOCUSW {
  WCHAR szFocus[MAX_PATH];
  DWORD dwFocusType;
} SMS_GETCURFOCUSW,*PSMS_GETCURFOCUSW;

#ifdef UNICODE
#define SMS_GETCURFOCUS SMS_GETCURFOCUSW
#define PSMS_GETCURFOCUS PSMS_GETCURFOCUSW
#else
#define SMS_GETCURFOCUS SMS_GETCURFOCUSA
#define PSMS_GETCURFOCUS PSMS_GETCURFOCUSA
#endif

typedef struct _SMS_GETOPTIONS {
  WINBOOL fSaveSettingsOnExit;
  WINBOOL fConfirmation;
} SMS_GETOPTIONS,*PSMS_GETOPTIONS;

typedef struct _SMS_VALIDATEA {
  const CHAR *pszServer;
  CHAR *pszType;
  CHAR *pszComment;
} SMS_VALIDATEA,*PSMS_VALIDATEA;

typedef struct _SMS_VALIDATEW {
  const WCHAR *pszServer;
  WCHAR *pszType;
  WCHAR *pszComment;

} SMS_VALIDATEW,*PSMS_VALIDATEW;

#ifdef UNICODE
#define SMS_VALIDATE SMS_VALIDATEW
#define PSMS_VALIDATE PSMS_VALIDATEW
#else
#define SMS_VALIDATE SMS_VALIDATEA
#define PSMS_VALIDATE PSMS_VALIDATEA
#endif

#define SZ_SME_UNLOADMENU "SMEUnloadMenu"
#define SZ_SME_INITIALIZEMENU "SMEInitializeMenu"
#define SZ_SME_REFRESH "SMERefresh"
#define SZ_SME_MENUACTION "SMEMenuAction"
#define SZ_SME_LOADMENUW "SMELoadMenuW"
#define SZ_SME_GETEXTENDEDERRORSTRINGW "SMEGetExtendedErrorStringW"
#define SZ_SME_VALIDATEW "SMEValidateW"
#define SZ_SME_LOADMENUA "SMELoadMenuA"
#define SZ_SME_GETEXTENDEDERRORSTRINGA "SMEGetExtendedErrorStringA"
#define SZ_SME_VALIDATEA "SMEValidateA"

#ifdef UNICODE
#define SZ_SME_LOADMENU SZ_SME_LOADMENUW
#define SZ_SME_GETEXTENDEDERRORSTRING SZ_SME_GETEXTENDEDERRORSTRINGW
#define SZ_SME_VALIDATE SZ_SME_VALIDATEW
#else
#define SZ_SME_LOADMENU SZ_SME_LOADMENUA
#define SZ_SME_GETEXTENDEDERRORSTRING SZ_SME_GETEXTENDEDERRORSTRINGA
#define SZ_SME_VALIDATE SZ_SME_VALIDATEA
#endif

typedef DWORD (WINAPI *PSMX_LOADMENU)(HWND hWnd,PSMS_LOADMENU psmsload);
typedef LPTSTR (WINAPI *PSMX_GETEXTENDEDERRORSTRING)(VOID);
typedef VOID (WINAPI *PSMX_UNLOADMENU)(VOID);
typedef VOID (WINAPI *PSMX_INITIALIZEMENU)(VOID);
typedef VOID (WINAPI *PSMX_REFRESH)(HWND hwndParent);
typedef VOID (WINAPI *PSMX_MENUACTION)(HWND hwndParent,DWORD dwEventId);
typedef WINBOOL (WINAPI *PSMX_VALIDATE)(PSMS_VALIDATE psmsvalidate);

DWORD WINAPI SMELoadMenuA(HWND hWnd,PSMS_LOADMENUA psmsload);
DWORD WINAPI SMELoadMenuW(HWND hWnd,PSMS_LOADMENUW psmsload);
LPSTR WINAPI SMEGetExtendedErrorStringA(VOID);
LPWSTR WINAPI SMEGetExtendedErrorStringW(VOID);
VOID WINAPI SMEUnloadMenu(VOID);
VOID WINAPI SMEInitializeMenu(VOID);
VOID WINAPI SMERefresh(HWND hwndParent);
VOID WINAPI SMEMenuAction(HWND hwndParent,DWORD dwEventId);
WINBOOL WINAPI SMEValidateA(PSMS_VALIDATEA psmsValidate);
WINBOOL WINAPI SMEValidateW(PSMS_VALIDATEW psmsValidate);

#endif
