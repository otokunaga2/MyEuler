#!/usr/bin/ruby

@list = []
def setup
  for i in 2..20 do 
    @list.push(i)
  end
end

#小さい倍数で割り切れるものを削除する関数
def purge_by_division
  @list.each do |i|
    @list.each do |j|
      if(j>i) then
        if (j%i == 0) then
          p j
          @list.pop(j)
        end
      end
    end
  end  
end

def calc_multiple(number)
  flag = true
  @list.each do |val|
    if(number % val == 0) then
    else  
      flag = false
      return flag
    end
  end
  flag
end

setup()
p @list
purge_by_division()
p @list
@ans
#max_num = 10000000
#i = 1
#while i < max_num
#  res = calc_multiple(i)
#  if(res) then
#    @ans = i
#    p @ans
#    break
#  end
#  i = i + 1
#end
