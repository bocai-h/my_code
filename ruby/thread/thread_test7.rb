def hello
  thread = Thread.new{
    5.times {
      sleep(1)
      puts "thread.."
    }
  }

  sleep 2
  puts "hello exit!"
  thread
end

thread = hello()
thread.join 
