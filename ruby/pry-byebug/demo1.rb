require 'pry'
require 'pry-byebug'

def hello
 puts "hello world"
end

binding.pry

hello

puts "Goodbye World"
