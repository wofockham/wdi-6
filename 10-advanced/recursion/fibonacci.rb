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

def fib(n)
  if (n <=  2)
    1 # Base case
  else
    fib(n - 1) + fib(n - 2)
  end
end

# require 'ruby-prof'
# RubyProf.start

# 30.times { |i| fib_iterative(i) }
# 30.times { |i| fib(i) }

# result = RubyProf.stop

# # Print a flat profile to text
# printer = RubyProf::FlatPrinter.new(result)
# printer.print(STDOUT)

require 'pry'
binding.pry
