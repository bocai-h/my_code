Simplest = proc{|env| ["200",{"Content-Type" => "text/plain"},["ok"]]}

# use Rack::Runtime
run Simplest


# 访问:在命令行中输入 rackup demo1.ru  会为9292端口启动一个服务 在浏览器访问会得到一个ok的结果