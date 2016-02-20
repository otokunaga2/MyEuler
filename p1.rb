#!/usr/bin/ruby

three_multiple_number = 0 
five_multiple_number = 0 
both_multiple_number = 0

def calc(x,max_number)
	@base_number = x
	@sum = 0
	while x < max_number do
		@sum  = @sum + x
		x = x + @base_number
	end
	@sum 
end

test = calc(3,10)
p test
test2 = calc(5,10)
p test2
three_multiple_number =  calc(3,1000)
five_multiple_number =  calc(5,1000)
both_multiple_number =  calc(15,1000)
result = three_multiple_number + five_multiple_number - both_multiple_number
p result

