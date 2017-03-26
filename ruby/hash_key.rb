h = { a: 1,b:2,c: 3 }

h.instance_eval do
	keys.each do |key|
       define_singleton_method(key) do |x|
       	self[key].to_s + x.to_s
       end
	end
end

puts h.a("h")
puts h.b("h")
puts h.c("h")