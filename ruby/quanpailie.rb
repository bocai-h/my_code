# 1   2   3

# 123 132  213 231 312 321
$result = []

def main(str)
  str_array = str.split("");
  quanpailie str_array
end

def quanpailie(ar)
  # p ar
  if ar.size == 1
    return [ar[0]]
  else
  	# ar.each do |i|
  	#   temp = [i] + quanpailie(ar-[i])
  	#   if temp.size == 4
  	#   	$result << temp
  	#   end
  	# end
  	temp = []
  	ar.each do |i|
  	  temp << [i] + quanpailie(ar - [i])
  	  if temp.size == 4
  	  	p "#############"
  	  	p temp
  	  end
  	end
  	$result << temp
  	return temp
  end
end

main("1234")
p  $result
puts "result.size = #{$result.size}"

