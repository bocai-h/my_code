#encoding: utf-8
# 关于质数的一些应用,有空可以研究一下源码
require 'prime'

Prime.each(100) do |prime|
  puts prime
end