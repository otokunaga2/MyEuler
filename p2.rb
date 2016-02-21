#!/usr/bin/ruby

module Solver
  def fib (i)
    if i < 0 || i == 0 then
      1
    else
      return (fib(i-1) + fib(i-2))
    end
  end
end
class ConcreteSolver
  include Solver
  def calc_ans(i,sum)
    if(sum > 4000000) then
      return sum
    end

    if(fib(i).even?) then
      sum = fib(i) + sum 
    end
    calc_ans(i+1,sum) 
  end
end


