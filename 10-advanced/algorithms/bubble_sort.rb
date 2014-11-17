class Array

  def bubble_sort(target=nil)
    sorted = target || Array.new(self) # target || Array.new(self) # Create a new copy of the array.

    max = sorted.length - 1 # Upper bound: this is reduced with each iteration.

    until max <= 0 # Loop until we've compared everything.
      i = 0
      while i < max
        if sorted[i] > sorted[i + 1] # Out of order?
          sorted[i], sorted[i+1] = sorted[i+1], sorted[i] # Swap
        end
        i += 1 # Next item.
      end
      max -= 1 # Reduce max bound.
    end

    sorted
  end

  def bubble_sort!
    # You are not expected to understand this.
    bubble_sort(self)
  end
end

require 'pry'
binding.pry
