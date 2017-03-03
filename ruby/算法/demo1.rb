require 'benchmark/ips'
# 计算数组中连续数的最大值

# O(n^3)
def calc_max1(arg)
  if !arg.is_a?Array 
  	puts "请输入一个数组"
  	return
  end

  temp = 0
  n = arg.size
  (0..(n-1)).each do |i|
  	(i..(n-1)).each do |j|
       sum = (i..j).inject(0){ |sum,p| sum+arg[p] }
       #  sum = 0
       # (i..j).each do |n|
       # 	 sum += arg[n]
       #  end
       temp = sum > temp ? sum:temp
  	end
  end
  temp
end

#O(n^2)
def calc_max2(arg)
   temp = 0
   n = arg.size
   (0..(n-1)).each do |i|
      sum = 0
      (i..(n-1)).each do |j|
      	sum += arg[j]
      	temp = sum > temp ? sum:temp
      end
   end
   temp
end

puts "method1.result = "
puts calc_max1([1,2,3,6,-8,2,4,4,5,-100,1000])

puts "method2.result = "
puts calc_max2([1,2,3,6,-8,2,4,4,5,-100,1000])


Benchmark.ips do |x|
  ary = [1,2,3,6,-8,2,4,4,5,-100,1000]
  x.report("method1") { calc_max1(ary) }
  x.report("method2") { calc_max2(ary) }
end