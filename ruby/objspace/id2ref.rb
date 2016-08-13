require 'objspace'

# 可以通过object_id找到对应的对象
s = "I am a string"

f = ObjectSpace._id2ref(s.object_id)

puts f == s
