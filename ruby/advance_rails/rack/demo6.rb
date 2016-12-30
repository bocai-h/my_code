require 'rack'

class NSR
  def self.call(env)
  	["200",{"Content-Type" => "text/plain"},["none static resource"]]
  end
end


#  Rack::Static是rack自带的一个middleware 
# 通过使用middleware把自己的rack app包裹起来
Rack::Server.new(
	:app => Rack::Static.new(NSR,:urls => ["/assets"],:root => "public",:index => 'index.html')
).start