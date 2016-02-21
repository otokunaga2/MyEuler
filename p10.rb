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
end
class ConcreteSolver
  include Solver
  def initialize
    p :init
    @prime_list = []
  end
  def calc_prime_list
   for i in 2..1000000
    if prime?(i)
      @prime_list.push(i)
    end
   end
  end
  def calc_ans
    i = 0
    sum_prime = 0
    while sum_prime < 2000000
      sum_prime = @prime_list[i].to_i + sum_prime
      i= i + 1
    end
    sum_prime
  end
    
end
#class Hoge
#  include Problem
#end
#exec = Hoge.new
#p exec.calc_prime(12) 
#p exec.calc_max_factor(600851475143)
