require 'objspace'

#ObjectSpace可以定义在垃圾回收过程前的回调方法

a = "A"
b = "B"

ObjectSpace.define_finalizer(a,proc{|id| puts "Finalizer one on #{id}"})
ObjectSpace.define_finalizer(b,proc{|id| puts "Finalizer one on #{id}"})
