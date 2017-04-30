h = { a: 1,b:2,c: 3 }

h.instance_eval do
	keys.each do |key|
       define_singleton_method(key) do
       	self[key]
       end
	end
end

puts h.a
puts h.b
puts h.c
