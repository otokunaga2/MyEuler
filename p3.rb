#!/usr/bin/ruby

module Solver
  def prime? target_number
  	base_number = target_number
    base_number = base_number - 1
  	while base_number > 1 
  		if (target_number % base_number) == 0 then
  			return false
  		end
  		base_number = base_number - 1
  	end
  	return true
  end
  def calc_max_factor max_num
    @i = max_num -1
    max_prime = 1.0
    while @i.to_i > 1
      if prime?(@i.to_i) && (max_num % @i == 0) then
        if max_prime < @i then
          max_prime = @i.to_i #データの更新 
          break
        end 
      end
      @i= @i - 1
    end
    max_prime
  end
end
#class Hoge
#  include Problem
#end
#exec = Hoge.new
#p exec.calc_prime(12) 
#p exec.calc_max_factor(600851475143)
