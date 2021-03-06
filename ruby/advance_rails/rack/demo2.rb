require 'rack'

class Redirect
  def self.call(env)
     if env['QUERY_STRING'] =~ /method=redirect/
        ["302",{"Location" => "http://ruby-china.org"},[]]
       else
        ["200",{"Content-Type" => "text/plain"},["ok"]]
     end
  end
end

#一种新的方式启动rack
Rack::Server.new(:app => Redirect).start