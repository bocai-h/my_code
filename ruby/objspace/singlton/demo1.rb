require 'singleton'

class A
  include Singleton

  private
  
  def initialize
    puts "initialize singleton object"
  end
end


a1 = A.instance
a2 = A.instance

puts a1.object_id == a2.object_id
