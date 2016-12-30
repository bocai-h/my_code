require 'socket'

s = TCPServer.new(12345)
loop {
   Thread.start(s.accept){|cl|
   #cl = s.accept
   cl.print Time.now.strftime("%c\n")
   cl.close 
 }
}
