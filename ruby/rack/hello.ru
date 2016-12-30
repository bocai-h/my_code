require 'rubygems'
require 'rack'
require './hello'

use Rack::CommonLogger
use Rack::ShowExceptions
use Rack::ShowStatus

run HelloApp.new
