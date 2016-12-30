require "pry"
trace = TracePoint.new(:line) do |tp|
  #定义一个全局变量接收tracepoint对象 
  $tp = tp
end

trace.enable

puts "hello"

p $tp.lineno   #=>access from outside(RuntimeError)

# Access from other threads is also forbidden