def ampersandy(n)
 yield n
end

ampersandy(10) do |x|
puts  x + 10
end

# => 10

#l = lambda{ |x| x + 10}
l = Proc.new{ |x| x + 10 }

puts ampersandy(10,&l)

#=> 20
