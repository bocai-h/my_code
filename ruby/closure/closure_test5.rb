def return_proc
 p = Proc.new{ return "Now you see me" }
 p.call
 return "Now you don't"
end


puts return_proc # Now you see me


def return_lambda
  l = lambda{ return "Now you see me" }
  l.call
  return "Now you don't"
end

puts return_lambda # Now you don't
