msg = 'aaa{1}bbb{2}'
result = msg.scan(/\{(\d+)\}/)
result = result.flatten.collect(&:to_i)
content = %w(hello world byebye byebye55)

result.each do |index|
  msg.gsub!("{#{index}}",content[index-1])
end

puts msg
