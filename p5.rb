#!/usr/bin/ruby

#Problem5を解説します
#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
module Solver
  #方針1:
  #今回の問題では20までで割り切れる数の探索となっていましたが，10の場合もテストとして設定したかったため，
  #limitで上限値を設定できるようにしています．
  def calc_multiple_number(x,n,limit)
    if (x==limit) && (n%x) ==0 then #終了条件
      return n
    end
    #上限値を超えて終了しない場合は，失敗(-1を返却）
    if (x > limit) then
      return -1
    end
    if n%x == 0 then 
      #方針:割り切れない場合には-1を返し，割り切れる場合には次の数で割り切れるか再帰呼び出しを利用して実現
      calc_multiple_number(x+1,n,limit)
    else 
      #割り切れない時は，終了
      return -1
    end
  end

end
class ConcreteSolver
  include Solver
  def initialize
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
