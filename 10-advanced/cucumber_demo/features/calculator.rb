class Calculator
  def initialize
    @input = []
  end

  def <<(number)
    @input.push(number.to_i)
  end

  def add
    @input.inject(:+)
  end
end
