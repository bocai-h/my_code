# 算法解决相邻字符压缩问题
def compress_string str
  count = 1
  len = str.size
  last = str[len-1]
  str_all = ""
  str_cur = ""

  ((len-2).downto(0)).each do |i|
    str_tmp = str[i]
    if(str_tmp == last)
      count += 1
    else
      if(count > 1)
        str_cur = "#{count}" + "#{last}"
      else
        str_cur = "#{last}"
      end
      str_cur += str_all
      str_all = str_cur
      count = 1
      str_cur = ""
      last = str_tmp
    end
  end

  if(count > 1)
    str_cur = "#{count}" + "#{last}"
  else
    str_cur = "#{last}"
  end
  str_cur += str_all
  str_all = str_cur
  return str_all
end

puts compress_string("xxzyqabbcdffe") # 2xzyqa2bcd2fe
