class Logger
   # 通过类方法来保证单例的实现 也就是保证只会打开一个io对象
   def self.log msg
     @@loger ||= File.open("log3.txt","a")
     @@loger.puts msg
   end
end

Logger.log "ByeBye"