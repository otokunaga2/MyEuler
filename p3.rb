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
    @ans_list = []
  end
  def max_factor_prime(i,n)
    if i>n then
      return @ans_list
    end
    if prime?(i) then
      if (n%i) == 0 then
        n = n/i 
        @ans_list.push(i)
        return max_factor_prime(i+1,n)
      end
    end
    max_factor_prime(i+1,n)
  end
end
