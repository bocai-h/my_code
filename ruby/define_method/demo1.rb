require 'pry'
class A
  def self.define_world
  	# 这样只是为A类定义了一个实例方法
  	define_method :world do
  	  puts "world"
  	end
  	# body = lambda{ puts "world" }
  	# binding.pry
  	# singleton_class.send(:define_method,:world,&body)
  end
end

A.define_world

A.world  #=> undefined method `world' for A:Class (NoMethodError)