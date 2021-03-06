/*-----------------------------------------------------------
"Automatically generated by the EiffelCOM Wizard."
Added Record _TASK_TRIGGER
	cbTriggerSize: USHORT
			-- Structure size.
	Reserved1: USHORT
			-- Reserved. Must be zero.
	wBeginYear: USHORT
			-- Trigger beginning date year.
	wBeginMonth: USHORT
			-- Trigger beginning date month.
	wBeginDay: USHORT
			-- Trigger beginning date day.
	wEndYear: USHORT
			-- Optional trigger ending date year.
	wEndMonth: USHORT
			-- Optional trigger ending date month.
	wEndDay: USHORT
			-- Optional trigger ending date day.
	wStartHour: USHORT
			-- Run bracket start time hour.
	wStartMinute: USHORT
			-- Run bracket start time minute.
	MinutesDuration: ULONG
			-- Duration of run bracket.
	MinutesInterval: ULONG
			-- Run bracket repetition interval.
	rgFlags: ULONG
			-- Trigger flags.
	TriggerType: typedef
			-- Trigger type.
	Type: typedef
			-- Trigger data.
	Reserved2: USHORT
			-- Reserved. Must be zero.
	wRandomMinutesInterval: USHORT
			-- Maximum number of random minutes after start time.
	
-----------------------------------------------------------*/

#ifndef __ECOM_MS_TASKSCHED_LIB__TASK_TRIGGER_IMPL_H__
#define __ECOM_MS_TASKSCHED_LIB__TASK_TRIGGER_IMPL_H__

#include "eif_com.h"

#include "eif_eiffel.h"

#include "eif_setup.h"

#include "eif_macros.h"

#include "ecom_MS_TaskSched_lib__TASK_TRIGGER.h"

#include "ecom_grt_globals_mstask_modified_idl_c.h"



#define ccom_x_task_trigger_cb_trigger_size(_ptr_) (EIF_INTEGER)(USHORT)(((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->cbTriggerSize)

#define ccom_x_task_trigger_set_cb_trigger_size(_ptr_, _field_) ((((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->cbTriggerSize) = (USHORT)_field_)

#define ccom_x_task_trigger_reserved1(_ptr_) (EIF_INTEGER)(USHORT)(((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->Reserved1)

#define ccom_x_task_trigger_set_reserved1(_ptr_, _field_) ((((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->Reserved1) = (USHORT)_field_)

#define ccom_x_task_trigger_w_begin_year(_ptr_) (EIF_INTEGER)(USHORT)(((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->wBeginYear)

#define ccom_x_task_trigger_set_w_begin_year(_ptr_, _field_) ((((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->wBeginYear) = (USHORT)_field_)

#define ccom_x_task_trigger_w_begin_month(_ptr_) (EIF_INTEGER)(USHORT)(((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->wBeginMonth)

#define ccom_x_task_trigger_set_w_begin_month(_ptr_, _field_) ((((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->wBeginMonth) = (USHORT)_field_)

#define ccom_x_task_trigger_w_begin_day(_ptr_) (EIF_INTEGER)(USHORT)(((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->wBeginDay)

#define ccom_x_task_trigger_set_w_begin_day(_ptr_, _field_) ((((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->wBeginDay) = (USHORT)_field_)

#define ccom_x_task_trigger_w_end_year(_ptr_) (EIF_INTEGER)(USHORT)(((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->wEndYear)

#define ccom_x_task_trigger_set_w_end_year(_ptr_, _field_) ((((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->wEndYear) = (USHORT)_field_)

#define ccom_x_task_trigger_w_end_month(_ptr_) (EIF_INTEGER)(USHORT)(((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->wEndMonth)

#define ccom_x_task_trigger_set_w_end_month(_ptr_, _field_) ((((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->wEndMonth) = (USHORT)_field_)

#define ccom_x_task_trigger_w_end_day(_ptr_) (EIF_INTEGER)(USHORT)(((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->wEndDay)

#define ccom_x_task_trigger_set_w_end_day(_ptr_, _field_) ((((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->wEndDay) = (USHORT)_field_)

#define ccom_x_task_trigger_w_start_hour(_ptr_) (EIF_INTEGER)(USHORT)(((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->wStartHour)

#define ccom_x_task_trigger_set_w_start_hour(_ptr_, _field_) ((((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->wStartHour) = (USHORT)_field_)

#define ccom_x_task_trigger_w_start_minute(_ptr_) (EIF_INTEGER)(USHORT)(((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->wStartMinute)

#define ccom_x_task_trigger_set_w_start_minute(_ptr_, _field_) ((((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->wStartMinute) = (USHORT)_field_)

#define ccom_x_task_trigger_minutes_duration(_ptr_) (EIF_INTEGER)(ULONG)(((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->MinutesDuration)

#define ccom_x_task_trigger_set_minutes_duration(_ptr_, _field_) ((((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->MinutesDuration) = (ULONG)_field_)

#define ccom_x_task_trigger_minutes_interval(_ptr_) (EIF_INTEGER)(ULONG)(((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->MinutesInterval)

#define ccom_x_task_trigger_set_minutes_interval(_ptr_, _field_) ((((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->MinutesInterval) = (ULONG)_field_)

#define ccom_x_task_trigger_rg_flags(_ptr_) (EIF_INTEGER)(ULONG)(((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->rgFlags)

#define ccom_x_task_trigger_set_rg_flags(_ptr_, _field_) ((((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->rgFlags) = (ULONG)_field_)

#define ccom_x_task_trigger_trigger_type(_ptr_) (EIF_INTEGER)(((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->TriggerType)

#define ccom_x_task_trigger_set_trigger_type(_ptr_, _field_) ((((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->TriggerType) = (long)_field_)

#define ccom_x_task_trigger_type(_ptr_) (EIF_REFERENCE)(grt_ce_mstask_modified_idl_c.ccom_ce_record_x_trigger_type_union_union45 (((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->Type))

#define ccom_x_task_trigger_set_type(_ptr_, _field_) (memcpy (&(((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->Type), (ecom_MS_TaskSched_lib::_TRIGGER_TYPE_UNION *)_field_, sizeof (ecom_MS_TaskSched_lib::_TRIGGER_TYPE_UNION)))

#define ccom_x_task_trigger_reserved2(_ptr_) (EIF_INTEGER)(USHORT)(((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->Reserved2)

#define ccom_x_task_trigger_set_reserved2(_ptr_, _field_) ((((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->Reserved2) = (USHORT)_field_)

#define ccom_x_task_trigger_w_random_minutes_interval(_ptr_) (EIF_INTEGER)(USHORT)(((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->wRandomMinutesInterval)

#define ccom_x_task_trigger_set_w_random_minutes_interval(_ptr_, _field_) ((((ecom_MS_TaskSched_lib::_TASK_TRIGGER *)_ptr_)->wRandomMinutesInterval) = (USHORT)_field_)

#endif
