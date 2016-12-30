class A
  def self.world
    hello
  end
  private
  def self.hello
    puts "hello"
  end
end


puts A.send :world
