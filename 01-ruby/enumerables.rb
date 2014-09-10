
nums = [5, 3, 8, 12, -101]

nums.each do |n|
  puts "Current number is #{ n }"
end

nums.select do |n|
  n.even?
end