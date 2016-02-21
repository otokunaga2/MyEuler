#!/usr/bin/ruby

module Solver
  def calc_multiple_number(x,n,limit)
    if (x==limit) && (n%x) ==0 then #終了条件
      return n
    end
    if (x > limit) then
      return -1
    end
    if n%x == 0 then
      calc_multiple_number(x+1,n,limit)
    else 
      return -1
    end
  end

end
class ConcreteSolver
  include Solver
  def initialize
    @ans = []
  end
  def calc_ans(limit)
    num = 2
    while true
      res = calc_multiple_number(2,num,limit)
      if res != -1
        return res
      end
      num = num +1
    end
  end
end
