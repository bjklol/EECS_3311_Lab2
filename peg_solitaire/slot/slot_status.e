note
	description: "Summary description for {SLOT_STATUS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

deferred class
	SLOT_STATUS

inherit
	ANY
		redefine
			is_equal
		end

feature -- Equality
	is_equal(other: like Current): BOOLEAN
			-- Is the current slot status equal to 'other'?
		do
			Result := Current = other--Current.out ~ other.out   --(done?)
		ensure then
			correct_result: -- Your Task(done?)
--				Result = Current = other
			((Current = other) or ((Current = other) = false))

		end

end
