
class TEST 
create
	default_create, make

feature

	make
		local
			t: TEST
		do
			create{TEST}t
			create        {TEST}           t
			t := create{TEST}
			t := create{TEST}  .  default_create
		end

end
