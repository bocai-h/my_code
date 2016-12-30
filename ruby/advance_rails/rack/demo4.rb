require 'rack'

class Redirect
  def self.call(env)
  	# 利用rack本身的对象
    request = Rack::Request.new(env)
    response = Rack::Response.new("ok")
    response.redirect("http://ruby-china.org") if request.params["method"] == "redirect"
    response
  end
end

#一种新的方式启动rack
Rack::Server.new(:app => Redirect).start