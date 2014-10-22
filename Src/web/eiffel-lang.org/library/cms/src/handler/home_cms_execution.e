note
	description: "[
			]"

class
	HOME_CMS_EXECUTION

inherit
	CMS_EXECUTION

create
	make

feature -- Execution

	process
			-- Computed response message.
		local
--			l_url: READABLE_STRING_8
			b: STRING_8
		do
			set_title ("Home")
			set_page_title (Void)
			set_value ("Last Release 14.05", "last_release")
			set_value ("2014-08-12", "date")
			set_value ((create {CMS_LOCAL_LINK}.make ("download link", "download")), "link")
			create b.make_empty
			if attached service.storage.recent_nodes (1, 10) as l_nodes then
				across
					l_nodes as c
				loop
					b.append ("<div class=%"node-wrapper%">")
					b.append (c.item.to_html (theme))
					b.append ("</div>%N")
				end
			end

--			b.append ("<ul>%N")
--			l_url := url ("/", Void)
--			b.append ("<li><a href=%"" + l_url + "%">Home</a></li>%N")
--			l_url := url ("/info/", Void)
--			b.append ("<li><a href=%"" + l_url + "%">EWF Info</a></li>%N")

--			b.append ("</ul>%N")

			debug ("cms")
				if attached controller.session as sess then
					b.append ("<div>Session#" + sess.id + "</div>%N")
				end
			end

			set_main_content (b)
		end

note
	copyright: "2011-2014, Jocelyn Fiat, Eiffel Software and others"
	license: "Eiffel Forum License v2 (see http://www.eiffel.com/licensing/forum.txt)"
	source: "[
			Eiffel Software
			5949 Hollister Ave., Goleta, CA 93117 USA
			Telephone 805-685-1006, Fax 805-685-6869
			Website http://www.eiffel.com
			Customer support http://support.eiffel.com
		]"
end
