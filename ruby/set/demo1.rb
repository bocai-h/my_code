require 'set'
require 'pry'

s1 = Set.new [1,2]     #=> #<Set: {1, 2}>
# 数组转集合 会自动去重
s2 = [1,2,2].to_set    #=> #<Set: {1, 2}>

# p s1==s2
s1.add "foo"#=> #<Set: {1, 2, "foo"}>

s1.merge [5,6,7] #=> #<Set: {1, 2, "foo", 5, 6, 7}>

s1.subset? s2 #=> false

s2.subset? s1 #=> true

# 生成并返回两个集合的非公共部分组成的集合
# p s1 ^ s2  #=> #<Set: {"foo", 5, 6, 7}>

# 交集
# p s1 & s2  #=> #<Set: {1, 2}>

#并集
# p s1 | s2 #=> #<Set: {1, 2, "foo", 5, 6, 7}>

#差集(存在s1 不存在s2的元素)

# p s1 - s2 #=> #<Set: {"foo", 5, 6, 7}>

# 商集 根据block中的条件对集合进行分类  这个算法很牛逼啊

numbers = Set[-1,1, 2, 48, 3, 4, 6, 9, 10, 11]
set = numbers.divide do |i,j|
 (i - j).abs == 2
end
p set #=> #<Set: {#<Set: {-1, 1, 3}>, #<Set: {2, 4, 6}>, #<Set: {48}>, #<Set: {9, 11}>, #<Set: {10}>}>