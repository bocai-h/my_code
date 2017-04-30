#encoding: utf-8

def func1
  i = 0
  while i <= 5
  	puts "func1 run at: #{Time.now}"
  	sleep(2)
  	i = i + 1
  end
end

def func2
  j = 0
  while j <= 5
  	puts "func2 run at: #{Time.now}"
  	sleep(2)
  	j = j + 1
  end
end


puts "Started at #{Time.now}"

t1 = Thread.new{func1()}

t2 = Thread.new{func2()}

# 会挂起主线程 直到当前线程执行完毕
t1.join

puts "hhhhhhhh"

t2.join

puts "End at #{Time.now}"

# Thread.current返回当前线程的对象 Thread.main返回主线程对象

# Thread.current[:hello] = "world"
#
# puts Thread.current[:hello]
