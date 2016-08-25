# 比较两个数组的结构是否相同

# Complete the method (or function in Python) to return true when its argument is an array that has the same nesting structure as the first array.

# For example:

# # should return true
# [ 1, 1, 1 ].same_structure_as( [ 2, 2, 2 ] )
# [ 1, [ 1, 1 ] ].same_structure_as( [ 2, [ 2, 2 ] ] )

# # should return false 
# [ 1, [ 1, 1 ] ].same_structure_as( [ [ 2, 2 ], 2 ] )
# [ 1, [ 1, 1 ] ].same_structure_as( [ [ 2 ], 2 ] )

# # should return true
# [ [ [ ], [ ] ] ].same_structure_as( [ [ [ ], [ ] ] ] ); 

# # should return false
# [ [ [ ], [ ] ] ].same_structure_as( [ [ 1, 1 ] ] )
# For your convenience, there is already a function 'isArray(o)' declared in the JS version that returns true if its argument is an array, false otherwise.
# 题目在这里

# class Array
#   def same_structure_as(a)
#     return false if self.class!=a.class || size!=a.size 
#     a.each_index { |i| return false if self[i].class==Array && !self[i].same_structure_as(a[i]) }
#     true
#   end
# end


# class Array
#   def same_structure_as(b)
#     return false unless b.is_a?(Array) && self.is_a?(Array)
  
#     c = self.each_with_object([]) do |c,d|
#       if c.is_a?(Array)
#         d << c.length
#       else
#         d << 1
#       end
#     end
    
#     e = b.each_with_object([]) do |c,d|
#       if c.is_a?(Array)
#         d << c.length
#       else
#         d << 1
#       end
#     end
    
#     c == e && depth(self) == depth(b)
#   end
  
#   def depth(a)
#     return 0 unless a.is_a?(Array)
#     return 1 + depth(a[0])
#   end
# end

# puts [ [ [ ], 1 ] ].same_structure_as([ [ [ ], [ ] ] ])

require 'pry'
# 需求: 判断数组模式相同
# 原理: 数组转字符串 模式匹配
class Array
  def same_structure_as(other)
  	# 把数组全部转换成字符串
  	self_str = self.to_s
  	other_str = other.to_s
  	# 如果参比的other不是数组或者是数组但是长度不同则返回false
  	return false if other.class != Array || self.size != other.size
  	# 两个括号
     two_brackets = %w([ ])

     # 字符串模式匹配 从0开始到结束
  	0.upto(self_str.size-1) do |i|
  	  # 如果元素是括号
  	  if two_brackets.include?(self_str[i])
  	  	# 参比元素必须是相同的括号 否则return false
  	  	 return false  if self_str[i] != other_str[i]
  	  else
  	  	# 如果元素不是括号 则判断参比元素不能是括号否则return false
          return false if two_brackets.include?(other_str[i])
  	  end
  	end

  	true
  end
end

# puts [ [ [ ], [ ] ] ].same_structure_as([ [ [ ], [ ] ] ])

 puts [ 1, 1, 1 ].same_structure_as( [ 2, 2, 2 ] )
 puts [ 1, [ 1, 1 ] ].same_structure_as( [ 2, [ 2, 2 ] ] )
 puts [ 1, [ 1, 1 ] ].same_structure_as( [ [ 2, 2 ], 2 ] )
 puts [ 1, [ 1, 1 ] ].same_structure_as( [ [ 2 ], 2 ] )
 puts [ [ [ ], [ ] ] ].same_structure_as( [ [ [ ], [ ] ] ] )
 puts [ [ [ ], [ ] ] ].same_structure_as( [ [ 1, 1 ] ] )