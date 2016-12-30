#encoding: utf-8

array = []
1000.times do |i|
  array << i
end

array = array.shuffle
# array = [6,3,1,2,45,78,3,38]

def insert_sort array
  1.upto(array.size-1) do |i|
  	n = i - 1
  	while n >= 0 && array[i] < array[n]
  		array[i],array[n] = array[n],array[i]
  		i = n
  		n -= 1
  	end
  end
  return array
end


p insert_sort array