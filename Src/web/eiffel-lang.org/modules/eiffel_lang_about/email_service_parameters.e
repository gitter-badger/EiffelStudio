note
	description: "Basic Email Service customized for eiffel-lang"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	EMAIL_SERVICE_PARAMETERS

feature	-- Access

	smtp_server: IMMUTABLE_STRING_8
		deferred
		end

	admin_email_address: IMMUTABLE_STRING_8
		deferred
		end

end
