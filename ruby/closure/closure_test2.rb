def contrived_example(n)
  yield n
end
contrived_example(3) do |x|
  puts x + 3
end
