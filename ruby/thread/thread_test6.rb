athr = Thread.new { Thread.current["name"] = "Thread A";Thread.stop }
bthr = Thread.new { Thread.current["name"] = "Thread B";Thread.stop }
cthr = Thread.new { Thread.current["name"] = "Thread C";Thread.stop }
Thread.list.each {|x| puts "#{x.inspect}: #{x["name"]}"}
