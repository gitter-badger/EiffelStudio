/*-----------------------------------------------------------
Eiffel language compiler library. Help file: 
-----------------------------------------------------------*/

#ifndef __ECOM_EIFFELCOMCOMPILER_CEIFFELCOMPLETIONINFO_H__
#define __ECOM_EIFFELCOMCOMPILER_CEIFFELCOMPLETIONINFO_H__
#ifdef __cplusplus
extern "C" {


namespace ecom_EiffelComCompiler
{
class CEiffelCompletionInfo;
}

}
#endif

#include "eif_com.h"

#include "eif_eiffel.h"

#include "ecom_EiffelComCompiler_IEiffelCompletionInfo.h"

#include "ecom_EiffelComCompiler_IEiffelFeatureDescriptor.h"

#include "ecom_grt_globals_ISE_c.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
extern "C" {
namespace ecom_EiffelComCompiler
{
class CEiffelCompletionInfo
{
public:
	CEiffelCompletionInfo (IUnknown * a_pointer);
	virtual ~CEiffelCompletionInfo ();

	/*-----------------------------------------------------------
	Add a local variable used for solving member completion list
	-----------------------------------------------------------*/
	void ccom_add_local(  /* [in] */ EIF_OBJECT bstr_name,  /* [in] */ EIF_OBJECT bstr_type );


	/*-----------------------------------------------------------
	Add an argument used for solving member completion list
	-----------------------------------------------------------*/
	void ccom_add_argument(  /* [in] */ EIF_OBJECT bstr_name,  /* [in] */ EIF_OBJECT bstr_type );


	/*-----------------------------------------------------------
	Features accessible from target.
	-----------------------------------------------------------*/
	void ccom_target_features(  /* [in] */ EIF_OBJECT bstr_target,  /* [in] */ EIF_OBJECT bstr_feature_name,  /* [in] */ EIF_OBJECT bstr_file_name,  /* [out] */ VARIANT * pvar_names,  /* [out] */ VARIANT * pvar_signatures,  /* [out] */ VARIANT * pvar_image_indexes );


	/*-----------------------------------------------------------
	Feature information
	-----------------------------------------------------------*/
	EIF_REFERENCE ccom_target_feature(  /* [in] */ EIF_OBJECT bstr_target,  /* [in] */ EIF_OBJECT bstr_feature_name,  /* [in] */ EIF_OBJECT bstr_file_name );


	/*-----------------------------------------------------------
	Flush temporary completion features for a specific file
	-----------------------------------------------------------*/
	void ccom_flush_completion_features(  /* [in] */ EIF_OBJECT bstr_file_name );


	/*-----------------------------------------------------------
	Initialize a feature for completion without compiltation
	-----------------------------------------------------------*/
	void ccom_initialize_feature(  /* [in] */ EIF_OBJECT bstr_name,  /* [in] */ VARIANT * var_arguments,  /* [in] */ VARIANT * var_argument_types,  /* [in] */ EIF_OBJECT bstr_return_type,  /* [in] */ EIF_INTEGER ul_feature_type,  /* [in] */ EIF_OBJECT bstr_file_name );


	/*-----------------------------------------------------------
	IUnknown interface
	-----------------------------------------------------------*/
	EIF_POINTER ccom_item();



protected:


private:
	/*-----------------------------------------------------------
	Interface pointer
	-----------------------------------------------------------*/
	ecom_EiffelComCompiler::IEiffelCompletionInfo * p_IEiffelCompletionInfo;


	/*-----------------------------------------------------------
	Default IUnknown interface pointer
	-----------------------------------------------------------*/
	IUnknown * p_unknown;




};
}
}
#endif

#ifdef __cplusplus
}
#endif
#include "ecom_grt_globals_ISE_c.h"


#endif