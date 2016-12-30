#instance_eval 对所有的实例都可用
class A
end

a = A.new

a.instance_eval do
  # instance_eval block内部self就是方法的receiver
  p self
  def method1
  	puts "this is a singleton method of instance a"
  end
end


a.method1