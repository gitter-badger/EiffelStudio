/*-----------------------------------------------------------
Implemented `IEnumParameter' Interface.
-----------------------------------------------------------*/

#ifndef __ECOM_EIFFEL_COMPILER_IENUMPARAMETER_IMPL_PROXY_H__
#define __ECOM_EIFFEL_COMPILER_IENUMPARAMETER_IMPL_PROXY_H__
#ifdef __cplusplus
extern "C" {


namespace ecom_eiffel_compiler
{
class IEnumParameter_impl_proxy;
}

}
#endif

#include "eif_com.h"

#include "eif_eiffel.h"

#include "ecom_eiffel_compiler_IEnumParameter.h"

#include "ecom_eiffel_compiler_IEiffelParameterDescriptor.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
extern "C" {
namespace ecom_eiffel_compiler
{
class IEnumParameter_impl_proxy
{
public:
	IEnumParameter_impl_proxy (IUnknown * a_pointer);
	virtual ~IEnumParameter_impl_proxy ();

	/*-----------------------------------------------------------
	No description available.
	-----------------------------------------------------------*/
	void ccom_next(  /* [out] */ EIF_OBJECT rgelt,  /* [out] */ EIF_OBJECT pcelt_fetched );


	/*-----------------------------------------------------------
	No description available.
	-----------------------------------------------------------*/
	void ccom_skip(  /* [in] */ EIF_INTEGER celt );


	/*-----------------------------------------------------------
	No description available.
	-----------------------------------------------------------*/
	void ccom_reset();


	/*-----------------------------------------------------------
	No description available.
	-----------------------------------------------------------*/
	void ccom_clone1(  /* [out] */ EIF_OBJECT ppenum );


	/*-----------------------------------------------------------
	No description available.
	-----------------------------------------------------------*/
	void ccom_ith_item(  /* [in] */ EIF_INTEGER an_index,  /* [out] */ EIF_OBJECT rgelt );


	/*-----------------------------------------------------------
	No description available.
	-----------------------------------------------------------*/
	EIF_INTEGER ccom_count(  );


	/*-----------------------------------------------------------
	IUnknown interface
	-----------------------------------------------------------*/
	EIF_POINTER ccom_item();



protected:


private:
	/*-----------------------------------------------------------
	Interface pointer
	-----------------------------------------------------------*/
	ecom_eiffel_compiler::IEnumParameter * p_IEnumParameter;


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