require 'rack'
require 'pry'

class Static
  def self.call(env)
      #  env["PATH_INFO"] 域名之外的其他内容
     resource = env["PATH_INFO"] =~ /\/$/ ? ["index.html"] : [env["PATH_INFO"]]
     # 完整的url路径
     path = File.join("public",*resource)
     # 判定content-type
     type = resource.last.end_with?("html") ? "html":"plain"
     if File.exists?(path)
       ["200",{"Content-Type" => "text/#{type}"},[File.read(path)]]
       else
       ["404",{"Content-Type" => "text/plain"}, ["file not found"]]
     end
  end
end

#一种新的方式启动rack
Rack::Server.new(:app => Static).start