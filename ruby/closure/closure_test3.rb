def proc_maker
 local_var = "is great!"
 return Proc.new{|s| puts s + local_var }
end

p = proc_maker
p.call "Ruby "
