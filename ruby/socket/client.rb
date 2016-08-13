require 'socket'
print TCPSocket.open('localhost',"12345").read
