#!/usr/bin/ruby

class Problem 
  def splite_as_ary(n)
    n = n.abs 
    digits = [] 
    begin
      digits.unshift n % 10 #先頭から代入する
      n /= 10
    end while n > 0
    digits
  end
  def palindomic?(n)
    if n.length == 0 || n.length == 1 then
      return true
    else
      if(n.first == n.last) then
        n.shift  #先頭とおしりのデータを取り除く
        n.pop
        palindomic?(n)
      else
        return false
      end
    end
  end
end

temp_inst = Problem.new
result_list = []
for i in (999).downto(100)
  for j in (999).downto(100)
    temp = i*j
    ary = temp_inst.splite_as_ary(temp)
    res = ary.dup #比較のために値で渡す
    if(temp_inst.palindomic?(ary)) then
       result_list.push(res)
    end
  end
end
num_list = []
p result_list
