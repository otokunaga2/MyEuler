#!/usr/bin/ruby

def calc_prime target_number
	base_number = target_number
	while base_number > 0 
		if target_number % base_number == 0 then
			return false
		end
		base_number = base_number - 1
	end
	return true
end


p calc_prime(5)
