class A
end
a = A.new

begin
  a.method1
rescue => e
  puts e
end


A.class_eval do
  p self	
  def method1
  	puts "this is a instance method of class A"
  end
end

a.method1
