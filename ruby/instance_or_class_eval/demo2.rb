class A
end

A.instance_eval do
  p self
  def method1
  	puts "this is a singleton method of class A"
  end
end

A.method1