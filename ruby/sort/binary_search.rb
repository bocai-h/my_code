#encoding: utf-8
require 'pry'

# 二分查找算法实现
#通过递归方式
def binary_search(ary,n,m,value)
  if n <= m
    mid = ( m + n ) / 2
     
     if value == ary[mid]
        return mid
    elsif value < ary[mid]
         m = mid - 1
    else
         n = mid + 1
    end
     binary_search(ary,n,m,value)
  else
    return "this value is not in the array"
  end
end

# 参数: ary有序数组  value该数组中想要的值
def binary_search_v2(ary,value)
  # 数组位置
  index = -1
  n,m = 0,ary.size - 1
  while n <= m do
     mid = ( n + m ) / 2
     if value == ary[mid]
         index = mid
         break
     elsif value < ary[mid]
         m = mid - 1
    else
         n = mid + 1
     end
  end

  if index >= 0
    "找到的值在#{index}位置"
  else
    "该数组中无#{value}存在"
  end
end

ary = [0, 1, 8, 9, 25,43, 56, 78, 89, 1000, 3456]

puts binary_search(ary,0,ary.size - 1,25)