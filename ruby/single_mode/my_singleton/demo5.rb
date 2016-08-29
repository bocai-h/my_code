# 将该类的对象放到类实例变量中  私有化new方法
class A
  def self.instance 
  	@instance ||= new
  end

  private_class_method :new
end

a1 = A.instance
a2 = A.instance

p a1.object_id == a2.object_id