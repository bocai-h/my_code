def time
 start = Time.now
 result = yield
 puts "Completed in #{Time.now - start} seconds"
 result
end


time do 
 sleep 2
end
