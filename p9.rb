#!/usr/bin/ruby

module Solver
  def calc_total_thousand(a,b,c)
    if (a + b + c) == 1000 then
      return true
    else
      return false
    end
  end
  def pythagorean?(a,b,c)
    if (c**2 == a**2 + b**2) then
      return true
      else
        return false
    end
  end
end


class ConcreteSolver
  include Solver
  def initialize
    @ans=[]
    @a,@b,@c = [],[],[]
    for i in 1..997 do
      @a.push(i)
      @b.push(i)
      @c.push(i)
    end
  end
  def calc_ans
   @a.each do |a|
    @b.each do |b|
      @c.each do |c|
        if pythagorean?(a,b,c) && calc_total_thousand(a,b,c) then
          @ans.push(a,b,c)   
        end
      end
    end  
   end  
   @ans.uniq! #重複する値を削除
  end
end
  
