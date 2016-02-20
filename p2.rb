#!/usr/bin/ruby

def fib (i)
	if i < 0 || i == 0 then
		1
	else
		fib(i-1) + fib(i-2)
	end
end

i = 0

even_sum = 0
while fib(i) < 4000000
  if(fib(i).even?) then
 		even_sum = fib(i) + even_sum 
  end
  i = i+1
end

p even_sum 
