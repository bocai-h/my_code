#encoding: utf-8
#num 源数据 类型: fixnum
#n  精度

def my_round num,n
 if num.round(n) == num
   num = num.to_f.to_s << "0" * (n-1)
else
   num = num.round(n).to_s
 end
 num
end
