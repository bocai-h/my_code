#encoding: utf-8

require 'benchmark/ips'
require './bubble_sort'
require 'pry'
#快速排序实现

def quick_sort(ary)
  (x = ary.pop)?quick_sort(ary.select{|i| i <= x }) + [x] + quick_sort(ary.select{|i| i > x }):[]
end


#C语言实现版

def quick_sort_v2(ary,left,right)
  i = left
  j = right
  key = ary[left]

  if left > right
  	return
  end

  while i < j do 
     #从右往左找比key小的数
     while i < j && key <= ary[j] do
       j -= 1
     end

     ary[i] = ary[j]
     # 从左往右找比key大的数
     while i < j && key >= ary[i] do
        i += 1
     end

     ary[j] = ary[i]
  end

  ary[i] = key

  quick_sort_v2(ary,left ,i - 1)
  quick_sort_v2(ary,i + 1, right)

  ary
end


def quick_sort_v3(ary,left,right)
  i = left
  j = right
  key = ary[left]

  if left > right
  	return
  end

  while i < j do 
     #从右往左找比key小的数
     while i < j && key <= ary[j] do
       j -= 1
     end

     # ary[i] = ary[j]
     # 从左往右找比key大的数
     while i < j && key >= ary[i] do
        i += 1
     end

     # ary[j] = ary[i]
     if i < j
       ary[i],ary[j] = ary[j],ary[i]
     end
  end

  ary[i],ary[left] = ary[left],ary[i]
  # ary[i] = key

  quick_sort_v2(ary,left ,i - 1)
  quick_sort_v2(ary,i + 1, right)

  ary
end

# a = [6,2,7,8,9,20,0,12,69,87]

# p quick_sort_v3(a,0,a.size - 1)
# 经过benchmark测试 明显v2的效率要更高一些 可能是Array#select比较耗时间吧 毕竟相当于便利了一次
Benchmark.ips do |x|
  ary = (1..1000).to_a.shuffle
  x.report("quick_sort_v1") { quick_sort(ary) }
  x.report("quick_sort_v2") { quick_sort_v2(ary,0,ary.size - 1) }
  x.report("normal_sort") { ary.sort }
  x.report("bubble_sort") { ary.bubble_sort }
  x.report("select_sort") { ary.bubble_sort }
end