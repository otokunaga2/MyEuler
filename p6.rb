#!/usr/bin/ruby

module Solver
  def prime?(n)
   flag = true
   div_number = n
   div_number = div_number - 1
   if (n == 1)
     return false
   end
   for m in 2..div_number
     if (n%m == 0)
       flag = false
       break
     end       
   end  
   flag
  end
  def count_prime_index(target)
    index = 1 
    number = 1
    while true
      if(prime?(number)) then
        if(target == index) then
          return number
        end
        index = index + 1
      end
      number = number + 1
    end
  end
end


