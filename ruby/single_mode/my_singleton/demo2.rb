require 'singleton'
class Logger
  include Singleton

  def initialize
  	@log = File.open("log2.txt","a")
  end

  def log msg
  	@log.puts msg
  end
end

Logger.instance.log("I am a log system")