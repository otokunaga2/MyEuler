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

  def calc_ans(i,sum)
    if(sum > 4000000)
    i = 0
    even_sum = 0
    while fib(i) < 4000000
      if(fib(i).even?) then
     		even_sum = fib(i) + even_sum 
      end
      i = i+1
    end
    
   even_sum 


