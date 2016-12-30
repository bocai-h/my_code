class A
  def self.hello
    @a = "hello"
  end

  def self.puts_a
    puts @a.object_id
  end
end