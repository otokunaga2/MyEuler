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
    @threads = []
  end
  def calc_ans(i)
    sum = 0
    counter = 0 
    @threads << Thread.new do 
      3.times do |ti|
        if (ti == 0) then
          counter = (2000000/3)*1
          i = 0
          else
          i = counter
          counter = counter + (2000000/3)*ti
        end
        while (i < counter) do
          if (prime?(i)) then
            @prev_ans = sum
            sum = sum + i
          end
          i = i+1
        end
      end
    end
    sum 
  end
end
