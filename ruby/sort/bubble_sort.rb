#encoding: utf-8
class TestArray < Array
  def bubble_sort
    (self.size-2).downto(1) do |i|
       (0..i).each do |j|
       	self[j],self[j+1] = self[j+1],self[j] if self[j] > self[j+1]
       end
    	end
    	return self
  end

  #选择排序 select_sort 
  def better_bubble_sort
    (self.size-1).downto(1) do |n|
      	# 默认第一个元素最大
      	max = self[0]
  	    index = 0
       1.upto(n).each do |i|
  	    if self[i] > max
  	    	  max = self[i]
  	    	  index = i
  	    end
  	  end
  	 # 当前最大的元素和我想找到的最大的位置交换
  	self[n],self[index] = self[index],self[n]
    end
    return self
  end
end

array = []
1000.times do |i|
  array << i
end

array = TestArray.new(array.shuffle)

t1_s = Time.now
array_sort1 = array.bubble_sort
t1_e = Time.now

puts "普通冒泡排序花费时间#{(t1_e - t1_s).to_s}"

puts "普通冒泡排序结果:"

p array_sort1

puts "==============================================="
t2_s = Time.now
array_sort2 = array.better_bubble_sort
t2_e = Time.now

puts "优化冒泡排序花费时间#{(t2_e - t2_s).to_s}"

puts "优化冒泡排序结果:"

p array_sort2