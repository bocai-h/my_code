require 'set'
require 'pry'

# 列出指定文件模式的文件路径
files = Set.new(Dir.glob("/home/bocai/tu/*.png"))
# 以块的计算值为依据,对集合进行分类。返回的分类结果是形如{值 => 元素的集合}这样的哈希表。分类时, 
# 依次为集合中的每个元素计算块的值,此时,将把该元素传递给块变量f。
#  File.mtime(f)  获取文件的修改时间
hash = files.classify { |f| File.mtime(f).month }
p hash