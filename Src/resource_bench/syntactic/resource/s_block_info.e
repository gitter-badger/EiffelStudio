indexing
	description: "xxx"
	product: "Resource Bench"
	date: "$Date$"
	revision: "$Revision$"

-- Block_info -> String_block_info Variable_block_info

class S_BLOCK_INFO

inherit
	RB_AGGREGATE

feature 

	construct_name: STRING is
		once
			Result := "BLOCK_INFO"
		end


	production: LINKED_LIST [CONSTRUCT] is
		local
			string_block_info: STRING_BLOCK_INFO
			variable_block_info: VARIABLE_BLOCK_INFO
		once
			!! Result.make
			Result.forth

			!! string_block_info.make
			put (string_block_info)

			!! variable_block_info.make
			put (variable_block_info)
		end

end -- class S_BLOCK_INFO

--|---------------------------------------------------------------
--|   Copyright (C) Interactive Software Engineering, Inc.      --
--|    270 Storke Road, Suite 7 Goleta, California 93117        --
--|                   (805) 685-1006                            --
--| All rights reserved. Duplication or distribution prohibited --
--|---------------------------------------------------------------
