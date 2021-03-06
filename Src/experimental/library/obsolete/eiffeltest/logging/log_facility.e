note
	description:
		"Log facilities logging test results"
	legal: "See notice at end of class."

	status: "See notice at end of class."
	date: "$Date$"
	revision: "$Revision$"

class LOG_FACILITY inherit

	TEST_LOGGER

	FORMAT_FACTORY

	DISPOSABLE

create
	
	-- Class intended for use as base class only; no instantiation.

feature -- Access

	supported_formats: ARRAY [STRING]
			-- Output formats supported by log facility
		do
			Result := format_factory.available_products
		ensure
			non_void_result: Result /= Void
			non_empty_result: not Result.is_empty
		end

feature -- Status report

	is_device_set: BOOLEAN
			-- Is output device set?
		do
			Result := output_device /= Void
		end

	is_format_set: BOOLEAN
			-- Is output format set?
		do
			Result := output_format /= Void
		end

	is_format_supported (f: STRING): BOOLEAN
			-- Is format `f' supported?
		require
			format_string: f /= Void and then not f.is_empty
		do
			Result := format_factory.has_product (f)
		end
		
	is_log_writable: BOOLEAN
			-- Is log ready for writing?
		do
			Result := is_device_set and is_format_set
		end

feature -- Status setting

	set_format (f: STRING)
			-- Set format to `f'.
		require
			device_set: is_device_set
			non_empty_format_string: f /= Void and then not f.is_empty
			format_supported: is_format_supported (f)
		do
			format_factory.select_product (f)
			output_format := format_factory.product
			output_format.set_facility (Current)
		ensure
			format_set: is_format_set
			format_device_set: output_format.is_device_set
		end

feature -- Output

	put_evaluation (d: TEST_DRIVER)
			-- Output evaluation from driver `d'
		do
			open
			output_format.put_evaluation (d)
		end

	put_string (s: STRING)
			-- Output `s'.
		do
			open
			output_format.put_string (s)
		end

	put_summary (t: TESTABLE)
			-- Output result summary for `t'.
		do
			open
			output_format.put_summary (t)
		end
	
	put_container_results (t: TEST_CONTAINER)
			-- Output statistic information about tests contained in `t'.
		do
			open
			output_format.put_container_results (t)
		end

	put_failure_information (t: SINGLE_TEST; run: INTEGER)
			-- Output failure information of `run' for `t'.
		do
			open
			output_format.put_failure_information (t, run)
		end

	put_timing_information (t: SINGLE_TEST; run: INTEGER)
			-- Output timing information for `run' of test `t'.
		do
			open
			output_format.put_timing_information (t, run)
		end

	put_new_line
			-- Output new line.
		do
			open
			output_format.put_new_line
		end
		
feature {LOG_OUTPUT_FORMAT} -- Implementation

	output_device: IO_MEDIUM
			-- Device for log output

feature {NONE} -- Implementation

	output_format: LOG_OUTPUT_FORMAT
			-- Format of log output
	
	open
			-- Open log.
		do
		end

	close
			-- Close log.
		do
		end

	dispose
			-- Dispose on cleanup.
		do
			close
		end

invariant

	device_set_definition: is_device_set = (output_device /= Void)
	format_set_definiton: is_format_set = (output_format /= Void)

note
	copyright:	"Copyright (c) 1984-2006, Eiffel Software and others"
	license:	"Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"




end -- class LOG_FACILITY

