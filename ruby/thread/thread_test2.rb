begin
 t = Thread.new do
   Thread.pass      #主线程的确在等join
   raise "unhandled exception"
 end
 t.join
rescue
 p $! # => "unhandled exception"
end
