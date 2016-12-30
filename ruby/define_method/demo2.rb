require 'pry'
class A
  def self.define_world
  	# 这样就是在一个类方法中为A类定义了类方法world
  	body = lambda{ puts "world" }
  	singleton_class.send(:define_method,:world,&body)
  end
end

A.define_world

A.world #=> world