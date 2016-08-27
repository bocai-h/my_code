class Logger
   def initialize
   	# io赋值给实例变量
   	@log = File.open("log.txt","a")
   end
   
   # 类变量中赋值一个实例 类的实例变量共享类变量
   @@instance = Logger.new

   def self.instance
   	return @@instance
   end

   def log(msg)
   	@log.puts(msg)
   end

   # 私有化new方法
   private_class_method :new

   Logger.instance.log("message 1")
end