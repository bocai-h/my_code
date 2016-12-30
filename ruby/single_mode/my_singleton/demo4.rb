module Logger
	  # 利用module不能实例化的特性 
	  # 通过类方法来保证单例的实现 也就是保证只会打开一个io对象
   def self.log msg
     @@loger ||= File.open("log4.txt","a")
     @@loger.puts msg
   end
end


Logger.log "hello world"