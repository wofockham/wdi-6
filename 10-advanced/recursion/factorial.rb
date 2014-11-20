def factorial_iterative(number)
  result = 1
  while (number > 1)
    result *= number
    number -= 1
  end
  result
end

puts factorial_iterative(10000)

def factorial(number)
  if (number > 1) # Terminating condition.
    puts "Current value of number is #{ number }"
    number * factorial(number - 1) # A single step closer to the terminating condition.
  else
    1 # Base case.
  end
end

puts "By recursion:"
puts factorial(10)