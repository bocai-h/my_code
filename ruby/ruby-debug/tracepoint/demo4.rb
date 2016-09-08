# 通过trace就可以直接激活 不需要通过trace.enable激活
trace = TracePoint.trace(:call){|tp| [tp.lineno,tp.event]}

puts trace.enabled?