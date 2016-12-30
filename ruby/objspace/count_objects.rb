require 'objspace'
class A
 def initialize str
   puts str
 end
end

a = A.new "a"
b = A.new "b"
c = A.new "c"
count = ObjectSpace.each_object(A){|x| p x}
puts "Total count: #{count}"
