#encoding: utf-8
# 关于质数的一些应用,有空可以研究一下源码
require 'prime'

# 输出100以内的质数
def prime_in n
  if n.to_s.to_i != n
  	return "请输入正整数"
  end
   Prime.each(n) do |prime|
    puts prime
  end
end

# prime_in 100
# 输出前5个质数
# puts Prime.first 5

# Prime实例 实例方法判断6是否是质数
# puts Prime.instance.prime?(6)

# 也有一个一样名称的类方法可以判断是否是质数
puts Prime.prime?(2)



