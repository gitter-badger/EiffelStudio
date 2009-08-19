note
	description: "[
		Parses arguments to launch xebra server.
	]"
	legal: "See notice at end of class."
	status: "Pre-release"
	date: "$Date$"
	revision: "$Revision$"
class
	XS_ARGUMENT_PARSER

inherit
	ARGUMENT_SINGLE_PARSER
		rename
			make as make_single_parser
		end

create
	make

feature {NONE} -- Initialization

	make
			-- Initialize the argument parser.
		do
			make_single_parser (False, True)
			set_non_switched_argument_validator (create {ARGUMENT_FILE_VALIDATOR})
			set_is_showing_argument_usage_inline (False)
		end

feature -- Access

	config_filename: STRING
			-- The path of the config file
		require
			is_successful: is_successful
		do
			Result := value
		ensure
			not_Result_is_detached_or_empty: Result /= Void and then not Result.is_empty
		end

	debug_level: INTEGER
			-- The debug_level
		require
			is_successful: is_successful
		do
			Result := 0
			if has_option (debug_level_switch) and then attached option_of_name (debug_level_switch) as l_option then
				if l_option.value.is_integer then
					Result := l_option.value.to_integer
				end
			end
		end

	create_webapp: detachable STRING
			-- The create webapp config file
		require
			is_successful: is_successful
		do
			if has_option (create_webapp_switch) and then attached option_of_name (create_webapp_switch) as l_option then
				Result := l_option.value
			end
		end

	unmanaged: BOOLEAN
			-- The unmanaged option
		require
			is_successful: is_successful
		do
			Result := has_option (unmanaged_switch)
		end


feature -- Status report


feature {NONE} -- Access: Usage

	name: STRING = "Xebra Web Application Server"
			-- <Precursor>

	non_switched_argument_name: STRING = "config_filename"
			-- <Precursor>

	non_switched_argument_description: STRING = "The path of the config.ini file to use."
			-- <Precursor>

	non_switched_argument_type: STRING = "file name"
			-- <Precursor>

	version: STRING
			-- <Precursor>
		once
			Result := {XU_CONSTANTS}.Version
		end

	switches: ARRAYED_LIST [ARGUMENT_SWITCH]
			-- <Precursor>
		once
			create Result.make (2)
			Result.extend (create {ARGUMENT_INTEGER_SWITCH}.make
			 (debug_level_switch, "Specifies a debug level.%N%T1: Start and stop of overall application" +
														  "%N%T2: Application configuration" +
														  "%N%T3: Start and stop of main components" +
														  "%N%T4: Information about tasks that are performed" +
														  "%N%T5: Information about subtasks that are performed" +
														  "%N%T6: Very verbose information about subtasks that are performed", True, False, "debug_level", "The debug level (1-6)", False))
			Result.extend (create {ARGUMENT_SWITCH}.make (unmanaged_switch, "If set, the server treats all managed webapps as unmanged webapps.", True, False))
			Result.extend (create {ARGUMENT_FILE_SWITCH}.make (create_webapp_switch, "With this switch the server can be used as a tool to translate, generate and compile the specified webapp", True, False, "Webapp config file", "The webapp config file", False))
		end


feature {NONE} -- Switches

	debug_level_switch: STRING = "d|debug_level"
	unmanaged_switch: STRING = "u|unmanaged"
	create_webapp_switch: STRING = "c|create_webapp"

end

