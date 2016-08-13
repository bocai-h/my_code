class Klass
 def initialize str
   @str = str
 end

 def say_hello
   puts @str
 end
end

#序列化对象 通过序列化的东西可以恢复对象
o = Klass.new("hello\n")
data = Marshal.dump(o)
#puts "data=#{data.to_s}"
obj = Marshal.load(data)
obj.say_hello
