require 'action_dispatch'

Routes = ActionDispatch::Routing::RouteSet.new.tap do |app|
  app.draw do
    get 'tests',to: 'test#welcome'
  end
end

class TestsController
  def self.action(method)
	controller = self.new
	controller.method(method.to_sym)
  end

  def welcome(env)
  	[200,{"Content-Type" => "text/html"},["<h1>hello</h1>"]]

  end
end

run Routes