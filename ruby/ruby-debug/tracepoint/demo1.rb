require 'pry'
# 该tracepoint会捕获raise事件
trace = TracePoint.new(:raise) do |tp|
  #tp是一个tracepoint对象
  binding.pry
  # p [tp.lineno,tp.event,tp.raised_exception] 
end

# 允许tacepoint开始工作 激活tracepoint

trace.enable

0 / 0