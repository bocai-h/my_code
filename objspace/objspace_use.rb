#encoding: utf-8
require 'objspace'

#ruby版本1.9.3
puts RUBY_VERSION
#少量的字符串占用的内存很小 不超过23  实际情况是c语言实现中小于23的会直接放在内存中 实际上就是c语言的数组 多于23会放到堆中去
#对于ObjectSpace而言其只会显示在堆中的大小 但是它还有一些别的用法很好
a = "a"*23
puts "when less than 23 characters in string,23 a  just use #{ObjectSpace.memsize_of(a)} bytes"

b = "a"*24

puts "24 a The space is #{ObjectSpace.memsize_of(b)} bytes"



