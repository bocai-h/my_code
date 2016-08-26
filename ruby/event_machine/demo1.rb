require 'rubygems'
require 'eventmachine'

EM.run {
	count = 1
	EM.add_periodic_timer(1){
		EM.stop if count == 5
		puts "#{count}:hello world"
		count += 1
	}
	# puts "i am in run"
}