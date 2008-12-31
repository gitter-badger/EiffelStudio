note
	description: "All the usefull feature to manage your Database"
	legal: "See notice at end of class."
	status: "See notice at end of class."
	author: "David Solal"
	date: "$Date$"
	revision: "$Revision$"

-- As this class inherit from REPOSITORY which is Database dependant.
-- It will certainly be generated by the wizard.

class 
	DATABASE_MANAGER[G -> DATABASE create default_create end]

inherit
		-- Specify the Handle. (ODBC or Oracle)
	DATABASE_APPL [G]

		-- Inherit Repository, so you can insert a new row when you want.
		-- see insert_row

feature -- Connections

 	log_and_connect (a_name, a_psswd,datasource: STRING)
 			-- Try to connect the database using ODBC
 			-- As a data source 'data_source', a username 'a_name', 
 			-- a password 'a_psswd'
 			-- It result a True Boolean if the connection has been a success.
 		require
 			not_void: a_name /= Void and a_psswd /= Void
 		do
			set_data_source(datasource)
 			login(a_name, a_psswd)
			try_to_connect 
		end
 		 
 	try_to_connect
 			-- Establish Connection
 		do
 			-- Initialization of the Relational Database:
 			-- This will set various informations to perform a correct
 			-- connection to the Relational database
 			set_base
 	
 			-- Create usefull classes
 			-- 'session_control' provides informations control access and 
 			--  the status of the database.
 			create session_control.make
			session_control.reset
 	
			-- Start session
 			session_control.connect
  		ensure
 			not_void: session_control /= Void
 		end

	connected: BOOLEAN 
			-- Is a connection established ?
		do
			Result := (session_control /= Void and then session_control.is_connected)
		end
 
 	disconnect
			-- Disconnect from the Database
		require
			is_connected: session_control.is_connected
 		do
 			session_control.disconnect
 		end
 
 feature -- Loadings
 
 	load_list_from_select(s: STRING;an_obj: ANY): LINKED_LIST[like an_obj]
 			-- Load list of objects whose type are the same as 'an_obj',
 			-- Using the Sql Query 's'
			-- The Result is a list of 'an_obj' 
 		require
 			is_connected: session_control.is_connected
 			not_void: an_obj /= Void
 			meaningfull_select: s /= Void and then s.count > 0
 		local
 			db_actions: DB_ACTION[like an_obj]
 			selection: DB_SELECTION
  		do
			Create selection.make
			selection.object_convert (an_obj)
			selection.set_query (s)
			Create db_actions.make (selection, an_obj)
			selection.set_action (db_actions)
			selection.execute_query
			selection.load_result
 			selection.terminate

			if db_actions.list.count>=1 then
				Result := db_actions.list
			else
				Create Result.make 
			end
		ensure
			Result_exists: Result /= Void
  		end
 
 	execute_query(a_query: STRING)
 			-- Execute the query 'a_query' to the Database.
			-- The query should change persitant object as there are no Results.
 		require
  			is_connected: session_control.is_connected
 			meaningfull_query: a_query /= Void and then a_query.count >0
 		local
			selection_change: DB_CHANGE
 			s: STRING
 		do
 			Create selection_change.make
 			selection_change.set_query (a_query)
 			selection_change.execute_query
 
 			session_control.commit		
  		end
 
 
 	Insert_row(an_obj: ANY;rep: DB_REPOSITORY)
 			-- Insert Into the Database a new row of type 'an_obj'
			-- Using the repository 'rep'
			-- The repositories of every table are once function defined
			-- in class REPOSITORY
		require
 			is_connected: session_control.is_connected
			repository_exists: rep /= Void
			object_exist: an_obj /= Void
 		local
 			store_objects: DB_STORE
 		do
 			Create store_objects.make
 			store_objects.set_repository(rep)
 			store_objects.put(an_obj)	
 			session_control.commit
 		end

feature -- Implementation

	session_control: DB_CONTROL;
		-- Session Control

note
	copyright:	"Copyright (c) 1984-2006, Eiffel Software"
	license:	"GPL version 2 (see http://www.eiffel.com/licensing/gpl.txt)"
	licensing_options:	"http://www.eiffel.com/licensing"
	copying: "[
			This file is part of Eiffel Software's Eiffel Development Environment.
			
			Eiffel Software's Eiffel Development Environment is free
			software; you can redistribute it and/or modify it under
			the terms of the GNU General Public License as published
			by the Free Software Foundation, version 2 of the License
			(available at the URL listed under "license" above).
			
			Eiffel Software's Eiffel Development Environment is
			distributed in the hope that it will be useful,	but
			WITHOUT ANY WARRANTY; without even the implied warranty
			of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
			See the	GNU General Public License for more details.
			
			You should have received a copy of the GNU General Public
			License along with Eiffel Software's Eiffel Development
			Environment; if not, write to the Free Software Foundation,
			Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301  USA
		]"
	source: "[
			 Eiffel Software
			 356 Storke Road, Goleta, CA 93117 USA
			 Telephone 805-685-1006, Fax 805-685-6869
			 Website http://www.eiffel.com
			 Customer support http://support.eiffel.com
		]"
end -- class DATABASE_MANAGER
