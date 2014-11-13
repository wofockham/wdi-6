class Calculator
  def initialize
    @numbers = []
  end

  def <<(number)
    @numbers.push(number.to_i)
  end

  def add
    @numbers.inject(:+)
  end

  def subtract
    @numbers.inject(:-)
  end

  def multiply
    @numbers.inject(:*)
  end
end
