require 'pry'

trace = TracePoint.new(:call) do |tp|
  # binding.pry
  p [tp.lineno,tp.defined_class,tp.method_id,tp.event]
end

trace.enable

# 不想继续跟踪使用 trace.disable

# puts不会触发call事件 调用ruby库中的东西都不会触发
# puts "Hello,TrancePoint"

def lala
  puts "Hello,TracePoint"
end

lala

def lala2
  puts "Hello,TracePoint2"
end

lala2