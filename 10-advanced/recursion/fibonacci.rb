# Returns the nth Fibonacci number: 1, 1, 2, 3, 5, 8, 13, 21, 34...
def fib_iterative(n)
  a = 1
  b = 1
  count = 2
  while count < n
    b, a = a + b, b # Parallel assignment magic.
    count += 1
  end
  b
end

puts fib_iterative(6)

def fib(n)
  # Your code here.
end

require 'pry'
binding.pry