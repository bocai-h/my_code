def explore_array(method)
  begin
    code = "['a','b','c'].#{method}"
    puts "Evaluating: #{code}"
    eval code
  rescue NoMethodError => e
    puts e.message
    puts e.backtrace.inspect
  end
end

loop { p explore_array(gets()) }
