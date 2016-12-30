def lambda_maker
  local_var = " is great!"
  return lambda {|s| puts s + local_var}
end

p = lambda_maker
p.call "Ruby"
