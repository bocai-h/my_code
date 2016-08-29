require 'rack'

app = Rack::Builder.new do
	map "/finder" do
		run Rack::Directory.new("~/")
	end

	map "/ruby" do
		run lambda{|env| ["200",{"Content-Type" => "text/plain"},["I love ruby"]]}
	end
end

use Rack::Runtime

run app

#用rackup来运行