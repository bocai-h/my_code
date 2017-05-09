# 细化String中的reverse方法
module StringExtensions
  refine String do
    def reverse
      'esrever'
    end

    def hello
      puts "hello"
    end
  end
end

# 使用细化

module StringStuff
  using StringExtensions
  puts 'my_string'.reverse   # esrever

  puts "调用细化中的hello方法"
  puts "a".hello   # hello

  puts 'methods中的结果中查找hello方法'
  # 细化在methods中是会被忽略的
  p "my_string".methods.grep(/hello/) # []
end


puts "细化无法作用到的域"

puts "my_string".reverse
