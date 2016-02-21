#!/usr/bin/ruby

module Solver
  def prime? target_number
    if(target_number == 1) then
      return false
    end
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
    @prev_ans = 0
    @prime_list = []
  end
  def calc_ans(i,sum)
    if i > 2000000
      return @prev_ans
    end

    if (prime?(i)) then
      @prev_ans = sum
      sum = sum + i
    end
    return calc_ans(i+1,sum)
  end
end
